# Derived Metrics - MII IG PRO v2027.0.0-ballot.rc4

* [**Table of Contents**](toc.md)
* [**Scoring**](scoring.md)
* **Derived Metrics**

## Derived Metrics

Derived metrics are the step **after** scoring: a computed score becomes clinically actionable only when something compares it against reference knowledge and draws a conclusion — severity staging, a threshold alert, a change over time, a care recommendation. This page describes the concept the module is working towards; the building blocks below are ordered along the data flow.

> **Status:** concept (2027 roadmap). What is shipped today: the score Observations and the ObservationDefinitions with documented reference ranges. The interpretation step itself is deliberately **not** executable logic yet — see the [MDR scope note on the Scoring page](scoring.md).

### The pipeline

```
QuestionnaireResponse
      │  (scoring — channels A/B, see Scoring)
      ▼
Observation (score)                    ObservationDefinition
      │                                  qualifiedInterval:
      │   FHIR CDS Hooks                 cut-offs, severity bands,
      ▼   (e.g. on Observation create)   population norms
CDS Service ──── compares score ─────────────┘
      │          against the definition
      ▼
Result: CDS Cards / PlanDefinition ($apply) → CarePlan, ServiceRequest, Task

```

### 1. The score Observation is the trigger

Every calculated score lands as an **Observation** conforming to `mii-pr-pro-score-instance`, with `derivedFrom` pointing at the QuestionnaireResponse. Creating this Observation is the natural trigger point: a **CDS Hooks** service subscribed to score creation (or a Subscription-based equivalent) receives the event without the form client or the ETL pipeline having to know any interpretation logic.

### 2. The ObservationDefinition is the comparator

The module's ObservationDefinitions are not documentation ornaments — they are the **machine-readable comparison knowledge**:

* `quantitativeDetails` fixes unit and value range,
* `qualifiedInterval` carries the published cut-offs and severity bands (e.g. PHQ-9: 5/10/15/20; GAD-7: 5/10/15), each with `context` (category) and `appliesTo`/`age` (population),
* the [score health correlation extension](StructureDefinition-mii-ex-pro-score-score-health-correlation.md) tells the service **which direction is bad** — without it, "score rose by 10" is uninterpretable (EORTC function scales rise with health, symptom scales with burden).

A CDS service therefore needs no hard-coded instrument knowledge: it resolves the Observation's `instantiates` reference to the ObservationDefinition and evaluates the intervals it finds there. New instrument, same service.

### 3. The result is itself a FHIR artefact

The comparison result should not vanish into a proprietary alert. Two complementary forms:

* **CDS Cards** (the CDS Hooks response) for the interactive moment: "PHQ-9 = 18, band **moderately severe**; suggestion: …" — displayed in the EHR at the point of care.
* **PlanDefinition / ActivityDefinition** for the standing knowledge: the rule "PHQ-9 ≥ 15 → recommend psychiatric assessment" lives as a PlanDefinition; `$apply` instantiates it into a **CarePlan**, **ServiceRequest** or **Task** for the concrete patient. That keeps the recommendation itself versionable, reviewable and — like everything else here — an ordinary FHIR resource.

Longitudinal metrics (change scores, reliable change indices, MID/MCID exceedance) follow the same pattern: the comparator knowledge extends the ObservationDefinition side, the computation lives in CQL, the outcome is again an Observation or a card.

### Why this cut of responsibilities

* **Separation of measurement and judgement.** Scoring (arithmetic, instrument-defined) stays in the scoring channels; interpretation (clinical, context-dependent) sits behind an explicit service boundary. That boundary is also the **regulatory** one — see the medical-device scope note.
* **Single source of comparison truth.** Cut-offs live once, in the ObservationDefinition, not copied into every renderer and ETL job.
* **Population-specific ranges** (age strata, indication-specific norms) are additional `qualifiedInterval`s with `appliesTo` — the service picks the applicable one; the pipeline shape does not change.

### Open design questions (2027)

1. Hook choice and granularity: a dedicated PRO hook vs. generic`observation-create`; batch scoring vs. per-score events.
1. Where CQL ends and PlanDefinition logic begins — the same boundary question as in the[three-channel scoring architecture](scoring.md).
1. Governance of the recommendation artefacts: who reviews and versions PlanDefinitions carrying clinical thresholds (TF-KDS vs. clinical societies).
1. MID/MCID: documented as text per current decision; representing them machine-readably would extend the comparator vocabulary.

