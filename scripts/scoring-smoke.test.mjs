// Scoring-Smoke-Test (Beads g3b.17): Jedes Questionnaire, dessen Expressions .weight()
// nutzen, muss mit einer synthetischen QuestionnaireResponse fuer JEDE Score-Expression
// einen Wert liefern. Faengt stille Ausfaelle, wie sie 2026-11-05 bei BDI-II (Gewichte
// beim SDC-4-Upgrade verloren), MIDOS2 (nie Gewichte), EQ-5D collectable (keine Stufen-
// Gewichte) und SCOFF/PC-PTSD/WI-7 (itemWeight am Coding statt an der Option) lagen.
//
// Engine: fhirpath.js (dieselbe wie in LHC-Forms und in promis29-scoring.test.mjs).
// Gewichtsquellen, die der Test abdeckt:
//   1. itemWeight-Extension an answerOption            -> liest fhirpath.js direkt
//   2. itemWeight-Property am MII-CodeSystem (Inline-Coding oder answerValueSet)
//      -> fhirpath.js (R4-Modell) liest an CodeSystem-Konzepten nur EXTENSIONS, keine
//         Properties, und braucht sonst einen Terminologie-Server. Der Test speist die
//         referenzierten CodeSystems als `contained` ein und spiegelt dabei die
//         itemWeight-Property als itemWeight-Extension aufs Konzept (Bruecke; siehe
//         Ticket zum Client-Kanal). Eine fehlende Property faellt damit genauso auf.
//
// Aufruf: node --test scripts/scoring-smoke.test.mjs   (nach sushi .)
import { test } from 'node:test';
import assert from 'node:assert/strict';
import { readFileSync, readdirSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import { createRequire } from 'node:module';

const HERE = dirname(fileURLToPath(import.meta.url));
const require = createRequire(import.meta.url);
const fhirpath = require(join(HERE, 'node_modules', 'fhirpath'));
const r4 = require(join(HERE, 'node_modules', 'fhirpath/fhir-context/r4'));
const R = join(HERE, '..', 'fsh-generated', 'resources');
const IW = 'http://hl7.org/fhir/StructureDefinition/itemWeight';
const VAR = 'http://hl7.org/fhir/StructureDefinition/variable';
const CALC = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression';

const load = (prefix) => Object.fromEntries(readdirSync(R).filter((f) => f.startsWith(prefix))
  .map((f) => JSON.parse(readFileSync(join(R, f), 'utf8'))).map((d) => [d.url, d]));
const VS = load('ValueSet-'); const CS = load('CodeSystem-');

function* walk(items, parent) { for (const it of items ?? []) { yield { it, parent }; yield* walk(it.item, it); } }
function flat(concepts) { const out = []; for (const c of concepts ?? []) { out.push(c); out.push(...flat(c.concept)); } return out; }

/** CodeSystem-Kopie, in der die itemWeight-Property als itemWeight-Extension am Konzept steht. */
function bridgedCodeSystem(cs) {
  const copy = JSON.parse(JSON.stringify(cs));
  for (const c of flat(copy.concept)) {
    const p = (c.property ?? []).find((x) => x.code === 'itemWeight');
    if (p && p.valueDecimal !== undefined) (c.extension ??= []).push({ url: IW, valueDecimal: p.valueDecimal });
  }
  return copy;
}

/** Antwort fuer ein choice-Item: 2. Option bzw. 2. Konzept (Index 1), damit Gewichte != 0 sichtbar werden. */
function pickAnswer(it) {
  if (it.answerOption?.length) {
    const o = it.answerOption[Math.min(1, it.answerOption.length - 1)];
    if (o.valueCoding) { const { system, code, display } = o.valueCoding; return { valueCoding: { system, code, display } }; }
    if (o.valueString !== undefined) return { valueString: o.valueString };
    if (o.valueInteger !== undefined) return { valueInteger: o.valueInteger };
    return null;
  }
  if (it.answerValueSet) {
    const vs = VS[it.answerValueSet.split('|')[0]]; const inc = vs?.compose?.include?.[0];
    if (!inc) return null;
    let c = inc.concept?.[Math.min(1, (inc.concept?.length ?? 1) - 1)];
    if (!c && CS[inc.system]) c = flat(CS[inc.system].concept)[1] ?? flat(CS[inc.system].concept)[0];
    return c ? { valueCoding: { system: inc.system, code: c.code, display: c.display } } : null;
  }
  return null;
}

function buildResponse(q) {
  const groups = new Map(); const contained = new Map();
  for (const { it, parent } of walk(q.item)) {
    if (!['choice', 'open-choice'].includes(it.type)) continue;
    const a = pickAnswer(it); if (!a) continue;
    const key = parent?.linkId ?? '(root)';
    if (!groups.has(key)) groups.set(key, parent ? { linkId: key, item: [] } : { item: [] });
    groups.get(key).item.push({ linkId: it.linkId, answer: [a] });
    if (it.answerValueSet) { const vs = VS[it.answerValueSet.split('|')[0]]; if (vs) { contained.set(vs.url, vs); for (const inc of vs.compose?.include ?? []) if (CS[inc.system]) contained.set(inc.system, bridgedCodeSystem(CS[inc.system])); } }
    const sys = a.valueCoding?.system; if (sys && CS[sys]) contained.set(sys, bridgedCodeSystem(CS[sys]));
  }
  const top = []; for (const [k, g] of groups) { if (k === '(root)') top.push(...g.item); else top.push(g); }
  const qc = JSON.parse(JSON.stringify(q)); qc.contained = [...(qc.contained ?? []), ...contained.values()];
  return { qr: { resourceType: 'QuestionnaireResponse', status: 'completed', questionnaire: q.url, item: top }, qc };
}

async function evaluate(qc, qr, expr) {
  let r = fhirpath.evaluate(qr, expr, { resource: qr, questionnaire: qc, ...qc.__env }, r4, { async: true });
  if (r?.then) r = await r;
  return r;
}

for (const f of readdirSync(R).filter((f) => f.startsWith('Questionnaire-')).sort()) {
  const q = JSON.parse(readFileSync(join(R, f), 'utf8'));
  if (!JSON.stringify(q).includes('.weight()')) continue;
  test(`scoring-smoke / ${q.id}`, async () => {
    const { qr, qc } = buildResponse(q);
    qc.__env = {};
    for (const e of (q.extension ?? []).filter((e) => e.url === VAR)) {
      const r = await evaluate(qc, qr, e.valueExpression.expression);
      qc.__env[e.valueExpression.name] = r.length ? r[0] : null;
    }
    const scored = [];
    for (const { it } of walk(q.item)) {
      const ce = (it.extension ?? []).find((e) => e.url === CALC)?.valueExpression;
      if (!ce || ce.language !== 'text/fhirpath') continue;
      const r = await evaluate(qc, qr, ce.expression);
      const v = r.length ? r[0] : undefined;
      const ok = typeof v === 'number' ? Number.isFinite(v) : (typeof v === 'string' ? v.length > 0 : v !== undefined && v !== null);
      assert.ok(ok, `${it.linkId}: Expression liefert keinen Wert (bekam ${JSON.stringify(v)}) — fehlende itemWeight-Gewichte?`);
      scored.push(it.linkId);
    }
    assert.ok(scored.length > 0, 'keine calculatedExpression gefunden, obwohl .weight() verwendet wird');
  });
}
