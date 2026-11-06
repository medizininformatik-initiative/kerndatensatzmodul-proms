# PROMIS-29 - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **PROMIS-29**

## PROMIS-29

### Overview

**Status**: Fully implemented (items, both scoring channels, review framework) **Version**: 2027.0.0-rc.1 **Last Updated**: 2026-11-04

The PROMIS-29 is a comprehensive instrument for assessing health-related quality of life across 7 domains plus pain intensity.

See the [Questionnaire definition](Questionnaire-mii-qst-pro-promis-29.md) for the full resource.

### Domains and short forms

PROMIS-29 Profile v2.1 bundles seven 4-item short forms plus one pain intensity item. The short-form **versions** matter for the T-score tables: v2.1 uses the Physical Function 4a v2.0 calibration (same four items as v1.0, re-calibrated with the Physical Function v2.0 item bank, Rose et al. 2014) and the Ability to Participate in Social Roles and Activities 4a v2.0 short form (which replaced the v1.0 **Satisfaction with Participation** short form in Profile v2.0). The other five short forms are v1.0.

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Physical Function | 4a**v2.0** | 4 | T-score | 91721-1 | — (LOINC has only 4a v1.0 = 76700-4) |
| Anxiety | 4a v1.0 | 4 | T-score | 77862-1 | 76344-1 |
| Depression | 4a v1.0 | 4 | T-score | 77861-3 | 76343-3 |
| Fatigue | 4a v1.0 | 4 | T-score | 77864-7 | 76342-5 |
| Sleep Disturbance | 4a v1.0 | 4 | T-score | 77860-5 | 75258-4 |
| Ability to Participate in Social Roles and Activities | 4a**v2.0** | 4 | T-score | 77854-8 | item bank[76787-1](https://loinc.org/76787-1/)(no 4a panel; 8a = 76731-9) |
| Pain Interference | 4a v1.0 | 4 | T-score | 77865-4 | 90971-3 |
| Pain Intensity | single item (Global07) | 1 | 0–10 NRS | 61583-1 (item) | — |

The profile itself is LOINC panel [62337-1](https://loinc.org/62337-1/) (`Questionnaire.code`). Note that this LOINC panel is a v1.0/v2.x hybrid: it still lists the v1.0 Satisfaction item (62041-9) and the **PROMIS-29 Satisfaction with participation in social roles** score codes next to the v2.0 Ability-to-Participate items and T-score code.

#### LOINC coding rule for the scores

LOINC cannot identify a PROMIS score unambiguously: the domain T-score codes (`778xx`, `91721-1`) carry the item-bank version but not the short form (4a, 8a or CAT all share one code), and the profile-specific codes (`71955-9` … `71968-2`) carry neither version nor construct. The module therefore applies one rule:

* **T-scores** use the domain code with the bank version (`PROMIS <domain> - version N T-score`), because only those codes name the calibration.
* **Raw scores** use the PROMIS-29-specific `PROMIS-29 <domain> score` codes, because raw sums are only meaningful per short form. The Social Roles raw score is the exception: `71958-3` is the raw score of the v1.0 domain **Satisfaction with Participation in Social Roles** (different items, opposite polarity), and for the v2.0 domain **Ability to Participate** (item bank 76787-1, T-score 77854-8) LOINC has no 4a raw-score code (only 8a, 77814-2). The item therefore carries the MII score-catalogue code `promis-29-social-function-raw` only.
* **Pain Intensity** uses the item code `61583-1` for item and score alike.
* The authoritative identity of a score is never the LOINC code but `Observation.derivedFrom` → `QuestionnaireResponse.questionnaire` (versioned canonical) plus the MII score-catalogue code.

### Technical Details

#### Questionnaire Resource

```
Questionnaire/mii-qst-pro-promis-29

```

**Capabilities**:

* Displayable
* Collectable
* Calculatable (all domain scores)
* Extractable
* Domain-aligned

#### Score Calculation

Every domain yields a **raw score** (sum of the four item weights, range 4–20) and a **T-score** (lookup from the official PROMIS-29 Profile v2.1 scoring-manual appendix). Pain Intensity is the single 0–10 item. The raw sums are FHIR `variable`s on the Questionnaire; the score items reference them:

```
// variable anxietyRaw (one per domain)
%resource.item.item
  .where(linkId.matches('^promis-edanx(01|40|41|53)$'))
  .answer.value.weight().sum()

// item promis-29-anxiety-raw
%anxietyRaw

// item promis-29-anxiety-tscore — count guard + generated lookup table
iif(%resource.item.item.where(linkId.matches('^promis-edanx(01|40|41|53)$')).answer.count() = 4,
    iif(%anxietyRaw=4, 40.3, iif(%anxietyRaw=5, 48.0, … iif(%anxietyRaw=20, 81.6, {}))), {})

```

Rules that matter for implementers:

* Weights are `itemWeight` extensions on the `answerOption`s (LOINC answer codes); Social Roles and Sleep items are reverse-keyed (e.g. Never = 5 … Always = 1), the official polarity.
* A T-score is produced **only for a fully answered short form** (count guard); a missing item yields no T-score rather than a wrong one.
* The seven T-score tables are **generated** from `scripts/data/promis29-t-score-tables.csv` (`scripts/generate-promis29-tscores.py`), never typed into the FSH.
* 22 scoring scenarios (floor, ceiling, asymmetric, partial response per domain) run as unit tests, TestScripts and server end-to-end tests — see the [PROM review page](reviews/promis-29.md) for the item-by-item view with expected vs. computed values.

#### Two scoring channels (FHIRPath and CQL)

PROMIS-29 is the reference implementation of the module's dual-channel scoring architecture:

| | | | |
| :--- | :--- | :--- | :--- |
| Client | `sdc-questionnaire-calculatedExpression`(FHIRPath) on every score item | in the form filler, live | `collectable + calculatable + displayable` |
| Server | Library[`mii-lib-pro-promis-29`](Library-mii-lib-pro-promis-29.md)(CQL + pre-compiled ELM), bound via`cqf-library` | `Library/$evaluate`on a server with Clinical Reasoning | `populatable + calculatable + extractable` |

Both channels are **generated from the same two tables** (`scripts/data/promis29-answer-weights.csv`, `scripts/data/promis29-t-score-tables.csv`), so they cannot drift. The CQL define names are the score item `linkId`s (`promis-29-anxiety-tscore` …), which lets a server map item to define without parsing expressions. The library accepts the response either as the `Response` parameter or, following the SDC retrieve pattern, as the most recent completed QuestionnaireResponse of the instrument in the patient's data. The 22 scoring scenarios are executed against both channels in CI (`scripts/promis29-scoring.test.mjs` with fhirpath.js, `scripts/promis29-cql.test.mjs` with cql-execution).

### Language Support

**Primary Language**: English, wording of the official PROMIS-29 Profile v2.1 form (PROMIS Health Organization) **German Translation**: Via `translation` extension on every item text, group header and instruction; wording of the validated German PROMIS-29 (CPCOR Charité / PCOR-MII Item Level Dictionary; Pain Interference items in the past tense per the PHO German PDF).

All 43 items (29 questions, 14 score items) and all group headers follow this one architecture. The former German-primary variant `mii-qst-pro-promis-29-de` and the 8-item `-minimal` subset are **retired** since 2027.0.0-rc.1; German-primary rendering is a renderer/`$localize` concern, not a second resource. The Physical Function and Social Roles groups deliberately have **no** time-frame instruction, exactly as on the official form.

```
{
  "text": "I felt fearful.",
  "_text": {
    "extension": [{
      "url": "http://hl7.org/fhir/StructureDefinition/translation",
      "extension": [
        {"url": "lang", "valueCode": "de"},
        {"url": "content", "valueString": "Ich fürchtete mich."}
      ]
    }]
  }
}

```

### Implementation Notes

#### Variable-based architecture

Raw sums live once as Questionnaire-level `variable` extensions and are referenced by both score items of a domain, which avoids circular references between calculated items (a calculated item has no `answer.value` to read):

```
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "anxietyRaw"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.item.where(linkId.matches('^promis-edanx(01|40|41|53)$')).answer.value.weight().sum()"

* item[=].item[+].linkId = "promis-29-anxiety-raw"
* item[=].item[=].extension[calculatedExpression].valueExpression.expression = "%anxietyRaw"
* item[=].item[+].linkId = "promis-29-anxiety-tscore"
* item[=].item[=].extension[calculatedExpression].valueExpression.expression = "iif(… %anxietyRaw=4, 40.3, …)"

```

#### Item identifiers

Item `linkId`s follow the PROMIS item IDs of the validation studies (`promis-pfa11`, `promis-edanx01`, `promis-srpper23-caps`), not the LOINC codes; the LOINC item code sits in `item.code`. The same `linkId`s are used wherever an item recurs (PROMIS-16, PROMIS Depression SF 4a), which is what makes cross-instrument scoring possible.

#### Known limitations

1. **Partial responses**: a domain with a missing item yields its raw sum of the answered items but no T-score. PROMIS' pro-rating rules for short forms are intentionally not applied; use the item-bank CAT or the CQL channel for imputation strategies.
1. **Group nesting is not optional**: QuestionnaireResponses must keep the domain groups (`PROMIS-29.Anxiety`→ items), because the score expressions address`item.item`and the domain headers carry part of the question meaning.

### Example QuestionnaireResponse

```
{
  "resourceType": "QuestionnaireResponse",
  "questionnaire": "Questionnaire/mii-qst-pro-promis-29",
  "status": "completed",
  "item": [
    {
      "linkId": "promis-pfa11",
      "text": "Are you able to do chores such as vacuuming or yard work?",
      "answer": [{
        "valueCoding": {
          "system": "http://loinc.org",
          "code": "LA13918-0",
          "display": "With a little difficulty"
        }
      }]
    }
    // ... 28 additional items
  ]
}

```

### References

* [PROMIS Official Site](https://www.healthmeasures.net/explore-measurement-systems/promis)
* [German PROMIS Validation](https://doi.org/10.1371/journal.pone.0197139)
* LOINC panel PROMIS-29 profile: [62337-1](https://loinc.org/62337-1/)
* HealthMeasures, PROMIS Adult Profile Scoring Manual (15 July 2025) — short-form versions per profile version and T-score tables
* HealthMeasures, PROMIS Physical Function Measure Differences (12 July 2024) — v1.0–v2.0 recalibration

