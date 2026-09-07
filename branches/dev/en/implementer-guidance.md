# Guidance for Implementers - MII IG PRO v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Guidance for Implementers**

## Guidance for Implementers

Technical guidance for **software vendors and DIC implementers**: form renderers, EHR/KIS integrations, ePRO apps and ETL pipelines that produce or consume resources of the PRO module.

### What to implement, by role

| | | | |
| :--- | :--- | :--- | :--- |
| **Form renderer / ePRO app** | Questionnaire (with SDC extensions) | QuestionnaireResponse | [Capabilities](questionnaire-capabilities.md),[Scoring](scoring.md)(channel A) |
| **EHR / KIS integration** | QuestionnaireResponse, score Observations | display, workflows | [Workflows](workflows.md),[Derived Metrics](derived-metrics.md) |
| **ETL / DIC pipeline** | primary-system data, QuestionnaireResponses | Observations conforming to the score profiles | [Scoring](scoring.md)(channels B/C),[Validation](validation.md) |
| **Scoring service** | QuestionnaireResponse | score Observation | [Scoring](scoring.md)(channel B, CQL) |

### The five things every implementation must respect

1. **Read the capabilities extension before doing anything.**A questionnaire declares machine-readably whether it is displayable, collectable, calculatable, extractable, populatable —[details](questionnaire-capabilities.md). BDI-II, for example, is**not**displayable (licence); rendering its item texts is a licence violation, not a bug.
1. **Never invent answer codings.**Answers carry the codes of the bound answer scale (`answerOption`or`answerValueSet`) — with`system`and`code`, never bare integers. The ordinal weights for scoring hang on those codes ([ID systematics](id-systematics.md)).
1. **linkIds are canonical and instrument-spanning.**The same question carries the same linkId across instruments (PHQ-D block namespace: PHQ-9/PHQ-15/GAD-7). Do not remap them; data from third-party numbering is bridged via the shipped ConceptMaps.
1. **Client-side scores are a convenience, server-side scores are authoritative.**If you render channel-A calculated expressions, mark the result preliminary; the authoritative score Observation comes from channel B — including the medical-device boundary discussed on the[Scoring](scoring.md)page.
1. **Validate against the versioned package**, not the CI build:`de.medizininformatikinitiative.kerndatensatz.pros`from the[package registry](https://packages.simplifier.net/de.medizininformatikinitiative.kerndatensatz.pros). The[Validation](validation.md)page describes terminology-server requirements (German displays!) and known validator pitfalls.

### Renderer notes

The questionnaires use SDC rendering and behaviour extensions (calculated expressions, enableWhen, variables, item control). Renderers that ignore the `translation` extension can use the DE-primary presentation variants where provided (e.g. `mii-qst-pro-promis-29-de`) — they are presentation-only; the EN-primary resource stays authoritative. Test pages render with LHC-Forms and the SMART App Launch context; both `answerOption`-inline and `answerValueSet`-bound scales must resolve.

### Getting the artefacts

* **Package (build time, reproducible):** `fhir install de.medizininformatikinitiative.kerndatensatz.pros@<version>`
* **Rendered artefacts (human review):** this IG's [Artifacts](artifacts.md) pages
* A runtime distribution channel is on the roadmap: [National questionnaire server](national-questionnaire-server.md).

