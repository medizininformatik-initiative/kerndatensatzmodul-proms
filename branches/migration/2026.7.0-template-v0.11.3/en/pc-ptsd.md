# PC-PTSD - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **PC-PTSD**

## PC-PTSD

### Clinical Context

The **PC-PTSD (Primary Care PTSD Screen)** is a brief screen for **post-traumatic stress disorder** in primary care. Four yes/no questions cover the core domains of re-experiencing, avoidance, hyperarousal and emotional numbing — with reference to a distressing event previously experienced.

**Scoring and interpretation** (sum score 0–4): each "yes" answer counts one point. A score of **three or more** is commonly treated as positive and warrants further diagnostic work-up.

> **Important distinction:** the **four-item version** is represented here, as collected in PCOR-MII. It must be distinguished from the newer **PC-PTSD-5** for DSM-5 with five items, for which LOINC carries its own codes (`102010-6`, `LP436025-3`). The two are separate instruments and must not be conflated.

### FHIR Implementation

> **Language strategy:** German as the primary language. The original is English (Prins et al. 2003), but the verbatim English item text was not available with evidence — therefore **no** English version is claimed or invented. The German texts come from the PCOR-MII Item Level Dictionary (validated version, Schäfer & Schulze 2010).

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-pc-ptsd`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Implementation notes:**

* linkIds `pc-ptsd-q01`…`pc-ptsd-q04`, score item `pc-ptsd-score-total`.
* An introductory `display` item carries the stem that applies to all four questions (reference to the distressing event and the four-week recall period).
* Answers via the shared RuleSet `YesNoAnswerOptions` with SNOMED CT `373067005`/`373066001`, weights 0/1.
* Score calculation via FHIRPath: `%resource.item.where(linkId.matches('^pc-ptsd-q0[1-4]$')).answer.value.ordinal().sum()`.
* No LOINC or SNOMED code exists for the four-item version (the available LOINC codes concern the PC-PTSD-5); coding is via the MII questionnaire catalogue.

The complete resource: [Questionnaire definition](Questionnaire-mii-qst-pro-pc-ptsd.md).

#### Score Representation

1. **Calculated item**in the QuestionnaireResponse (linkId:`pc-ptsd-score-total`)
1. **Observation**carrying the MII score code`pc-ptsd-total`
1. **ObservationDefinition:**`mii-obsdef-pro-score-pc-ptsd`— value range 0–4 {score}, higher = stronger suspicion of post-traumatic stress disorder

The cut-off is **documented** as a `qualifiedInterval`, not shipped as executable interpretation logic (see [Scoring](scoring.md)).

### License

**Freely available** per the PCOR-MII DIZ implementation list.

### Sources

* Prins A, Ouimette P, Kimerling R, et al. The Primary Care PTSD Screen (PC-PTSD): development and operating characteristics. **Primary Care Psychiatry** 2003;9(1):9–14.
* Schäfer I, Schulze C. Deutsche Version des Primary Care PTSD Screen. 2010. (German version, source of the item texts used here)

