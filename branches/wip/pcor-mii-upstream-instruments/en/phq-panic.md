# PHQ-D Panikblock - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **PHQ-D Panikblock**

## PHQ-D Panikblock

### Clinical Context

The **PHQ-D panic block** comprises the four yes/no screening questions on **anxiety and panic attacks** from the Patient Health Questionnaire (PHQ, block 3a–3d; Brief PHQ block 2a–2d): an anxiety attack in the last four weeks, previous occurrence, attacks coming out of the blue, and being bothered by or worried about further attacks.

**Interpretation** (PHQ algorithm): a **panic syndrome** is present only if all four screening items are answered "yes" **and** at least four of the eleven symptom items 4a–4k are affirmed. The symptom list 4a–4k is not modelled here (not collected by PCOR-MII); hence only the screening stage can be represented: four "yes" answers = screening positive, further assessment required.

> **Distinction:** the panic block differs from the [GAD-7](gad-7.md)/PHQ-4 (frequency of anxiety symptoms over two weeks). Both belong to the PHQ family and share the PHQ-D block namespace of linkIds.

### FHIR Implementation

> **Language strategy:** English as the primary language (wording of the Brief PHQ, Pfizer; identical to block 3a–3d of the full PHQ), German as a `translation` extension from the PHQ-D (Löwe et al. 2002) via the PCOR-MII Item Level Dictionary.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-panic`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Implementation notes:**

* linkIds in the PHQ-D block namespace: `phq-phq3a`…`phq-phq3d`; count item `phq-panic-score-count`. The linkIds `phq-phq4a`…`phq-phq4k` are reserved for the (unmodelled) symptom list.
* The form's skip rule ("If you checked NO, go to the next question") is modelled as `enableWhen`: 3b–3d are shown only if 3a = yes.
* Answers via the shared RuleSet `YesNoAnswerOptions` with SNOMED CT `373067005`/`373066001`, weights 0/1.
* Count item via FHIRPath: `%resource.item.where(linkId.matches('^phq-phq3[a-d]$')).answer.value.weight().sum()` — a technical intermediate value, not a validated sum score.
* To our knowledge LOINC does not carry the panic screening items as individual codes; coding via the MII questionnaire catalogue (`phq-panic`).

The complete resource: [Questionnaire definition](Questionnaire-mii-qst-pro-phq-panic.md).

#### Score Representation

1. **Calculated item**in the QuestionnaireResponse (linkId:`phq-panic-score-count`, 0–4)
1. **Observation**carrying the MII score code`phq-panic-count`
1. **ObservationDefinition:**`mii-obsdef-pro-score-phq-panic`— value range 0–4, screening positive only at 4

The screening stage is **documented** as a `qualifiedInterval`, not shipped as executable interpretation logic (see [Scoring](scoring.md)). A positive screen does not replace diagnostic assessment.

### License

**Freely available** (PHQ © Pfizer Inc.; no permission required for reproduction, translation, display or use).

### Sources

* Spitzer RL, Kroenke K, Williams JBW. Validation and utility of a self-report version of PRIME-MD: the PHQ primary care study. **JAMA** 1999;282(18):1737–1744. doi:10.1001/jama.282.18.1737
* Löwe B, Spitzer RL, Zipfel S, Herzog W. PHQ-D. Gesundheitsfragebogen für Patienten. Pfizer, Karlsruhe 2002. (German version, source of the item texts via the PCOR-MII Item Level Dictionary)
* PHQ Instruction Manual (Pfizer): "Panic Syndrome if #3a-d are all 'YES' and 4 or more of #4a-k are 'YES'."

