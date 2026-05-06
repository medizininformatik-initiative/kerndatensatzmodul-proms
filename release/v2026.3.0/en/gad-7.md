# GAD-7 - MII IG PRO v2026.3.0

## GAD-7

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Clinical Context

The GAD-7 (Generalized Anxiety Disorder Scale-7) is a validated screening instrument for generalized anxiety disorder with seven items. The instrument assesses the frequency of anxiety symptoms over a two-week period on a four-point scale (0-3).

**Scoring and Interpretation:**

* 0-4: Minimal anxiety
* 5-9: Mild anxiety
* 10-14: Moderate anxiety
* 15-21: Severe anxiety

**Oncology-specific cut-offs:** Recent evidence recommends cut-off ≥7 or ≥8 for cancer patients (sensitivity/specificity optimized for oncological populations).

**Short form GAD-2:** The first two items (feeling nervous/anxious + not able to stop worrying) form the GAD-2 with cut-off ≥3.

### FHIR Implementation

> **Language Strategy:** The GAD-7 is implemented with English as the primary language, as the original version of the instrument was written in English. German translations are provided as Translation extensions. This ensures correct validation against LOINC terminologies.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7`

**Implemented Capabilities:**

* Displayable, Collectable, Populatable, Calculatable, Extractable, Domain-aligned

**Key Features:**

* Automatic score calculation via FHIRPath: `%resource.item.where(linkId.matches('^phq-gad7-q0[1-7]$')).answer.value.ordinal().sum()`
* Populatable capability for server-side calculations implemented
* LOINC-coded answer options with ordinalValue extension
* PROMIS Anxiety T-Score crosswalk integrated (PROsetta Stone)

See the [Questionnaire definition](Questionnaire-mii-qst-pro-gad-7.md) for the full resource.

#### Score Representation

The GAD-7 score is represented at multiple levels:

1. **As a calculated item**in the QuestionnaireResponse (linkId:`phq-gad7-score-total`)
1. **As an Observation**with LOINC code 70274-6 "GAD-7 total score"
1. **As a domain score**mapped to PROMIS Anxiety T-Score

**ObservationDefinition:** `mii-obsdef-pro-score-gad-7`

* Defines value range: 0-21 {score}
* Specifies interpretation guidelines
* Score direction: decrease (lower value = better health)

### Domain Mapping

The GAD-7 can be mapped to PROMIS Anxiety T-Scores (PROsetta Stone Crosswalk):

| | | |
| :--- | :--- | :--- |
| 0-4 | ~33.8–49.2 | Minimal |
| 5-9 | ~51.3–58.1 | Mild |
| 10-14 | ~59.6–64.8 | Moderate |
| 15-21 | ~66.0–75.7 | Severe |

### Validation

**Technical:** Score range 0-21, all 7 items required for a valid score, ordinal values: 0, 1, 2, 3

**Clinical:** Sensitivity 89%, specificity 82% for generalized anxiety disorder (cut-off ≥10), Cronbach's alpha: 0.92, test-retest reliability: ICC 0.83

### References

* Spitzer RL, Kroenke K, Williams JBW, Löwe B. A Brief Measure for Assessing Generalized Anxiety Disorder: The GAD-7. Arch Intern Med. 2006;166(10):1092–1097. [DOI: 10.1001/archinte.166.10.1092](https://doi.org/10.1001/archinte.166.10.1092)
* Löwe B, et al. Validation and Standardization of the Generalized Anxiety Disorder Screener (GAD-7) in the General Population. Med Care. 2008;46(3):266–274. [DOI: 10.1097/MLR.0b013e318160d093](https://doi.org/10.1097/MLR.0b013e318160d093)

