# Computer-Adaptive Testing (CAT) - MII IG PRO v2027.0.0-ballot.rc5

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Computer-Adaptive Testing (CAT)**

## Computer-Adaptive Testing (CAT)

### What CAT is

**Computer-adaptive testing (CAT)** selects the next question during the assessment, based on the answers already given. An IRT model (item response theory) estimates the respondent's latent trait value after every answer and picks, from an **item bank**, the item that is most informative at the current estimate. The assessment stops once the estimate is precise enough — typically after 4–8 items instead of a fixed 20–30, with comparable measurement precision.

For PRO instruments this matters twice over: the burden on patients drops sharply (a decisive factor for repeated measurement in clinical routine), and the resulting scores stay on the same T-score metric as the fixed short forms — a PROMIS depression CAT and the [PROMIS Depression SF 4a](promis-depression.md) measure the same construct on the same scale.

### Why CAT is inherently server-side

CAT does not fit the client-side scoring channel ([Scoring](scoring.md), channel A): the next item cannot be precomputed into a static Questionnaire, because it depends on the running trait estimate. Item selection and scoring therefore live on a server (channel B), and the form client becomes a thin loop: show item → send answer → receive next item.

FHIR SDC models exactly this loop as **adaptive forms**: the client repeatedly calls the `$next-question` operation with the QuestionnaireResponse collected so far, and the server returns the response with the next item(s) appended into a contained, growing Questionnaire. The result of a finished CAT is thus a normal **QuestionnaireResponse** — it flows into the same extraction and score-Observation pipeline as every fixed questionnaire in this module.

### What this module already provides

CAT is not implemented in the current version. The architectural groundwork, however, is deliberately in place:

* **Canonical item identities.** The [ID systematics](id-systematics.md) give every item a stable, instrument-independent linkId (e.g. the PHQ-D block namespace shared by PHQ-9, PHQ-15, GAD-7). An item bank is exactly this: items with identities independent of any fixed questionnaire.
* **Item-level answer weights.** Ordinal weights sit on the answer codes, not on questionnaire positions, so an adaptively selected subset remains scoreable.
* **Server-side scoring channel.** The [three-channel scoring architecture](scoring.md) already routes authoritative calculation through the server (`Library/$evaluate`, CQL) — the same place a CAT engine would live.
* **T-score infrastructure.** The PROMIS implementations carry raw-score→T-score conversion and ObservationDefinitions on the T-score metric, the common currency CAT results are reported in.

### What is deliberately not decided yet

* **The CAT engine itself.** IRT parameter hosting, item selection and stopping rules are the domain of specialised services (e.g. the PROMIS Assessment Center API). Whether the MII module integrates such a service or profiles the SDC adaptive-forms operations itself is a 2027+ architecture decision.
* **Licensing.** CAT requires the full item bank with IRT parameters — a materially different licensing scope than a fixed short form (for PROMIS: usage request via CPCOR, see the [PROMIS licensing section](promis.md)).
* **Score provenance.** A CAT score derives from a variable item set; how the Observation documents which items and which parameter version produced it is part of the item-based-architecture work on the [roadmap](module-description.md).

### Roadmap

CAT support infrastructure is scheduled in the module roadmap for **2027** as part of the item-based architecture (item-centric score calculation, modular questionnaires, CAT) — after the CQL scoring migration it builds on.

