# Scoring - MII IG PRO v2026.7.0

## Scoring

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Overview

The MII PRO module supports three scoring channels along the **Questionnaire → QuestionnaireResponse → Observation** workflow. All three channels lead to the same result: a score Observation that is valid against this module's score profiles. They differ in **where the calculation happens** and **what counts as the authoritative source of the algorithm**.

| | | | |
| :--- | :--- | :--- | :--- |
| **A — Client scoring** | In the renderer (FHIRPath`calculatedExpression`) | `collectable`+`calculatable`+`displayable` | Interactive form filling with live score |
| **B — Server scoring** | On the server (CQL library,`Library/$evaluate`) | `populatable`+`calculatable`+`extractable` | On-command/batch scoring of score-less QuestionnaireResponses |
| **C — External scoring** | In the source system (REDCap, EDC, R, clinical system) | `extractable`(pure import layer) | Pre-calculated scores, FHIR as transport and harmonization layer |

The **score item in the Questionnaire** (readOnly, with `code` and `observation-extract`) is the shared contract of channels A and B: channel A fills it live during form filling, channel B fills it afterwards from the item answers. Channel C deliberately does **not** use it (see the ETL rule below).

The answer **weights** are the same in all channels: they are normatively defined in the MII CodeSystems (`ordinalValue` extension on the concepts). Channel A reads them via the FHIRPath function `ordinal()`, channel B replicates them as verified lookup tables inside the CQL library, and channel C must demonstrate algorithmic agreement with the published scoring manuals of the instruments.

-------

### Channel A — Client scoring (FHIRPath in the renderer)

The renderer evaluates the `calculatedExpression` (SDC, `text/fhirpath`) live during form filling; the score lands directly in the score item of the QuestionnaireResponse.

**Variable-based pattern (recommended)** — avoids circular dependencies between raw and transformed scores:

```
// FSH — PROMIS Depression SF 4a
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "rawScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^promis-eddep(04|06|29|41)$')).answer.value.ordinal().sum()"

// Score item references the variable
* item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%rawScore"

```

**Suitable for**: sum scores, subscales, simple lookup transformations (T-score tables as `iif` chains).

**Limitations**: the renderer must support the SDC expressions; complex logic (half-rules for missing items, tariff algorithms, statistical conversions) cannot be expressed in FHIRPath — or only in an unmaintainable way. Such scores exist exclusively in channel B.

-------

### Channel B — Server scoring (CQL, on command)

The **authoritative channel**. Each calculable instrument gets a CQL library (`mii-lib-pro-{instrument}`), shipped as a FHIR `Library` resource with both content forms: `text/cql` (readable source) and `application/elm+json` (pre-compiled, deterministically produced in CI).

**Binding to the Questionnaire** via the `cqf-library` extension with a **versioned** canonical (reproducibility — analogous to the versioned `meta.profile`):

```
// FSH
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-library"
* extension[=].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Library/mii-lib-pro-phq-9|1.0.0"

```

**define ↔ linkId convention**: the name of the CQL `define` that calculates a score corresponds to the `linkId` of the associated score item (or is resolved via `item.code`). This lets a generic scoring pipeline assign each result to the correct item or Observation.

**Invocation**: `Library/{id}/$evaluate` — per QuestionnaireResponse or as a batch over a cohort. Note for HAPI FHIR implementations: `$populate`/`$extract` do **not** evaluate `calculatedExpression`; server-side scoring runs via `Library/$evaluate` or a dedicated scoring pipeline.

**Use for**:

* QuestionnaireResponses that arrive **without a score** (mobile capture, EDC ingestion, partial instruments)
* Scores that FHIRPath cannot express (EQ-5D-5L index tariff, EORTC half-rule, PROMIS-16 PROPr, score crosswalks such as BDI-II → PROMIS)
* Retrospective recalculation for quality assurance (see below)

**Contract between channels A and B**: wherever the same score exists in both languages, differential tests (identical golden QuestionnaireResponses through both engines, results compared) ensure agreement. In case of deviation, channel B is the reference.

-------

### Channel C — External scoring (pre-calculated, mapping only)

The score was calculated outside of FHIR — in REDCap, an EDC system, an R pipeline, or a clinical primary system — and is merely **mapped** into the MII structures as an Observation. FHIR acts as the transport and harmonization layer here, not as the calculation environment.

**Requirements for the imported score Observation**:

* `meta.profile` with the versioned canonical of the matching score profile
* `derivedFrom` → QuestionnaireResponse, **if** the item answers were transmitted as well
* `method` names the algorithm or scoring manual (including version/publication)
* Provenance of the source system if no QuestionnaireResponse exists (score without raw data)

**Trust model**: the MII module does not automatically recalculate imported scores — responsibility for algorithmic correctness lies with the source system. **Recommended quality assurance**: where item answers are available, the score can be recalculated via channel B and compared; deviations point to implementation differences in the source system (rounding, missing handling, outdated manuals).

-------

### ETL rule: write the score into the QuestionnaireResponse or create an Observation directly?

For import and scoring pipelines a clear separation by channel applies:

**Channel B (server calculates from the answers):** the pipeline **may** fill the score item of the QuestionnaireResponse **and** extracts the Observation. The score is derived from exactly the answers of this QuestionnaireResponse — the score item then truthfully documents the result of the module-conformant calculation.

**Channel C (score arrives pre-calculated):** the pipeline creates **only the Observation and never modifies the QuestionnaireResponse.** Rationale:

1. **Document integrity**: the QuestionnaireResponse is the capture document — it attests what was collected (and possibly calculated) at capture time. A retroactively injected external score fabricates a capture event that never happened.
1. **Structure**: partial instruments and external systems frequently deliver QuestionnaireResponses without a score item (or no QuestionnaireResponse at all) — filling it would not even be uniformly possible.
1. **Query patterns**: consumers of the core data set search for scores as Observations, not in QuestionnaireResponse items. The Observation with`derivedFrom`,`method`, and Provenance carries all necessary traceability.

Special case: if an external system delivers a QuestionnaireResponse whose score item was already filled **client-side** (channel A), it remains unchanged — extraction produces the Observation from it as usual.

-------

### Multi-score questionnaires

Complex questionnaires produce multiple scores (example EQ-5D-5L: index, VAS, profile; PROMIS-29: eight domains, each raw + T-score). Per score:

* a dedicated score item with a unique `code`,
* a dedicated ObservationDefinition (including population-specific reference ranges),
* in channel A the variable pattern to avoid circular dependencies,
* in channel B a dedicated `define` in the same instrument library.

-------

### Quality assurance

* **Differential tests channel A ↔ B**: identical test QuestionnaireResponses (minimum, maximum, uniform answers, missing items, opt-outs) through both engines; results must match exactly.
* **Weight consistency**: CI check that the lookup tables of the CQL libraries agree with the `ordinalValue` weights of the CodeSystems.
* **Import validation (channel C)**: sample-based recalculation via channel B where item answers are available.
* **Version binding**: score Observations reference the library version (or the scoring manual) — every score value remains traceable to its algorithm.

-------

### Scope note: clinical interpretation

Cut-off values, severity categories, and comparison metrics (MID/MCID) are deliberately **not shipped as executable logic** in this module; they are documented only (see **Derived Metrics**). Background: software that calculates scores from PRO answers **and interprets them clinically** may qualify as medical device software under the EU MDR (cf. MDCG 2019-11; rule 11, Annex VIII MDR). Qualification depends on the intended purpose of the manufacturer/operator of the executing software — not on this specification. Implementations in clinical care can flag the MDR relevance of a form in a machine-readable way via the gematik extension `ISiKMpFormularExtension` (ISiK level 6 and later).

