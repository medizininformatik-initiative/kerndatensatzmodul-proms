# GAD-7 - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **GAD-7**

## GAD-7

### Clinical Context

The **GAD-7** (Generalized Anxiety Disorder Scale-7) is the standard instrument for screening for **generalized anxiety disorder**. Seven items capture the frequency of anxiety symptoms over the past two weeks on a four-point scale (0 = not at all, to 3 = nearly every day).

**Scoring and interpretation** (sum score 0–21, Spitzer et al. 2006):

* 0–4: minimal anxiety
* 5–9: mild anxiety
* 10–14: moderate anxiety — further assessment recommended
* 15–21: severe anxiety

**Relationship to the PHQ family:** the GAD-7 comes from the same authors as the PHQ-9 and shares its answer scale. The **first two items form the GAD-2**, and together with two PHQ-9 items they make up the **PHQ-4** — the ultra-short screen for anxiety and depression. This is precisely why the items in the MII PRO module carry the linkIds of the shared PHQ-D block namespace (`phq-phq5a`…`phq-phq5g`) rather than an instrument-specific numbering: the same question should carry the same linkId across instruments.

### FHIR Implementation

> **Language strategy:** English as the primary language (the original per Spitzer et al. 2006), German texts as translations (PHQ-D, Löwe et al. 2002; validated in over 5,000 people from the German general population).

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Implementation notes:**

* linkIds in the PHQ-D block namespace: `phq-phq5a`…`phq-phq5g`, score item `phq-gad7-score-total`.
* Answer scale via the shared RuleSet `Phq4PointFrequencyAnswerOptions` — inline `answerOption` with the LOINC answer codes of list LL358-3 (`LA6568-5`…`LA6571-9`) and ordinal weights 0–3. The same scale as the PHQ-9.
* Score calculation via FHIRPath: `%resource.item.where(linkId.matches('^phq-phq5[a-g]$')).answer.value.ordinal().sum()`.
* LOINC panel `69737-5`, score item with LOINC `70274-6`.

**Item numbering:** the ConceptMap [`mii-cm-pro-gad-7-linkids`](ConceptMap-mii-cm-pro-gad-7-linkids.md) maps the conventional GAD-7 numbering (items 1–7) onto the canonical linkIds — a reading aid for taking over data from third-party systems.

The complete resource: [Questionnaire definition](Questionnaire-mii-qst-pro-gad-7.md).

#### Score Representation

1. **Calculated item**in the QuestionnaireResponse (linkId:`phq-gad7-score-total`)
1. **Observation**carrying the LOINC code`70274-6`
1. **ObservationDefinition:**`mii-obsdef-pro-score-gad-7`— value range 0–21 {score}, higher = more pronounced anxiety

The four severity bands are **documented** as `qualifiedInterval` but not shipped as executable interpretation logic (see [Scoring](scoring.md)).

> **Not included:** a PROMIS anxiety T-score conversion. Score conversions between instruments will be modelled as a CQL library rather than as a FHIRPath expression in the questionnaire.

### License

GAD-7 © Pfizer Inc., developed by Spitzer, Kroenke, Williams and Löwe — **freely available**; no permission required for reproduction, translation, display or use. German version: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002).

### Sources

* Spitzer RL, Kroenke K, Williams JBW, Löwe B. A brief measure for assessing generalized anxiety disorder: the GAD-7. **Archives of Internal Medicine** 2006;166(10):1092–1097. doi:10.1001/archinte.166.10.1092
* Löwe B, Decker O, Müller S, et al. Validation and standardization of the Generalized Anxiety Disorder Screener (GAD-7) in the general population. **Medical Care** 2008;46(3):266–274. doi:10.1097/MLR.0b013e318160d093
* Esser P, Hartung TJ, Friedrich M, et al. The Generalized Anxiety Disorder Screener (GAD-7) and the anxiety module of the Hospital and Depression Scale (HADS-A) as screening tools for generalized anxiety disorder among cancer patients. **Psycho-Oncology** 2018;27(6):1509–1516. doi:10.1002/pon.4681

