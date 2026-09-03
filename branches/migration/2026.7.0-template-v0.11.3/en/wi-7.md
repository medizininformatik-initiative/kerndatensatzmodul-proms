# Whiteley-7 - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **Whiteley-7**

## Whiteley-7

### Clinical Context

The **Whiteley-7 (WI-7)** is a short form of the Whiteley Index for assessing **health anxiety and somatisation**. Fink et al. derived it in 1999 from the longer version: of the original items, the seven with the highest factor loadings were retained, the remainder discarded for loadings below 0.5.

**Scoring and interpretation** (sum score 0–7): seven binary items, each "yes" answer counting one point. The authors note that under the Rasch model the items may be treated as equivalent and therefore simply added up.

The original publication does **not** establish a single binding cut-off. Instead, Fink et al. report two exploratory cut-points (0/1 and 1/2) with differing trade-offs between sensitivity and specificity; both are documented in the ObservationDefinition.

The paper additionally describes two subscales (Illness Conviction, Illness Worrying), of which illness conviction performs better psychometrically. They are **deliberately not implemented** in the MII PRO module — only the total score is.

### FHIR Implementation

> **Language strategy:** English as the primary language (the original per Fink et al. 1999, Table I), German texts as translations from the PCOR-MII Item Level Dictionary.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-wi-7`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Implementation notes:**

* linkIds `wi7-q01`…`wi7-q07`, score item `wi7-score-total`.
* Answers via the shared RuleSet `YesNoAnswerOptions` with SNOMED CT `373067005`/`373066001` and ordinal weights 0/1 — the same scale as SCOFF and PC-PTSD.
* Score calculation via FHIRPath: `%resource.item.where(linkId.matches('^wi7-q0[1-7]$')).answer.value.ordinal().sum()`.
* Neither LOINC nor SNOMED CT carries a code for the instrument itself (checked); coding is via the MII questionnaire catalogue.

The complete resource: [Questionnaire definition](Questionnaire-mii-qst-pro-wi-7.md).

#### Score Representation

1. **Calculated item**in the QuestionnaireResponse (linkId:`wi7-score-total`)
1. **Observation**carrying the MII score code`wi-7-total`
1. **ObservationDefinition:**`mii-obsdef-pro-score-wi-7`— value range 0–7 {score}, higher = more pronounced health anxiety

Both cut-points are **documented** as `qualifiedInterval`, not shipped as executable interpretation logic (see [Scoring](scoring.md)).

### License

**Freely available.** The original publication makes no explicit licence statement about the scale itself; the PCOR-MII DIZ implementation list records it as freely available.

### Sources

* Fink P, Ewald H, Jensen J, Sørensen L, Engberg M, Holm M, Munk-Jørgensen P. Screening for somatization and hypochondriasis in primary care and neurological in-patients: a seven-item scale for hypochondriasis and somatization. **Journal of Psychosomatic Research** 1999;46(3):261–273. doi:10.1016/S0022-3999(98)00092-0
* Rief W, Hiller W, Geissner E, Fichter MM. Hypochondrie: Erfassung und erste klinische Ergebnisse. **Zeitschrift für klinische Psychologie** 1994;23(1):34–42. (German version of the longer Whiteley Index)

