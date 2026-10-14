// Runtime-Tests fuer das PROMIS-29-Scoring (HDB-1007/-1009).
//
// Fuehrt die calculatedExpressions der beiden Questionnaire-Varianten mit der
// ECHTEN fhirpath.js-Engine aus — derselben, die LHC-Forms als Form Filler
// einbettet. Getestet wird also das, was beim Patienten tatsaechlich rechnet,
// nicht eine Nachbildung.
//
// Szenarien: scripts/data/scoring-cases/promis29-cases.json — Antworten als
// code+label-Paar. Das Label ist eine CHECKSUMME: Der Loader validiert jedes
// Paar gegen die Fixture (scripts/data/promis29-answer-weights.csv) und bricht
// bei Mismatch ab, bevor ein Test laeuft. So kann kein Testfall versehentlich
// einen falschen (aber syntaktisch validen) LA-Code kodieren.
//
// Lauf: node --test scripts/promis29-scoring.test.mjs   (nach npm ci im
// scripts/-Verzeichnis; die CI erledigt das im convention-check-Workflow.)
import { test } from 'node:test';
import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';
import { createRequire } from 'node:module';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const HERE = dirname(fileURLToPath(import.meta.url));
const require = createRequire(import.meta.url);
const fhirpath = require(join(HERE, 'node_modules', 'fhirpath'));
const r4model = require(join(HERE, 'node_modules', 'fhirpath/fhir-context/r4'));

const casesDoc = JSON.parse(
  readFileSync(join(HERE, 'data/scoring-cases/promis29-cases.json'), 'utf8'),
);

// ── Fixture laden und Label-Checksummen pruefen (fail fast) ────────────────
const fixture = new Map(); // "linkId|code" -> {display, weight}
for (const line of readFileSync(join(HERE, 'data/promis29-answer-weights.csv'), 'utf8')
  .trim().split('\n').slice(1)) {
  const [linkId, code, display, weight] = line.split(',');
  fixture.set(`${linkId}|${code}`, { display, weight: Number(weight) });
}
for (const c of casesDoc.cases) {
  for (const [linkId, a] of Object.entries(c.answers)) {
    const fx = fixture.get(`${linkId}|${a.code}`);
    if (!fx) {
      throw new Error(`Case ${c.id}: ${a.code} ist keine Antwortoption von ${linkId}`);
    }
    if (fx.display.toLowerCase() !== a.label.toLowerCase()) {
      throw new Error(
        `Case ${c.id}: Label-Checksumme verletzt — ${a.code} ist "${fx.display}", nicht "${a.label}"`,
      );
    }
  }
}

// ── Questionnaire-Hilfen ───────────────────────────────────────────────────
const VARIABLE_URL = 'http://hl7.org/fhir/StructureDefinition/variable';
const CALCULATED_URL =
  'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression';

function variablesOf(questionnaire) {
  return (questionnaire.extension ?? [])
    .filter((e) => e.url === VARIABLE_URL)
    .map((e) => e.valueExpression);
}

function* walkItems(items, parent) {
  for (const it of items ?? []) {
    yield { item: it, parent };
    yield* walkItems(it.item, it);
  }
}

function calculatedExpressionOf(item) {
  return (item.extension ?? []).find((e) => e.url === CALCULATED_URL)?.valueExpression
    ?.expression;
}

function buildResponse(questionnaire, answers) {
  // Antworten in die Fragebogen-Struktur spiegeln (Gruppe -> Items), denn die
  // variable-Ausdruecke navigieren %resource.item.item.
  const groups = new Map();
  for (const { item, parent } of walkItems(questionnaire.item)) {
    const a = answers[item.linkId];
    if (!a) continue;
    const key = parent?.linkId ?? '(root)';
    if (!groups.has(key)) groups.set(key, { linkId: key, item: [] });
    groups.get(key).item.push({
      linkId: item.linkId,
      answer: [{
        valueCoding: {
          system: 'http://loinc.org',
          code: a.code,
          display: fixture.get(`${item.linkId}|${a.code}`).display,
        },
      }],
    });
  }
  return {
    resourceType: 'QuestionnaireResponse',
    status: 'completed',
    questionnaire: questionnaire.url,
    item: [...groups.values()],
  };
}

function evaluateScores(questionnaire, qr) {
  // 1. Root-Variablen in Definitionsreihenfolge auswerten (%resource = QR),
  //    2. calculatedExpressions der Score-Items mit diesen Variablen.
  // %questionnaire braucht fhirpath.js, um weight() gegen die
  // answerOption-itemWeights des Fragebogens aufzuloesen (SDC-Semantik).
  const env = { questionnaire };
  for (const v of variablesOf(questionnaire)) {
    const r = fhirpath.evaluate(qr, v.expression, { resource: qr, ...env }, r4model);
    env[v.name] = r.length ? r[0] : null;
  }
  const out = {};
  for (const { item } of walkItems(questionnaire.item)) {
    const expr = calculatedExpressionOf(item);
    if (!expr) continue;
    const r = fhirpath.evaluate(qr, expr, { resource: qr, ...env }, r4model);
    out[item.linkId] = r.length ? r[0] : null;
  }
  return out;
}

// ── Tests: jede Sprachvariante x jeden Case ────────────────────────────────
for (const qPath of casesDoc.questionnaires) {
  const questionnaire = JSON.parse(readFileSync(join(HERE, '..', qPath), 'utf8'));
  for (const c of casesDoc.cases) {
    test(`${questionnaire.id} / ${c.id}`, () => {
      const qr = buildResponse(questionnaire, c.answers);
      const scores = evaluateScores(questionnaire, qr);
      for (const [linkId, expected] of Object.entries(c.expect)) {
        const got = scores[linkId];
        if (expected === null) {
          assert.equal(got, null, `${linkId}: erwartet leer (Guard), bekam ${got}`);
        } else {
          assert.equal(
            got, expected,
            `${linkId}: erwartet ${expected}, bekam ${got} (${c.source})`,
          );
        }
      }
    });
  }
}
