# PROMIS Cognitive Function SF 4a - MII IG PRO v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **PROMIS Cognitive Function SF 4a**

## PROMIS Cognitive Function SF 4a

### Clinical Context

The **PROMIS Cognitive Function Short Form 4a** measures self-reported cognitive function — perceived mental clarity, memory and the ability to keep track of and switch between activities — with four items over a seven-day recall. It comes from the PROMIS Cognitive Function item bank; scores are reported on the common **T-score metric** (mean 50, SD 10, US reference population).

**Direction:** unlike the symptom-oriented PROMIS domains, **higher values mean better cognitive function** (`increase` on the health-correlation extension). The four items are worded as problems ("My thinking has been slow") and answered on a five-point frequency scale whose weights run inverted accordingly.

**Scoring:** raw score 4–20 (sum of the four item weights), converted to the T-score (range 20–80) via the official conversion table.

### FHIR Implementation

> **Language strategy:** English as the primary language (the validated original), German texts as translations; wordings verified against the PCOR-MII Master Item-Level Dictionary (MATCH=4, DIFF=0, release 2026.4.0).

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a`

**Implementation notes:**

* linkIds `promis-cognition-pc2r`, `-pc35r`, `-pc36r`, `-pc42r` — the PROMIS item-bank identities (the `r` marks the reversed wording), plus the calculated items `promis-cognition-sf4a-raw-score` and `-t-score`.
* LOINC panel `81525-8`; MII catalogue code `promis-cognitive-function-sf4a`.
* Score calculation via a FHIR variable (`cognitiveRawScore`) feeding both calculated items — the [multi-score pattern](questionnaire-capabilities.md) that avoids circular dependencies.
* Copyright per the layered PROMIS attribution (RuleSet `PROMIS_Copyright_DE`): MII FHIR structure / PROMIS items © PROMIS Health Organization / German translations via PCOR-MII, curated by CPCOR Charité / LOINC © Regenstrief. Institutional use outside PCOR-MII requires a [CPCOR usage request](promis.md).

The complete resource: [Questionnaire definition](Questionnaire-mii-qst-pro-promis-cognitive-function-sf4a.md).

#### Score Representation

1. **Calculated items**in the QuestionnaireResponse (raw + T-score)
1. **Observation profiles**[raw score](StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-raw-score.md)and[T-score](StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-tscore.md)
1. **ObservationDefinitions:**[raw score](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score.md)(4–20) and[T-score](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-tscore.md)(20–80, higher = better cognitive function)

### Relationship to PROMIS-16

The PROMIS-16 covers the Cognitive Function domain with **two different items** (PC27r, PC-CaPS3r) — the two instruments share the domain but not the items, so a complete SF 4a cannot be extracted from a PROMIS-16 response (see the [item-overlap table](promis-16.md)).

### License

PROMIS items © PROMIS Health Organization; German translations curated by CPCOR Charité. **Usage request required for institutional implementation outside PCOR-MII** — see [PROMIS licensing](promis.md).

### Sources

* Cella D, et al. PROMIS Cognitive Function item bank. **HealthMeasures**, healthmeasures.net.
* PCOR-MII Master Item-Level Dictionary (validated German wordings).

