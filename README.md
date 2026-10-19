# MII KDS Extension Module: PROs, PROMs and Derived Metrics

[![IG build and preview](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/actions/workflows/ig-publisher.yml/badge.svg?branch=dev)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/actions/workflows/ig-publisher.yml)
[![FHIR validation](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/actions/workflows/validation.yml/badge.svg?branch=dev)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/actions/workflows/validation.yml)
[![Scoring E2E](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/actions/workflows/scoring-e2e.yml/badge.svg?branch=dev)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/actions/workflows/scoring-e2e.yml)
[![License: CC BY 4.0](https://img.shields.io/badge/license-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

FHIR R4 Implementation Guide of the [Medizininformatik-Initiative (MII)](https://www.medizininformatik-initiative.de) for **patient-reported outcomes (PROs)**, **patient-reported outcome measures (PROMs)** and the **scores derived from them**. It standardises how validated instruments are defined, captured and scored in the German healthcare system so that PRO data is comparable across sites.

The module builds on [HL7 FHIR Structured Data Capture (SDC)](https://build.fhir.org/ig/HL7/sdc/) and covers the complete workflow **Questionnaire → QuestionnaireResponse → score Observation**: canonical instrument definitions, answer scales with ordinal weights, machine-readable questionnaire capabilities, and traceable, testable score computation.

## Published Implementation Guide

| | |
|---|---|
| **Current release** | [medizininformatik-initiative.github.io/kerndatensatzmodul-proms](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/) (English default, German translation via the language switch) |
| **CI build (`dev`)** | […/kerndatensatzmodul-proms/branches/dev/](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/branches/dev/) |
| **Release notes** | [changes.html](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/changes.html) |
| **Simplifier project** | [simplifier.net/mii-erweiterungsmodul-pro-2025](https://simplifier.net/mii-erweiterungsmodul-pro-2025) |
| **Issues** | [GitHub Issues](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/issues) |

Every branch push produces a preview under `branches/<name>/` on the same site.

## Key facts

| | |
|---|---|
| Canonical | `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro` |
| Package ID | `de.medizininformatikinitiative.kerndatensatz.pros` |
| Version | `2027.0.0-ballot.1` (MII CalVer `YYYY.n.n`) |
| FHIR version | 4.0.1 (R4) |
| Jurisdiction | DE |
| Licence | CC BY 4.0 for MII-authored content (see [Licensing](#licensing)) |
| Status | active, ballot version of the 2027 line |

### Dependencies

| Package | Version |
|---|---|
| `de.medizininformatikinitiative.kerndatensatz.meta` | 2027.0.0-ballot |
| `de.basisprofil.r4` | 1.6.0 |
| `de.gematik.isik` | 6.0.0 |
| `hl7.fhir.uv.sdc` | 4.0.0 |
| `hl7.fhir.uv.crmi` | 2.0.0 |
| `hl7.fhir.uv.extensions.r4` | 5.2.0 |
| `hl7.fhir.uv.xver-r5.r4` | 0.1.0 |
| `hl7.terminology.r4` | 7.3.0 |

## What the module contains

Generated from FSH as of this branch:

| Resource type | Count | Notes |
|---|---:|---|
| StructureDefinition | 26 | Questionnaire and QuestionnaireResponse profiles, score Observation profiles, extensions, logical models |
| Questionnaire | 30 | Instrument definitions, including variants |
| ObservationDefinition | 47 | One per computed score (raw, T-score, index, subscale) |
| CodeSystem / ValueSet | 13 / 26 | MII-controlled answer scales with ordinal weights, instrument catalogue, LOINC supplement with validated German wordings |
| ConceptMap | 2 | Cross-instrument mappings |
| SearchParameter | 7 | Plus one CapabilityStatement |
| TestScript | 2 | Executable scoring tests, run against HAPI in CI |
| Examples | 42 QuestionnaireResponses, 34 Observations, 5 Bundles | End-to-end examples per instrument |

### Instruments in the PRO Library

| Instrument | Focus | Items | Scoring | Licence tier |
|---|---|---:|---|---|
| PHQ-9, PHQ-15, GAD-7 | Depression, somatic symptoms, anxiety | 9 / 15 / 7 | Sum scores | free |
| DASS-21 | Depression, anxiety, stress | 21 | 3 subscale sums | free |
| BDI-II | Depression inventory | 21 | Sum 0–63 | commercial, data and scoring only |
| EQ-5D-5L | Health-related quality of life | 5 + VAS | Index, VAS, profile (CQL) | registration (EuroQol) |
| PROMIS-29, PROMIS-16 | Multi-domain HRQoL profiles | 29 / 16 | Domain raw and T-scores | usage request via CPCOR |
| PROMIS Depression SF 4a, Cognitive Function SF 4a | Short forms | 4 / 4 | Raw and T-score | usage request via CPCOR |
| EORTC QLQ-C30 | Oncological quality of life | 30 | 15 subscales, 0–100 | registration (EORTC) |
| PRO-CTCAE, Oncology Base Screening | Symptomatic adverse events | 124 (library) / 23 | Composite grade (CQL) | free (NCI) |
| MIDOS2 | Palliative symptom screening | 13 | Symptom sum | free for clinical use |
| WHODAS 2.0 (12-item) | Functioning and disability | 12 | Sum 0–48 | WHO licence, see IG page |
| SCOFF, Whiteley-7, PC-PTSD, SSD-12, ISR-Z, EURONET-SOMA | PCOR-MII screening set | 5 / 7 / 4 / 12 / 3 / 2 | Sums, mean, single items | free |
| HADS, EPDS, CES-D, K6 | Metadata-only references | – | – | restricted, not displayable |

The full table with links to each instrument page is in the IG under **PRO Library**.

### Architecture in one paragraph

Every instrument follows the same pattern. Items carry canonical linkIds per the module's ID systematics. Answers bind to MII-controlled ValueSets whose codes carry `ordinalValue` weights, so FHIRPath `.ordinal()` works reliably without an external terminology server. Each Questionnaire declares its **capabilities** (displayable, collectable, populatable, calculatable, extractable) through an extension. Scores are computed either inside the form via SDC `calculatedExpression`, or server-side via CQL libraries, and each score is described by an ObservationDefinition and extracted into a profiled Observation. English is the primary language with German supplied through the `translation` extension, except for instruments that are German-only by validation.

## Repository layout

```
input/fsh/
  profiles/            StructureDefinitions and extensions
  definitions/<instr>/ one folder per instrument: Questionnaire, CodeSystem, ValueSets, ObservationDefinitions
  definitions/domains/ cross-instrument domain mappings
  examples/            example instances
  logical-model/       logical models
  rulesets/            central version, MetaProfile and CRMI rulesets
  testscripts/         TestScript definitions for scoring tests
input/cql/             CQL libraries (PRO-CTCAE composite grading)
input/pagecontent/     IG narrative pages (English source)
input/translations/    German translation of the narrative (.po)
input/testscripts/     fixtures for the scoring E2E suite
fsh-generated/         SUSHI output, committed
scripts/               build, release and QA helpers plus their unit tests
docs/                  design notes, discussion records, recipes
ig-template/           vendored MII KDS module IG template
sushi-config.yaml      IG metadata (CRMI-profiled)
```

Naming convention for resources: `mii-{type}-pro-{instrument}-{specific}`, with type prefixes `pr` (profile), `qst` (Questionnaire), `obsdef`, `cs`, `vs`, `cm`, `ex` (extension), `exa` (example) and `lib` (CQL Library).

## Building locally

Prerequisites: Node.js 18+, [SUSHI](https://fshschool.org/docs/sushi/) (`npm install -g fsh-sushi`), Java 17+, and the HL7 IG Publisher for the full site.

```bash
# 1. Compile FSH to FHIR JSON (fsh-generated/)
sushi .

# 2. Build the Implementation Guide (first run downloads the publisher into input-cache/)
./_updatePublisher.sh
./_genonce.sh
# site lands in output/
```

Helper scripts and their tests:

```bash
node --test scripts/*.test.mjs        # unit tests, same as CI on a pull request
node scripts/convention-check.mjs     # MII metadata contract and pinned versions
scripts/hapi-smoketest.sh             # loads the built package into a fresh HAPI FHIR (release gate)
```

## Continuous integration

| Workflow | Trigger | Purpose |
|---|---|---|
| `ig-publisher.yml` | every push | Builds the IG and deploys a branch preview to GitHub Pages |
| `validation.yml` | push to `dev`/`main`, PRs | Validates all generated resources with the FHIR validator |
| `scoring-e2e.yml` | PRs | Runs the TestScripts against a real HAPI FHIR and renders the TestReports |
| `convention-check.yml` | push, PRs | Metadata contract, pinned versions, language model of the narrative |
| `module-release.yml` | CalVer tag `YYYY.n.n[-suffix]` | Builds and attaches the release package |
| `go-publish.yml` | GitHub release published | Formal publication into the versioned website and IG registry patch |

## Using the package

Download `package.tgz` from the IG's **Downloads** page, or install it from the Simplifier registry:

```bash
npm --registry https://packages.simplifier.net install de.medizininformatikinitiative.kerndatensatz.pros@2027.0.0-ballot.1
```

Instances declare conformance with versioned profile canonicals, for example `…/StructureDefinition/mii-pr-pro-questionnaire|2027.0.0-ballot.1`.

## Versioning and branches

- `dev` is the integration branch and the default branch. `main` holds the stable, released state.
- Releases follow MII CalVer (`YYYY.n.n`, with `-ballot`, `-rc.n` or `-alpha.n` suffixes) and are cut by tagging.
- All resources take their version from the rulesets in `input/fsh/rulesets/version.fsh`, so a version bump happens in one place.
- The changelog is maintained on the IG's **Changes** page (`input/pagecontent/changes.md`).

## Contributing and ballot feedback

Bug reports and change requests go to the [issue tracker](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/issues). Pull requests target `dev`; CI must be green, including the scoring E2E suite when scoring logic changes. Formal ballot comments on the 2027 ballot version are collected through the HL7 Germany ballot portal.

Open ballot question worth a look: a hard obligation for `item.text` and `answer.display` in QuestionnaireResponse was implemented and measured but conflicts with licence-restricted instruments and paper-based capture. Details are on the Changes page.

## Licensing

The MII-authored content of this repository (profiles, terminology, documentation, test suites) is licensed under **[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)**, in line with the other MII core dataset modules (kerndatensatz-basis, kerndatensatz-meta).

> **Note:** the machine-readable metadata (`license` in sushi-config.yaml and package.json, and the licence statements on the IG pages) still reads `CC0-1.0`. That value is the SUSHI default from the initial 2024 commit, not a decision. Aligning it to CC BY 4.0 is scheduled for the next release.

The licence does **not** extend to third-party instrument item texts. Each instrument page in the IG states its licence tier:

- **free / public domain**: PHQ family, DASS-21, PRO-CTCAE, the PCOR-MII screening set and others ship with full item texts.
- **registration or usage agreement**: EQ-5D-5L (EuroQol), EORTC QLQ-C30, PROMIS instruments (German versions via CPCOR Charité). Obtain the agreement before deploying the forms.
- **commercial or restricted**: BDI-II ships data and scoring structure only. HADS, EPDS, CES-D and K6 are metadata-only references without item texts.

## Contact

Medizininformatik-Initiative, Taskforce Core Data Set, <office@medizininformatik-initiative.de>.
Module authors: Thomas Debertshäuser, Mathias Rose, Fabian Praßer, Karoline Buckow, Franziska Klepka.
