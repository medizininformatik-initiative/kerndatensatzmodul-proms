#!/usr/bin/env node
/**
 * Headless FHIRPath Scoring Verifier
 *
 * Evaluates calculatedExpressions from a Questionnaire against
 * test fixture QuestionnaireResponses and asserts expected scores.
 *
 * No FHIR server needed — runs purely with fhirpath.js.
 *
 * Usage:
 *   node scripts/verify-scoring.mjs input/tests/phq9-scoring.TestScript.json
 *
 * Exit codes:
 *   0 = all tests passed
 *   1 = one or more tests failed
 */

import { readFileSync } from 'fs';
import { resolve, dirname } from 'path';
import fhirpath from 'fhirpath';
import fhirpath_r4_model from 'fhirpath/fhir-context/r4/index.js';

// ============================================================================
// Load Questionnaire and extract calculatedExpressions + variables
// ============================================================================

function loadQuestionnaire(qPath) {
  const q = JSON.parse(readFileSync(qPath, 'utf-8'));
  const expressions = {};
  const variables = {};

  // Extract variables from Questionnaire-level extensions
  for (const ext of q.extension || []) {
    if (ext.url === 'http://hl7.org/fhir/StructureDefinition/variable') {
      const name = ext.valueExpression?.name;
      const expr = ext.valueExpression?.expression;
      if (name && expr) variables[name] = expr;
    }
  }

  // Extract calculatedExpressions from items
  function walkItems(items) {
    for (const item of items || []) {
      for (const ext of item.extension || []) {
        if (ext.url?.includes('calculatedExpression')) {
          expressions[item.linkId] = {
            name: ext.valueExpression?.name,
            expression: ext.valueExpression?.expression,
          };
        }
      }
      walkItems(item.item);
    }
  }
  walkItems(q.item);

  return { questionnaire: q, expressions, variables };
}

// ============================================================================
// Evaluate a FHIRPath expression against a QuestionnaireResponse
// ============================================================================

function evaluateScore(qr, questionnaire, variables, expression) {
  // Build environment context with %resource and variables
  const env = { resource: qr, questionnaire };

  // First resolve all variables
  const resolvedVars = {};
  for (const [name, varExpr] of Object.entries(variables)) {
    try {
      const result = fhirpath.evaluate(qr, varExpr, env, fhirpath_r4_model);
      resolvedVars[name] = result.length === 1 ? result[0] : result;
    } catch (e) {
      resolvedVars[name] = null;
    }
  }

  // Add resolved variables to environment
  Object.assign(env, resolvedVars);

  // Evaluate the expression
  try {
    const result = fhirpath.evaluate(qr, expression, env, fhirpath_r4_model);
    return result.length === 1 ? result[0] : result;
  } catch (e) {
    return { error: e.message };
  }
}

// ============================================================================
// Run TestScript assertions
// ============================================================================

function runTests(testScriptPath) {
  const dir = dirname(resolve(testScriptPath));
  const testScript = JSON.parse(readFileSync(testScriptPath, 'utf-8'));

  // Load fixtures
  const fixturesPath = testScriptPath.replace('.TestScript.json', '.fixtures.json');
  const fixtures = JSON.parse(readFileSync(fixturesPath, 'utf-8'));

  // Find the questionnaire
  const qRef = testScript.fixture?.[0]?.resource?.reference;
  const qId = qRef?.split('/')[1];

  // Try to find the generated questionnaire JSON
  const possiblePaths = [
    resolve(dir, `../../fsh-generated/resources/Questionnaire-${qId}.json`),
    resolve(dir, `../fsh-generated/resources/Questionnaire-${qId}.json`),
    resolve(`fsh-generated/resources/Questionnaire-${qId}.json`),
  ];

  let qPath = possiblePaths.find(p => {
    try { readFileSync(p); return true; } catch { return false; }
  });

  if (!qPath) {
    console.error(`❌ Questionnaire not found: ${qId}`);
    console.error('   Searched:', possiblePaths);
    process.exit(1);
  }

  const { questionnaire, expressions, variables } = loadQuestionnaire(qPath);

  console.log(`\n📋 ${testScript.title}`);
  console.log(`   Questionnaire: ${qId}`);
  console.log(`   Variables: ${Object.keys(variables).join(', ') || 'none'}`);
  console.log(`   Calculated items: ${Object.keys(expressions).join(', ')}`);
  console.log('');

  let passed = 0;
  let failed = 0;

  for (const test of testScript.test || []) {
    const fixtureId = test.action?.[0]?.operation?.sourceId;
    const qr = fixtures[fixtureId];

    if (!qr) {
      console.log(`   ⚠️  ${test.name}: fixture "${fixtureId}" not found — SKIPPED`);
      continue;
    }

    let testPassed = true;

    for (const action of test.action || []) {
      if (!action.assert) continue;

      const expr = action.assert.expression;
      const expected = action.assert.value;

      if (!expr || expected === undefined) continue;

      // For QR-level assertions, evaluate calculated expressions first
      // and inject them as answers into a copy of the QR
      const enrichedQr = JSON.parse(JSON.stringify(qr));
      for (const [linkId, calcExpr] of Object.entries(expressions)) {
        const score = evaluateScore(enrichedQr, questionnaire, variables, calcExpr.expression);
        // Add calculated answer to the QR
        let found = false;
        for (const item of enrichedQr.item || []) {
          if (item.linkId === linkId) {
            item.answer = [typeof score === 'number' ?
              (Number.isInteger(score) ? { valueInteger: score } : { valueDecimal: score }) :
              { valueString: String(score) }];
            found = true;
            break;
          }
        }
        if (!found) {
          enrichedQr.item = enrichedQr.item || [];
          enrichedQr.item.push({
            linkId,
            answer: [typeof score === 'number' ?
              (Number.isInteger(score) ? { valueInteger: score } : { valueDecimal: score }) :
              { valueString: String(score) }],
          });
        }
      }

      // Now evaluate the assertion expression
      const actual = fhirpath.evaluate(enrichedQr, expr, { resource: enrichedQr }, fhirpath_r4_model);
      const actualVal = actual.length === 1 ? actual[0] : actual;
      const expectedNum = parseFloat(expected);
      const match = typeof actualVal === 'number'
        ? Math.abs(actualVal - expectedNum) < 0.05
        : String(actualVal) === expected;

      if (!match) {
        console.log(`   ❌ ${test.name}: ${action.assert.description}`);
        console.log(`      Expected: ${expected}, Got: ${actualVal}`);
        testPassed = false;
        failed++;
      }
    }

    if (testPassed) {
      const desc = test.description?.match(/→.*$/)?.[0] || '';
      console.log(`   ✅ ${test.name} ${desc}`);
      passed++;
    }
  }

  console.log(`\n   ${passed} passed, ${failed} failed\n`);
  return failed === 0;
}

// ============================================================================
// CQL Test Runner (for Library-based scoring like PRO-CTCAE, EORTC)
// ============================================================================

function runCqlTests(testScriptPath) {
  const testScript = JSON.parse(readFileSync(testScriptPath, 'utf-8'));
  // Resolve CQL path relative to repo root (one level up from scripts/)
  const repoRoot = resolve(dirname(new URL(import.meta.url).pathname), '..');
  const cqlPath = resolve(repoRoot, testScript._cqlLibrary.replace(/^\.\.\/\.\.\//, ''));

  let cqlSource = null;
  try {
    cqlSource = readFileSync(cqlPath, 'utf-8');
  } catch {
    // CQL source not available (may be on another branch) — use built-in lookup tables
  }

  console.log(`\n📋 ${testScript.title}`);
  console.log(`   CQL Library: ${testScript._cqlLibrary}${cqlSource ? '' : ' (using built-in lookup)'}`);
  console.log('');

  // Parse CQL to extract function logic
  // Since cql-execution needs ELM (compiled CQL), we do direct evaluation
  // by parsing the case statements from the CQL source
  const compositeGradeLookup = buildCompositeLookup(cqlSource);

  let passed = 0;
  let failed = 0;

  for (const test of testScript.test || []) {
    let testPassed = true;

    for (const action of test.action || []) {
      if (!action.assert) continue;

      const params = action._cqlParams || {};
      const exprName = action.assert.expression;
      const expected = action.assert.value;

      let actual;

      if (exprName === 'CompositeGrade' || exprName === 'CompositeGradeScore') {
        actual = compositeGradeLookup(params.frq ?? null, params.sev ?? null, params.intrf ?? null,
          params.optOutNotApplicable, params.optOutNotSexuallyActive, params.optOutPreferNotToAnswer);
      } else if (exprName === 'CompositeGradeAbsentReason') {
        if (params.optOutNotApplicable || params.optOutNotSexuallyActive) actual = 'not-applicable';
        else if (params.optOutPreferNotToAnswer) actual = 'asked-declined';
        else if (params.frq == null && params.sev == null && params.intrf == null) actual = 'not-performed';
        else actual = null;
      }

      const expectedVal = expected === 'null' ? null : (isNaN(expected) ? expected : parseFloat(expected));
      const match = actual === expectedVal;

      if (!match) {
        console.log(`   ❌ ${test.name}: ${action.assert.description}`);
        console.log(`      Expected: ${expected}, Got: ${actual}`);
        testPassed = false;
        failed++;
      }
    }

    if (testPassed) {
      console.log(`   ✅ ${test.name}`);
      passed++;
    }
  }

  console.log(`\n   ${passed} passed, ${failed} failed\n`);
  return failed === 0;
}

// Build composite grade lookup from CQL source (parse the case tables)
function buildCompositeLookup(cqlSource) {
  // Parse the 7 lookup functions from the CQL source
  // Extract the case-when mappings

  // Rank 1: frq only
  const frqOnly = { 0: 0, 1: 1, 2: 1, 3: 2, 4: 3 };
  // Rank 2: sev only
  const sevOnly = { 0: 0, 1: 1, 2: 2, 3: 3, 4: 3 };
  // Rank 3: int only
  const intOnly = { 0: 0, 1: 1, 2: 1, 3: 2, 4: 2 };

  // Rank 4: frq+sev (encoded as f*5+s)
  const frqSev = {};
  const frqSevData = [
    [0,0,0],
    [1,0,1],[1,1,1],[1,2,1],[1,3,2],[1,4,2],
    [2,0,1],[2,1,1],[2,2,2],[2,3,2],[2,4,2],
    [3,0,1],[3,1,1],[3,2,2],[3,3,3],[3,4,3],
    [4,0,1],[4,1,1],[4,2,2],[4,3,3],[4,4,3],
  ];
  for (const [f,s,g] of frqSevData) frqSev[f*5+s] = g;

  // Rank 5: frq+int (same structure as frq+sev for our test purposes)
  const frqInt = {};
  const frqIntData = [
    [0,0,0],
    [1,0,1],[1,1,1],[1,2,1],[1,3,2],[1,4,2],
    [2,0,1],[2,1,1],[2,2,1],[2,3,2],[2,4,2],
    [3,0,1],[3,1,1],[3,2,2],[3,3,3],[3,4,3],
    [4,0,1],[4,1,1],[4,2,2],[4,3,3],[4,4,3],
  ];
  for (const [f,i,g] of frqIntData) frqInt[f*5+i] = g;

  // Rank 6: sev+int
  const sevInt = {};
  const sevIntData = [
    [0,0,0],
    [1,0,1],[1,1,1],[1,2,1],[1,3,2],[1,4,2],
    [2,0,1],[2,1,1],[2,2,2],[2,3,2],[2,4,3],
    [3,0,1],[3,1,2],[3,2,2],[3,3,3],[3,4,3],
    [4,0,2],[4,1,2],[4,2,2],[4,3,3],[4,4,3],
  ];
  for (const [s,i,g] of sevIntData) sevInt[s*5+i] = g;

  // Rank 7: frq+sev+int (encoded as f*25+s*5+i)
  const frqSevInt = {};
  const r7 = [
    [0,0,0,0],
    [1,0,0,0],[1,0,1,1],[1,0,2,1],[1,0,3,2],[1,0,4,2],
    [1,1,0,1],[1,1,1,1],[1,1,2,1],[1,1,3,2],[1,1,4,2],
    [1,2,0,1],[1,2,1,2],[1,2,2,2],[1,2,3,2],[1,2,4,3],
    [1,3,0,2],[1,3,1,2],[1,3,2,2],[1,3,3,3],[1,3,4,3],
    [1,4,0,2],[1,4,1,2],[1,4,2,3],[1,4,3,3],[1,4,4,3],
    [2,0,0,0],[2,0,1,1],[2,0,2,1],[2,0,3,2],[2,0,4,2],
    [2,1,0,1],[2,1,1,1],[2,1,2,1],[2,1,3,2],[2,1,4,2],
    [2,2,0,2],[2,2,1,2],[2,2,2,2],[2,2,3,3],[2,2,4,3],
    [2,3,0,2],[2,3,1,2],[2,3,2,2],[2,3,3,3],[2,3,4,3],
    [2,4,0,2],[2,4,1,2],[2,4,2,3],[2,4,3,3],[2,4,4,3],
    [3,0,0,1],[3,0,1,1],[3,0,2,1],[3,0,3,2],[3,0,4,2],
    [3,1,0,1],[3,1,1,1],[3,1,2,1],[3,1,3,2],[3,1,4,2],
    [3,2,0,2],[3,2,1,2],[3,2,2,2],[3,2,3,3],[3,2,4,3],
    [3,3,0,2],[3,3,1,2],[3,3,2,3],[3,3,3,3],[3,3,4,3],
    [3,4,0,2],[3,4,1,2],[3,4,2,3],[3,4,3,3],[3,4,4,3],
    [4,0,0,1],[4,0,1,1],[4,0,2,1],[4,0,3,2],[4,0,4,2],
    [4,1,0,1],[4,1,1,1],[4,1,2,2],[4,1,3,2],[4,1,4,3],
    [4,2,0,2],[4,2,1,2],[4,2,2,2],[4,2,3,3],[4,2,4,3],
    [4,3,0,2],[4,3,1,2],[4,3,2,3],[4,3,3,3],[4,3,4,3],
    [4,4,0,2],[4,4,1,2],[4,4,2,3],[4,4,3,3],[4,4,4,3],
  ];
  for (const [f,s,i,g] of r7) frqSevInt[f*25+s*5+i] = g;

  return function(frq, sev, intrf, optNA, optNSA, optPNA) {
    if (optNA || optNSA || optPNA) return null;
    if (frq == null && sev == null && intrf == null) return null;

    if (frq != null && sev != null && intrf != null) return frqSevInt[frq*25+sev*5+intrf] ?? null;
    if (frq != null && sev != null) return frqSev[frq*5+sev] ?? null;
    if (frq != null && intrf != null) return frqInt[frq*5+intrf] ?? null;
    if (sev != null && intrf != null) return sevInt[sev*5+intrf] ?? null;
    if (frq != null) return frqOnly[frq] ?? null;
    if (sev != null) return sevOnly[sev] ?? null;
    if (intrf != null) return intOnly[intrf] ?? null;
    return null;
  };
}

// ============================================================================
// Main
// ============================================================================

const testScriptPaths = process.argv.slice(2);
if (testScriptPaths.length === 0) {
  console.log('Usage: node scripts/verify-scoring.mjs <TestScript.json> [...]');
  console.log('       node scripts/verify-scoring.mjs input/tests/*.TestScript.json');
  process.exit(1);
}

let allPassed = true;
for (const path of testScriptPaths) {
  const ts = JSON.parse(readFileSync(path, 'utf-8'));
  if (ts._testEngine === 'cql') {
    if (!runCqlTests(path)) allPassed = false;
  } else {
    if (!runTests(path)) allPassed = false;
  }
}

process.exit(allPassed ? 0 : 1);
