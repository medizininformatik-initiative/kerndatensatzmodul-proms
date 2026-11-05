# Scoring Tests - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* **Scoring Tests**

## Scoring Tests

The scoring of the PROMIS-29 profile is covered by an executable, layered test suite. All layers draw on a **single scenario source**: `scripts/data/scoring-cases/promis29-cases.json` — 22 cases (floor, ceiling and an asymmetric mid-range mix per domain, plus a partial-response case for the completeness guard). Answers are stated as **code + label pairs**; the label acts as a checksum that is verified against the vendored answer-weight fixture before any test runs. Expected raw and T-scores are literals anchored in the official sources (LOINC answer lists, HealthMeasures Adult Profile Scoring Manual v2.1 appendix) — never derived from the artefacts under test.

### Layers

| | | |
| :--- | :--- | :--- |
| Definition | Lookup tables, duplicate detection, guards and answer weights against the vendored references | `scripts/check-promis29-scoring.py`(CI; stage 2 additionally checks against a local LOINC release) |
| Form filler | The`calculatedExpression`s of both language variants executed with the real fhirpath.js engine (the one embedded by LHC-Forms) | `scripts/promis29-scoring.test.mjs`(CI) |
| Server | [TestScript promis29-scoring](TestScript-promis29-scoring.md):`$validate`+ create per scenario, plus synthesized`$extract`tests asserting the score Observations;[TestScript promis29-terminology](TestScript-promis29-terminology.md): every answer coding (code**and**display) via`CodeSystem/$validate-code` | `scoring-e2e`workflow (CI) or any TestScript runner |

### Fixtures

Each scenario ships as a conformant example `QuestionnaireResponse` (`promis29-*`) validated by the IG publisher on every build. The fixtures include the expected score answers — they represent the output of a correctly computing form filler.

### Running the TestScripts yourself

The TestScripts run on [AEGIS Touchstone](https://touchstone.aegis.net/) or the open-source [fhir-crucible/testscript-engine](https://github.com/fhir-crucible/testscript-engine). `scripts/assemble-testscript-rundir.mjs` builds the engine's run directory from the published artefacts (it rewrites fixture references to files and synthesizes the `$extract` tests, whose `Parameters` wrapper is deliberately not an IG artefact). Target requirements: a FHIR R4 server with the PROMIS-29 questionnaire loaded; SDC `$extract` for the extraction tests; LOINC-capable terminology for the terminology TestScript. German display validation (`displayLanguage=de`) will follow with the planned CodeSystem supplement.

The generators and sources are documented in the script headers (`scripts/generate-promis29-testscripts.py`).

