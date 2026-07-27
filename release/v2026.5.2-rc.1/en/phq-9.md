# PHQ-9 - MII IG PRO v2026.5.2-rc.1

## PHQ-9

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Clinical Context

The PHQ-9 is a validated screening instrument for depression with nine items. The instrument assesses the frequency of depression symptoms over a two-week period on a four-point scale.

**Scoring and Interpretation:**

* 0-4: No/minimal depression
* 5-9: Mild depression
* 10-14: Moderate depression
* 15-19: Moderately severe depression
* 20 and above: Severe depression

**Clinical Notes:** Item 9 assesses suicidal ideation and requires immediate clinical evaluation for any positive response, regardless of the total score.

### FHIR Implementation

> **Language Strategy:** The PHQ-9 is implemented with English as the primary language, as the original version of the instrument was written in English. German translations are provided as Translation extensions. This ensures correct validation against LOINC terminologies.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9`

**Implemented Capabilities:**

* Displayable, Collectable, Populatable, Calculatable, Extractable, Domain-aligned

**Key Features:**

* Automatic score calculation via FHIRPath: `%resource.item.where(linkId.matches('^phq-.*-q0[1-9]$')).answer.value.ordinal().sum()`
* Populatable capability for server-side calculations implemented
* LOINC-coded answer options

See the [Questionnaire definition](Questionnaire-mii-qst-pro-phq-9.md) for the full resource.

#### Score Representation

The PHQ-9 score is represented at multiple levels:

1. **As a calculated item**in the QuestionnaireResponse (linkId:`phq9-total-score`)
1. **As an Observation**with LOINC code 44261-6 "PHQ-9 total score"
1. **As a domain score**mapped to PROMIS Depression T-Score

**ObservationDefinition:** `mii-obsdef-pro-phq9-score`

* Defines value range: 0-27 {score}
* Specifies interpretation guidelines

### Domain Mapping

The PHQ-9 can be mapped to PROMIS Depression T-Scores:

| | | |
| :--- | :--- | :--- |
| 0-4 | ~41.0 | Minimal |
| 5-9 | ~50.0 | Mild |
| 10-14 | ~60.0 | Moderate |
| 15-19 | ~70.0 | Moderately severe |
| 20-27 | ~77.5 | Severe |

### Example Resources

#### PHQ-9 QuestionnaireResponse

See the [full example](QuestionnaireResponse-mii-exa-pro-phq-9-response.md).

### Validation

**Technical:** Score range 0-27, all items required for a valid score, ordinal values: 0, 1, 2, 3

**Clinical:** Sensitivity 88%, specificity 88% for major depression (cut-off 10 and above), test-retest reliability: 0.84

### References

Kroenke K, Spitzer RL, Williams JB. The PHQ-9: validity of a brief depression severity measure. J Gen Intern Med. 2001;16(9):606-13.

