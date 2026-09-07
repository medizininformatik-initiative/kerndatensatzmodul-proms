<!-- markdownlint-disable MD041 -->

Technical guidance for **software vendors and DIC implementers**: form renderers, EHR/KIS integrations, ePRO apps and ETL pipelines that produce or consume resources of the PRO module.

### What to implement, by role

| Your system | What it consumes | What it produces | Key pages |
|---|---|---|---|
| **Form renderer / ePRO app** | Questionnaire (with SDC extensions) | QuestionnaireResponse | [Capabilities](questionnaire-capabilities.html), [Scoring](scoring.html) (channel A) |
| **EHR / KIS integration** | QuestionnaireResponse, score Observations | display, workflows | [Workflows](workflows.html), [Derived Metrics](derived-metrics.html) |
| **ETL / DIC pipeline** | primary-system data, QuestionnaireResponses | Observations conforming to the score profiles | [Scoring](scoring.html) (channels B/C), [Validation](validation.html) |
| **Scoring service** | QuestionnaireResponse | score Observation | [Scoring](scoring.html) (channel B, CQL) |

### The five things every implementation must respect

1. **Read the capabilities extension before doing anything.** A questionnaire declares machine-readably whether it is displayable, collectable, calculatable, extractable, populatable — [details](questionnaire-capabilities.html). BDI-II, for example, is *not* displayable (licence); rendering its item texts is a licence violation, not a bug.
2. **Never invent answer codings.** Answers carry the codes of the bound answer scale (`answerOption` or `answerValueSet`) — with `system` and `code`, never bare integers. The ordinal weights for scoring hang on those codes ([ID systematics](id-systematics.html)).
3. **linkIds are canonical and instrument-spanning.** The same question carries the same linkId across instruments (PHQ-D block namespace: PHQ-9/PHQ-15/GAD-7). Do not remap them; data from third-party numbering is bridged via the shipped ConceptMaps.
4. **Client-side scores are a convenience, server-side scores are authoritative.** If you render channel-A calculated expressions, mark the result preliminary; the authoritative score Observation comes from channel B — including the medical-device boundary discussed on the [Scoring](scoring.html) page.
5. **Validate against the versioned package**, not the CI build: `de.medizininformatikinitiative.kerndatensatz.pros` from the [package registry](https://packages.simplifier.net/de.medizininformatikinitiative.kerndatensatz.pros). The [Validation](validation.html) page describes terminology-server requirements (German displays!) and known validator pitfalls.

### Renderer notes

The questionnaires use SDC rendering and behaviour extensions (calculated expressions, enableWhen, variables, item control). Renderers that ignore the `translation` extension can use the DE-primary presentation variants where provided (e.g. `mii-qst-pro-promis-29-de`) — they are presentation-only; the EN-primary resource stays authoritative. Test pages render with LHC-Forms and the SMART App Launch context; both `answerOption`-inline and `answerValueSet`-bound scales must resolve.

### Getting the artefacts

- **Package (build time, reproducible):** `fhir install de.medizininformatikinitiative.kerndatensatz.pros@<version>`
- **Rendered artefacts (human review):** this IG's [Artifacts](artifacts.html) pages
- A runtime distribution channel is on the roadmap: [National questionnaire server](national-questionnaire-server.html).
