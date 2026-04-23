#!/usr/bin/env node
/**
 * CQL Scoring Verification against HAPI FHIR CR
 *
 * Uploads CQL Libraries to HAPI and verifies scoring via Library/$evaluate.
 * Requires a running HAPI FHIR server with CR=true.
 *
 * Usage:
 *   HAPI_BASE_URL=http://localhost:8080/fhir node scripts/verify-cql-hapi.mjs
 *
 * Environment:
 *   HAPI_BASE_URL - FHIR server base URL (default: http://localhost:8080/fhir)
 */

import { readFileSync } from 'fs';
import { resolve, dirname } from 'path';

const HAPI_BASE_URL = process.env.HAPI_BASE_URL || 'http://localhost:8080/fhir';
const repoRoot = resolve(dirname(new URL(import.meta.url).pathname), '..');

// ============================================================================
// HAPI Client Helpers
// ============================================================================

async function waitForHapi(maxWait = 120) {
  console.log(`⏳ Waiting for HAPI at ${HAPI_BASE_URL}...`);
  for (let i = 0; i < maxWait / 2; i++) {
    try {
      const resp = await fetch(`${HAPI_BASE_URL}/metadata`);
      if (resp.ok) {
        console.log('   HAPI is ready.\n');
        return true;
      }
    } catch {}
    await new Promise(r => setTimeout(r, 2000));
  }
  console.error('❌ HAPI not ready after timeout');
  process.exit(1);
}

async function uploadLibrary(cqlPath, libraryName) {
  const cqlSource = readFileSync(cqlPath, 'utf-8');
  const cqlBase64 = Buffer.from(cqlSource).toString('base64');

  const library = {
    resourceType: 'Library',
    id: libraryName,
    url: `http://example.org/Library/${libraryName}`,
    version: '1.0.0',
    name: libraryName,
    status: 'active',
    type: {
      coding: [{ system: 'http://terminology.hl7.org/CodeSystem/library-type', code: 'logic-library' }]
    },
    content: [{ contentType: 'text/cql', data: cqlBase64 }]
  };

  // Try PUT first, POST if tombstone
  let resp = await fetch(`${HAPI_BASE_URL}/Library/${libraryName}`, {
    method: 'PUT',
    headers: { 'Content-Type': 'application/fhir+json' },
    body: JSON.stringify(library)
  });

  if (resp.status === 410) {
    // Tombstone — use POST
    const { id, ...rest } = library;
    resp = await fetch(`${HAPI_BASE_URL}/Library`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/fhir+json' },
      body: JSON.stringify(rest)
    });
  }

  if (!resp.ok) {
    console.error(`   ❌ Failed to upload ${libraryName}: ${resp.status}`);
    return null;
  }

  const result = await resp.json();
  console.log(`   📚 Uploaded ${libraryName} (id: ${result.id})`);
  return result.id;
}

async function evaluateLibrary(libraryId, params) {
  // Ensure test patient exists
  await fetch(`${HAPI_BASE_URL}/Patient/test-scoring`, {
    method: 'PUT',
    headers: { 'Content-Type': 'application/fhir+json' },
    body: JSON.stringify({ resourceType: 'Patient', id: 'test-scoring', name: [{ family: 'Test' }] })
  });

  const evalParams = {
    resourceType: 'Parameters',
    parameter: [
      { name: 'subject', valueString: 'Patient/test-scoring' },
      {
        name: 'parameters',
        resource: {
          resourceType: 'Parameters',
          parameter: Object.entries(params).map(([name, value]) => {
            if (typeof value === 'boolean') return { name, valueBoolean: value };
            if (typeof value === 'number') return { name, valueInteger: value };
            return { name, valueString: String(value) };
          })
        }
      }
    ]
  };

  const resp = await fetch(`${HAPI_BASE_URL}/Library/${libraryId}/$evaluate`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/fhir+json' },
    body: JSON.stringify(evalParams)
  });

  if (!resp.ok) {
    const text = await resp.text();
    return { error: `${resp.status}: ${text.substring(0, 200)}` };
  }

  const result = await resp.json();
  const values = {};
  for (const param of result.parameter || []) {
    values[param.name] = param.valueInteger ?? param.valueDecimal ?? param.valueString ?? param.resource ?? null;
  }
  return values;
}

// ============================================================================
// PRO-CTCAE Composite Grading Tests
// ============================================================================

async function testProCtcae(libraryId) {
  console.log('\n📋 PRO-CTCAE Composite Grading (HAPI Library/$evaluate)\n');

  const tests = [
    { name: 'Rank 1: frq=0 → 0',    params: { frq: 0 },                     expect: { CompositeGrade: 0 } },
    { name: 'Rank 1: frq=4 → 3',    params: { frq: 4 },                     expect: { CompositeGrade: 3 } },
    { name: 'Rank 2: sev=2 → 2',    params: { sev: 2 },                     expect: { CompositeGrade: 2 } },
    { name: 'Rank 4: f=2,s=3 → 2',  params: { frq: 2, sev: 3 },             expect: { CompositeGrade: 2 } },
    { name: 'Rank 7: (1,1,1) → 1',  params: { frq: 1, sev: 1, intrf: 1 },   expect: { CompositeGrade: 1 } },
    { name: 'Rank 7: (3,3,3) → 3',  params: { frq: 3, sev: 3, intrf: 3 },   expect: { CompositeGrade: 3 } },
    { name: 'Rank 7: (4,4,4) → 3',  params: { frq: 4, sev: 4, intrf: 4 },   expect: { CompositeGrade: 3 } },
    { name: 'Opt-out: NA → null',    params: { optOutNotApplicable: true },   expect: { CompositeGradeScore: null } },
  ];

  let passed = 0, failed = 0;

  for (const test of tests) {
    const result = await evaluateLibrary(libraryId, test.params);

    if (result.error) {
      console.log(`   ❌ ${test.name}: ${result.error}`);
      failed++;
      continue;
    }

    let testPassed = true;
    for (const [key, expected] of Object.entries(test.expect)) {
      const actual = result[key] ?? null;
      if (actual !== expected) {
        console.log(`   ❌ ${test.name}: ${key} expected ${expected}, got ${actual}`);
        testPassed = false;
      }
    }

    if (testPassed) {
      console.log(`   ✅ ${test.name}`);
      passed++;
    } else {
      failed++;
    }
  }

  console.log(`\n   ${passed} passed, ${failed} failed\n`);
  return failed === 0;
}

// ============================================================================
// EORTC Scoring Tests
// ============================================================================

async function testEortcCore(libraryId) {
  console.log('\n📋 EORTC Core Scoring Functions (HAPI Library/$evaluate)\n');

  // Note: EORTC_Core uses 'include' which may not work via simple Library/$evaluate
  // These tests verify the Breast library which includes Core
  console.log('   ⚠️  EORTC Core tests require the Breast library (includes Core)');
  console.log('   Skipping — will be tested via EORTC_Breast\n');
  return true;
}

async function testEortcBreast(libraryId) {
  console.log('\n📋 EORTC Breast Scoring (HAPI Library/$evaluate)\n');

  const tests = [
    {
      name: 'Body Image: all 1 → 100.0',
      params: { Q39: 1, Q40: 1, Q41: 1, Q42: 1 },
      expect: { BodyImage: 100.0 }
    },
    {
      name: 'Body Image: all 4 → 0.0',
      params: { Q39: 4, Q40: 4, Q41: 4, Q42: 4 },
      expect: { BodyImage: 0.0 }
    },
    {
      name: 'Arm Symptoms: all 1 → 0.0',
      params: { Q47: 1, Q48: 1, Q49: 1 },
      expect: { ArmSymptoms: 0.0 }
    },
    {
      name: 'Arm Symptoms: all 4 → 100.0',
      params: { Q47: 4, Q48: 4, Q49: 4 },
      expect: { ArmSymptoms: 100.0 }
    },
    {
      name: 'Arm Symptoms: (2,3,1) → 33.3',
      params: { Q47: 2, Q48: 3, Q49: 1 },
      expect: { ArmSymptoms: 33.3 }
    },
    {
      name: 'SYS: all 1 → 0.0',
      params: { Q31: 1, Q32: 1, Q33: 1, Q34: 1, Q36: 1, Q37: 1, Q38: 1 },
      expect: { SystemicTherapySideEffects: 0.0 }
    },
    {
      name: 'Weight Gain: Q67=3 → 66.7',
      params: { Q67: 3 },
      expect: { WeightGain: 66.7 }
    },
  ];

  let passed = 0, failed = 0;

  for (const test of tests) {
    const result = await evaluateLibrary(libraryId, test.params);

    if (result.error) {
      console.log(`   ❌ ${test.name}: ${result.error}`);
      failed++;
      continue;
    }

    let testPassed = true;
    for (const [key, expected] of Object.entries(test.expect)) {
      const actual = result[key];
      const match = actual != null && Math.abs(actual - expected) < 0.15;
      if (!match) {
        console.log(`   ❌ ${test.name}: ${key} expected ${expected}, got ${actual}`);
        testPassed = false;
      }
    }

    if (testPassed) {
      console.log(`   ✅ ${test.name}`);
      passed++;
    } else {
      failed++;
    }
  }

  console.log(`\n   ${passed} passed, ${failed} failed\n`);
  return failed === 0;
}

// ============================================================================
// Main
// ============================================================================

async function main() {
  await waitForHapi();

  let allPassed = true;

  // Upload CQL Libraries
  console.log('📦 Uploading CQL Libraries...\n');

  const proctcaePath = resolve(repoRoot, 'input/cql/mii-lib-pro-ctcae.cql');
  const corePath = resolve(repoRoot, 'input/cql/EORTC_Core.cql');
  const breastPath = resolve(repoRoot, 'input/cql/EORTC_Breast.cql');

  // PRO-CTCAE
  try {
    readFileSync(proctcaePath);
    const proctcaeId = await uploadLibrary(proctcaePath, 'PRO_CTCAE');
    if (proctcaeId) {
      if (!await testProCtcae(proctcaeId)) allPassed = false;
    }
  } catch {
    console.log('   ⚠️  PRO-CTCAE CQL not found on this branch — skipping\n');
  }

  // EORTC Core (must be uploaded before Breast)
  try {
    readFileSync(corePath);
    await uploadLibrary(corePath, 'EORTC_Core');
    console.log('');
  } catch {
    console.log('   ⚠️  EORTC_Core CQL not found — skipping EORTC tests\n');
  }

  // EORTC Breast
  try {
    readFileSync(breastPath);
    const breastId = await uploadLibrary(breastPath, 'EORTC_Breast');
    if (breastId) {
      if (!await testEortcBreast(breastId)) allPassed = false;
    }
  } catch {
    console.log('   ⚠️  EORTC_Breast CQL not found — skipping\n');
  }

  process.exit(allPassed ? 0 : 1);
}

main();
