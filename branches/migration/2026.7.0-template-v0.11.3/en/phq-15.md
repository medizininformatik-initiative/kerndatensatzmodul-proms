# PHQ-15 - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **PHQ-15**

## PHQ-15

### Clinical Context

The PHQ-15 is a validated screening instrument for the severity of **somatic symptoms**. It captures the interference caused by 15 bodily complaints over a four-week period on a three-point scale (0 = not bothered, 1 = bothered a little, 2 = bothered a lot).

**Scoring and interpretation** (sum score 0–30, Kroenke et al. 2002):

* 0–4: minimal somatic symptom burden
* 5–9: low somatic symptom burden
* 10–14: medium somatic symptom burden
* 15 and above: high somatic symptom burden

**Relationship to the PHQ family:** two of the 15 items (fatigue, sleep) originate in the depression module (PHQ-9). In the MII PRO module they are identified through the shared PHQ-D item bank namespace (`phq-phq2d` fatigue, `phq-phq2c` sleep) — the same linkIds as in the PHQ-9 (instrument-specific LOINC code because of the differing scale and recall period).

### FHIR Implementation

> **Language strategy:** English as the primary language (the original instrument), German texts as translations (PHQ-D, Löwe et al. 2002). This ensures correct validation against LOINC.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-15`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Implementation notes:**

* linkIds in the PHQ-D block namespace: somatic `phq-phq1a`…`phq-phq1m`, plus the shared `phq-phq2c` (sleep) / `phq-phq2d` (fatigue).
* Answer scale via `answerValueSet` (`mii-vs-pro-phq-15-answers`); ordinal weights (0/1/2) as a property on the CodeSystem concepts (`mii-cs-pro-phq-15-answers`).
* Automatic score calculation via FHIRPath: `%resource.item.where(linkId.matches('^phq-phq(1[a-m]|2[cd])$')).answer.value.ordinal().sum()`. Note: resolving `.ordinal()` from an `answerValueSet` is engine-dependent; robust scoring via CQL/server.
* LOINC panel `69728-4`, items LOINC-coded.

The complete resource: [Questionnaire definition](Questionnaire-mii-qst-pro-phq-15.md).

#### Score Representation

1. **Calculated item**in the QuestionnaireResponse (linkId:`phq-phq15-score-total`)
1. **Observation**carrying the LOINC code`70273-8`"Patient Health Questionnaire 15 item (PHQ-15) total score"
1. **ObservationDefinition:**`mii-obsdef-pro-score-phq-15`— value range 0–30 {score}, higher = greater somatic symptom burden

### License

PHQ / PHQ-15 © Pfizer Inc. — **freely available** (public domain); no permission required for reproduction, translation or use. German version: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002).

### Sources

* Kroenke K, Spitzer RL, Williams JBW. The PHQ-15: validity of a new measure for evaluating the severity of somatic symptoms. **Psychosomatic Medicine** 2002;64(2):258–266.
* Gräfe K, Zipfel S, Herzog W, Löwe B. Screening psychischer Störungen mit dem „Gesundheitsfragebogen für Patienten (PHQ-D)". **Diagnostica** 2004;50(4):171–181. doi:10.1026/0012-1924.50.4.171

**Example response:** [PHQ-15 QuestionnaireResponse](QuestionnaireResponse-mii-exa-pro-phq-15-response.md)

