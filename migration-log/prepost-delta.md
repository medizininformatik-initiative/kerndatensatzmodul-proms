# Pre/post delta — the two ig-stats measurements compared

| Side | Measurement |
|---|---|
| pre | preflight-analysis.json (mii-ig-pro, 341b6ee86, 2026-09-03T06:53:19Z) |
| post | postflight-analysis.json (mii-ig-pro, 800827964, 2026-09-03T15:43:08Z) |

Verdicts: **unchanged** 32 · **improved** 1 · **expected-change** 3 · **REGRESSION** 0 · **not-measurable** 0.

No regression: nothing measured got worse between the two measurements.

## Identity

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `identity.id` | mii-ig-pro | mii-ig-pro | unchanged |  |
| `identity.canonical` | https://www.medizininformatik-initiative.de/fhir/ext/modul-pro | https://www.medizininformatik-initiative.de/fhir/ext/modul-pro | unchanged |  |
| `identity.packageId` | de.medizininformatikinitiative.kerndatensatz.pros | de.medizininformatikinitiative.kerndatensatz.pros | unchanged |  |
| `identity.name` | MII_IG_PRO | MII_IG_PRO | unchanged |  |
| `identity.version` | 2026.7.0 | 2026.7.0 | unchanged |  |
| `identity.fhirVersion` | 4.0.1 | 4.0.1 | unchanged |  |
| `identity.license` | CC0-1.0 | CC0-1.0 | unchanged |  |
| `identity.calver` | true | true | unchanged |  |
| `identity.publisher` | Medizininformatik-Initiative | Medizininformatik-Initiative | unchanged |  |
| `identity.status` | active | active | unchanged |  |
| `identity.title` | MII IG PRO | MII IG PRO | unchanged |  |

## Preflight flags

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `licence.contradictory` | true | true | unchanged |  |
| `dependency_health.injection_risk` | true | false | improved | the dependency-injection risk the source carried is cleared |
| `narrative_sources.dual_source` | true | true | unchanged |  |

## Artefact counts

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `mode` | static | static | unchanged |  |
| `artifacts.profiles` | 23 | 23 | unchanged |  |
| `artifacts.extensions` | 2 | 2 | unchanged |  |
| `artifacts.valuesets` | 26 | 26 | unchanged |  |
| `artifacts.codesystems` | 13 | 13 | unchanged |  |
| `artifacts.logicals` | 1 | 1 | unchanged |  |
| `artifacts.capabilitystatements` | 1 | 1 | unchanged |  |
| `artifacts.questionnaires` | 0 | 0 | unchanged |  |
| `artifacts.searchparameters` | 7 | 7 | unchanged |  |
| `artifacts.operations` | 0 | 0 | unchanged |  |
| `artifacts.examples` | 156 | 156 | unchanged |  |
| `artifacts.rulesets` | 35 | 35 | unchanged |  |
| `artifacts.invariants` | 0 | 0 | unchanged |  |
| `artifacts.mappings` | 1 | 1 | unchanged |  |
| `artifacts.other.ConceptMap` | 2 | 2 | unchanged |  |
| `artifacts.other.Measure` | 1 | 1 | unchanged |  |
| `artifacts.other_total` | 3 | 3 | unchanged |  |
| `artifacts.total` | 229 | 229 | unchanged |  |

## Narrative pages

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `narrative.pages` | 97 | 113 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.intro_note_pages` | 0 | 6 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.translation_pages` | 33 | 61 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |

## Directives

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `directives.total` | 452 | 452 | unchanged |  |

