// Differenztest CQL-Kanal vs. Szenarien (Beads 6yu.5, Instrument PROMIS-29).
//
// Fuehrt das vorkompilierte ELM der Library mii-lib-pro-promis-29 mit der
// JavaScript-CQL-Engine (cql-execution + cql-exec-fhir, FHIR R4) gegen dieselben
// Szenarien aus, die auch den FHIRPath-Kanal testen
// (scripts/data/scoring-cases/promis29-cases.json). Erwartungswerte sind extern
// verankert (Scoring Manual); beide Kanaele muessen sie treffen.
//
// Geprueft werden beide Aufrufwege der Library:
//   Flow A — Retrieve: QuestionnaireResponse liegt in den Patientendaten
//   Flow B — Parameter: QuestionnaireResponse wird als "Response" uebergeben
//
// Aufruf: node --test scripts/promis29-cql.test.mjs   (nach npm ci --prefix scripts)
import { test } from 'node:test';
import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import { createRequire } from 'node:module';

const HERE = dirname(fileURLToPath(import.meta.url));
const require = createRequire(import.meta.url);
const cql = require(join(HERE, 'node_modules', 'cql-execution'));
const cqlfhir = require(join(HERE, 'node_modules', 'cql-exec-fhir'));

const casesDoc = JSON.parse(readFileSync(join(HERE, 'data/scoring-cases/promis29-cases.json'), 'utf8'));
const questionnaire = JSON.parse(readFileSync(join(HERE, '..', casesDoc.questionnaires[0]), 'utf8'));
const elm = JSON.parse(readFileSync(join(HERE, '../input/cql/mii-lib-pro-promis-29.elm.json'), 'utf8'));
const library = new cql.Library(elm);

const fixture = new Map();
for (const line of readFileSync(join(HERE, 'data/promis29-answer-weights.csv'), 'utf8').trim().split('\n').slice(1)) {
  const [linkId, code, display] = line.split(',');
  fixture.set(`${linkId}|${code}`, display);
}
function* walkItems(items, parent) {
  for (const it of items ?? []) { yield { item: it, parent }; yield* walkItems(it.item, it); }
}
function buildResponse(answers) {
  const groups = new Map();
  for (const { item, parent } of walkItems(questionnaire.item)) {
    const a = answers[item.linkId];
    if (!a) continue;
    const key = parent?.linkId ?? '(root)';
    if (!groups.has(key)) groups.set(key, { linkId: key, item: [] });
    groups.get(key).item.push({
      linkId: item.linkId,
      answer: [{ valueCoding: { system: 'http://loinc.org', code: a.code, display: fixture.get(`${item.linkId}|${a.code}`) } }],
    });
  }
  return {
    resourceType: 'QuestionnaireResponse', id: 'qr-1', status: 'completed',
    questionnaire: `${questionnaire.url}|${questionnaire.version}`,
    subject: { reference: 'Patient/p1' }, authored: '2026-11-04T10:00:00Z',
    item: [...groups.values()],
  };
}
const patient = { resourceType: 'Patient', id: 'p1', gender: 'female', birthDate: '1980-01-01' };

async function run(qr, mode) {
  const ps = cqlfhir.PatientSource.FHIRv401();
  const entries = [{ resource: patient }];
  // Nicht uebergebene Parameter liefert cql-execution als ParameterDef-Objekt statt null
  // (HAPI CR liefert null); daher explizit null setzen.
  let params = { Response: null };
  if (mode === 'retrieve') entries.push({ resource: qr });
  else params = { Response: cqlfhir.FHIRWrapper.FHIRv401().wrap(qr) };
  ps.loadBundles([{ resourceType: 'Bundle', type: 'collection', entry: entries }]);
  const result = await new cql.Executor(library, null, params).exec(ps);
  return result.patientResults['p1'];
}
const num = (v) => (v === null || v === undefined ? null : Number(v));

for (const mode of ['retrieve', 'parameter']) {
  for (const c of casesDoc.cases) {
    test(`CQL ${mode} / ${c.id}`, async () => {
      const r = await run(buildResponse(c.answers), mode);
      assert.equal(r.LibraryLoaded, true);
      for (const [linkId, expected] of Object.entries(c.expect)) {
        assert.equal(num(r[linkId]), expected === null ? null : Number(expected),
          `${linkId}: erwartet ${expected}, CQL lieferte ${r[linkId]} (${c.source})`);
      }
    });
  }
}
