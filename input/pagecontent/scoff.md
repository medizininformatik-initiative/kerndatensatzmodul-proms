<!-- TODO:REVIEW machine translation of source page scoff.md (de) — template migration, Gate C; the authored text is input/translations/de/pagecontent/scoff.md -->

### Clinical Context

The SCOFF is a **screening instrument for eating disorders** consisting of five yes/no questions. It was deliberately kept short and memorable so that it can be used at first contact without specialist training — the name is an acronym of the English key words: **S**ick, **C**ontrol, **O**ne stone, **F**at, **F**ood.

**Scoring and interpretation** (sum score 0–5, Morgan et al. 1999): each "yes" answer counts one point. A score of **two or more** marks the screening as positive; in the original study this cut-off reached 100 % sensitivity and 87.5 % specificity against the clinical diagnosis of anorexia or bulimia nervosa.

A positive screening is explicitly **not a substitute for a diagnosis**: the instrument is designed to raise a suspicion that warrants careful clinical assessment.

### FHIR Implementation

> **Language strategy:** English as the primary language (the original per Morgan et al. 1999, verbatim from the published question box), German texts as translations from the PCOR-MII Item Level Dictionary.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-scoff`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Implementation notes:**
- linkIds `scoff-q01`…`scoff-q05`, score item `scoff-score-total`.
- Answers as **inline `answerOption` with SNOMED CT** `373067005` (No, weight 0) and `373066001` (Yes, weight 1) — bundled in the shared RuleSet `YesNoAnswerOptions`. A dedicated MII CodeSystem would duplicate standardised terminology; since no `ordinalValue` property can be attached to SNOMED concepts, the weights sit inline rather than in an `answerValueSet`.
- Score calculation via FHIRPath: `%resource.item.where(linkId.matches('^scoff-q0[1-5]$')).answer.value.ordinal().sum()`.
- **Divergence between original and translation:** item 3 asks about "One stone" (≈ 6.35 kg) in the original, the German version about "mehr als 6 kg". Both wordings are preserved verbatim; the threshold is not harmonised.
- Neither a LOINC nor a SNOMED CT code exists for the SCOFF instrument itself (checked against LOINC 2.83 and SNOMED International 2026-05-01); coding is therefore via the MII questionnaire catalogue.

The complete resource: [Questionnaire definition](Questionnaire-mii-qst-pro-scoff.html).

#### Score Representation

1. **Calculated item** in the QuestionnaireResponse (linkId: `scoff-score-total`)
2. **Observation** carrying the MII score code `scoff-total`
3. **ObservationDefinition:** `mii-obsdef-pro-score-scoff` — value range 0–5 {score}, higher = greater likelihood of an eating disorder

The cut-off ≥ 2 is **documented** as a `qualifiedInterval` but deliberately not shipped as executable interpretation logic (see [Scoring](scoring.html)).

### License

SCOFF © Morgan, Reid & Lacey 1999 (BMJ) — **freely available**; no permission required for reproduction, translation or use.

### Sources

- Morgan JF, Reid F, Lacey JH. The SCOFF questionnaire: assessment of a new screening tool for eating disorders. *BMJ* 1999;319(7223):1467–1468. doi:10.1136/bmj.319.7223.1467
- Hölling H, Schlack R. Essstörungen im Kindes- und Jugendalter. *Bundesgesundheitsblatt* 2007;50:794–799. doi:10.1007/s00103-007-0242-6
