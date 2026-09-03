# SSD-12 - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **SSD-12**

## SSD-12

### Clinical Context

The **SSD-12 (Somatic Symptom Disorder – B Criteria Scale)** captures the **psychological features** of somatic symptom disorder per DSM-5 — not the bodily complaints themselves, but how the person deals with them: excessive thoughts, feelings and behaviours relating to their own symptoms.

Twelve items cover the three DSM-5 B criteria (cognitive, affective, behavioural) and are answered on a five-point frequency scale (0 = never, to 4 = very often).

**Scoring** (sum score 0–48): a simple sum across all twelve items; higher values indicate greater psychological burden. A cut-off is deliberately not documented here, as none could be evidenced reliably within this implementation.

**Complement to the PHQ-15:** where the [PHQ-15](phq-15.md) measures the severity of bodily complaints, the SSD-12 captures the psychological response to them. Only together do they cover both criterion groups of somatic symptom disorder.

### FHIR Implementation

> **Language strategy:** German as the primary language — the German version is the one collected in PCOR-MII. Whether German is the instrument's original language is unresolved: in favour are the German development team (Löwe/UKE Hamburg, Henningsen/TU Munich) and the German-language development sample; against are the English-language development publication and a separate 2025 validation study of the German version. Until this is evidenced, no English item text is claimed.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-ssd-12`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Implementation notes:**

* linkIds `ssd12-q01`…`ssd12-q12`, score item `ssd12-score-total`.
* A dedicated, instrument-specific answer scale: MII CodeSystem `mii-cs-pro-ssd-12-answers` with an `ordinalValue` property 0–4, bound via `answerValueSet` (`mii-vs-pro-ssd-12-answers`). The wording of the response levels is part of the validated instrument and is therefore not replaced by a generic scale.
* The `display` values of the answer concepts are **German** (English labels as `designation`), matching the language of the questionnaire — see the note below.
* Score calculation via FHIRPath: `%resource.item.where(linkId.matches('^ssd12-q(0[1-9]|1[0-2])$')).answer.value.ordinal().sum()`.
* Neither LOINC nor SNOMED CT carries a code for the SSD-12. The LOINC codes `94027-0`/`94028-8` concern generic DSM-5 SSD concepts and were deliberately **not** used, so as not to suggest false coverage.

> **Note on display language:** in a resource with `language = #de` the FHIR validator expects the German display in `valueCoding`. An English display makes the entire `answerValueSet` check fail — with the misleading message that the value is not in the value set.

The complete resource: [Questionnaire definition](Questionnaire-mii-qst-pro-ssd-12.md).

#### Score Representation

1. **Calculated item**in the QuestionnaireResponse (linkId:`ssd12-score-total`)
1. **Observation**carrying the MII score code`ssd-12-total`
1. **ObservationDefinition:**`mii-obsdef-pro-score-ssd-12`— value range 0–48 {score}, higher = greater psychological burden

### License

**Freely available** per the PCOR-MII DIZ implementation list.

### Sources

* Toussaint A, Murray AM, Voigt K, Herzog A, Gierk B, Kroenke K, Rief W, Henningsen P, Löwe B. Development and validation of the Somatic Symptom Disorder-B Criteria Scale (SSD-12). **Psychosomatic Medicine** 2016;78(1):5–12. doi:10.1097/PSY.0000000000000240
* Toussaint A, Löwe B, Brähler E, Jordan P. The Somatic Symptom Disorder – B Criteria Scale (SSD-12): factorial structure, validity and population-based norms. **Journal of Psychosomatic Research** 2017;97:9–17. doi:10.1016/j.jpsychores.2017.03.017

