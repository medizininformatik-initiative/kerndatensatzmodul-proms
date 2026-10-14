// Baut das Laufverzeichnis für die testscript-engine aus den IG-Artefakten.
//
// Die IG-TestScripts referenzieren ihre Fixtures IG-üblich als
// "QuestionnaireResponse/<id>"; die fhir-crucible/testscript-engine erwartet
// dagegen Dateien im Unterordner fixtures/. Dieses Skript übersetzt das —
// und synthetisiert zusätzlich die $extract-Tests (Score landet als
// Observation in der Ressource), deren Parameters-Wrapper bewusst kein
// IG-Artefakt ist (siehe generate-promis29-testscripts.py).
//
// Aufruf:  node scripts/assemble-testscript-rundir.mjs <rundir> [--terminology]
//   <rundir>/TestScript-*.json  + <rundir>/fixtures/*.json
import { cpSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const HERE = dirname(fileURLToPath(import.meta.url));
const GEN = join(HERE, '..', 'fsh-generated', 'resources');
const rundir = process.argv[2];
const withTerminology = process.argv.includes('--terminology');
if (!rundir) {
  console.error('Aufruf: node scripts/assemble-testscript-rundir.mjs <rundir> [--terminology]');
  process.exit(2);
}
const FIX = join(rundir, 'fixtures');
mkdirSync(FIX, { recursive: true });

const readGen = (name) => JSON.parse(readFileSync(join(GEN, name), 'utf8'));

// 1. Scoring-TestScript: Fixture-Referenzen auf Dateien umschreiben
const scoring = readGen('TestScript-promis29-scoring.json');
for (const f of scoring.fixture ?? []) {
  const id = f.resource.reference.split('/').pop();
  const file = `QuestionnaireResponse-${id}.json`;
  cpSync(join(GEN, file), join(FIX, file));
  f.resource.reference = file; // Engine sucht selbst unter fixtures/
}

// 2. $extract-Tests aus den Decken-Szenarien synthetisieren
const cases = JSON.parse(
  readFileSync(join(HERE, 'data/scoring-cases/promis29-cases.json'), 'utf8'),
);
const questionnaire = readGen('Questionnaire-mii-qst-pro-promis-29.json');
const loincOf = new Map();
(function walk(items) {
  for (const it of items ?? []) {
    const c = (it.code ?? []).find((c) => c.system === 'http://loinc.org');
    if (c) loincOf.set(it.linkId, c.code);
    walk(it.item);
  }
})(questionnaire.item);

for (const c of cases.cases.filter((c) => c.id.endsWith('-ceil'))) {
  const qr = readGen(`QuestionnaireResponse-promis29-${c.id}.json`);
  const params = {
    resourceType: 'Parameters',
    id: `promis29-${c.id}-extract`,
    parameter: [{ name: 'questionnaire-response', resource: qr }],
  };
  const file = `Parameters-promis29-${c.id}-extract.json`;
  writeFileSync(join(FIX, file), JSON.stringify(params, null, 1));
  const fid = `extract-${c.id}`;
  scoring.fixture.push({
    id: fid, autocreate: false, autodelete: false,
    resource: { reference: file }, // Engine sucht selbst unter fixtures/
  });
  const actions = [{
    operation: {
      encodeRequestUrl: true, method: 'post', sourceId: fid,
      url: '/QuestionnaireResponse/$extract',
    },
  }];
  // Flache Pfade + contains/where-mit-Integer: das fhir_models-FHIRPath der
  // Engine kann weder verschachtelte Pfade in where() noch Float-Literale.
  // Exakte T-Werte prueft daher die Form-Filler-Schicht; hier: Item-Obs mit
  // Antwortcode, Raw-Quantity mit exaktem Integer-Wert + {score}-Unit,
  // T-Obs-Existenz + Quantity-Unit.
  for (const [linkId, a] of Object.entries(c.answers)) {
    const loinc = loincOf.get(linkId);
    actions.push({ assert: {
      description: `Item-Observation ${loinc} extrahiert`,
      expression: 'Bundle.entry.resource.code.coding.code',
      operator: 'contains', value: loinc, warningOnly: false,
    }});
    actions.push({ assert: {
      description: `Antwortcode ${a.code} extrahiert`,
      expression: 'Bundle.entry.resource.valueCodeableConcept.coding.code',
      operator: 'contains', value: a.code, warningOnly: false,
    }});
  }
  for (const [linkId, expected] of Object.entries(c.expect)) {
    const loinc = loincOf.get(linkId);
    if (linkId.endsWith('-raw')) {
      actions.push({ assert: {
        description: `Raw-Score-Quantity ${expected} {score} extrahiert (${loinc})`,
        expression: `Bundle.entry.resource.valueQuantity.where(value = ${expected}).code`,
        operator: 'contains', value: '{score}', warningOnly: false,
      }});
    } else {
      actions.push({ assert: {
        description: `T-Score-Observation ${loinc} extrahiert`,
        expression: 'Bundle.entry.resource.code.coding.code',
        operator: 'contains', value: loinc, warningOnly: false,
      }});
    }
  }
  actions.push({ assert: {
    description: 'Score-Quantities tragen UCUM {score}',
    expression: 'Bundle.entry.resource.valueQuantity.code',
    operator: 'contains', value: '{score}', warningOnly: false,
  }});
  scoring.test.push({
    name: `extract-${c.id}`,
    description: 'Score landet als Observation in der Ressource ($extract)',
    action: actions,
  });
}
writeFileSync(join(rundir, 'TestScript-promis29-scoring.json'),
  JSON.stringify(scoring, null, 1));

// 3. Terminologie-TestScript optional (Ziel braucht LOINC)
if (withTerminology) {
  cpSync(join(GEN, 'TestScript-promis29-terminology.json'),
    join(rundir, 'TestScript-promis29-terminology.json'));
}
console.log(`Rundir: ${rundir} — ${scoring.test.length} Tests, ${scoring.fixture.length} Fixtures` +
  (withTerminology ? ' + Terminologie-TestScript' : ''));
