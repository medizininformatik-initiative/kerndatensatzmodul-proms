# EORTC QLQ-C30 - MII IG PRO v2026.5.0

## EORTC QLQ-C30

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Overview

**Status**: Technical Preview **Version**: 0.1.0 **Last Updated**: 2025-01-15

The EORTC QLQ-C30 is the standard questionnaire for assessing quality of life in oncological patients.

### Structure

| | | | |
| :--- | :--- | :--- | :--- |
| **Function Scales** |   |   | 0-100 (higher = better) |
|   | Physical Function (PF) | 5 |   |
|   | Role Function (RF) | 2 |   |
|   | Emotional Function (EF) | 4 |   |
|   | Cognitive Function (CF) | 2 |   |
|   | Social Function (SF) | 2 |   |
| **Symptom Scales** |   |   | 0-100 (higher = worse) |
|   | Fatigue (FA) | 3 |   |
|   | Nausea/Vomiting (NV) | 2 |   |
|   | Pain (PA) | 2 |   |
| **Single Items** |   |   | 0-100 |
|   | Dyspnoea, Insomnia, Appetite Loss, | 6 |   |
|   | Constipation, Diarrhoea, Financial |   |   |
| **Global Quality of Life** |   |   | 0-100 (higher = better) |
|   | Global Health/QoL (QL) | 2 |   |

### Technical Details

#### Questionnaire Resource

```
Questionnaire/mii-qst-pro-eortc-qlq-c30

```

See the [Questionnaire definition](Questionnaire-mii-qst-pro-eortc-qlq-c30.md) for the full resource.

**SNOMED**: `273446001 |EORTC QLQ-C30 (assessment scale)|`

**Capabilities**:

* Displayable
* Collectable
* Calculatable (scoring algorithm implemented)
* Extractable (planned)
* Populatable (planned)

### Score Calculation

#### Linear Transformation

All scales are transformed to a 0-100 range:

**Function Scales**:

```
Score = (1 - (RawScore - 1) / Range) x 100

```

**Symptom Scales & Global Health**:

```
Score = ((RawScore - 1) / Range) x 100

```

#### MII Terminology

```
// FSH
CodeSystem: MII_CS_PRO_EORTC_QLQ_C30
Id: mii-cs-pro-eortc-qlq-c30
* #qlq30-q01 "Do you have any trouble..."
  * ^designation[+].language = #de
  * ^designation[=].value = "Bereitet es Ihnen Schwierigkeiten..."

```

### Response Scales

#### 4-Point Scale (Items 1-28)

```
// FSH
ValueSet: MII_VS_PRO_EORTC_QLQ_C30_Scale4pt
* MII_CS_PRO_EORTC_QLQ_C30#not-at-all "Not at all"
* MII_CS_PRO_EORTC_QLQ_C30#a-little "A little"
* MII_CS_PRO_EORTC_QLQ_C30#quite-a-bit "Quite a bit"
* MII_CS_PRO_EORTC_QLQ_C30#very-much "Very much"

```

#### 7-Point Scale (Items 29-30)

```
// FSH
ValueSet: MII_VS_PRO_EORTC_QLQ_C30_Scale7pt
* MII_CS_PRO_EORTC_QLQ_C30#1 "Very poor"
* MII_CS_PRO_EORTC_QLQ_C30#2 "2"
// ... up to 7 "Excellent"

```

### Implementation Notes

#### Scoring Example: Physical Function

```
// FHIRPath
// Items: qlq30-q01 to qlq30-q05
%pfRawScore = %resource.item
  .where(linkId in ('qlq30-q01' | 'qlq30-q02' | 'qlq30-q03' | 'qlq30-q04' | 'qlq30-q05'))
  .answer.value.ordinal()
  .sum() / 5  // Mean

// Function scale: Inverted transformation
%pfScore = (1 - (%pfRawScore - 1) / 3) * 100

```

For a detailed description of the scoring methodology, see [EORTC QLQ-C30 Scoring](eortc-qlq-c30-scoring.md).

### Known Limitations

1. **Licensing**: Copyright held by EORTC – usage terms must be observed
1. **Module System**: QLQ-C30 is often combined with specific modules (e.g., QLQ-BR23)
1. **Missing Items**: Scoring with missing items is not yet implemented

### Example QuestionnaireResponse

```
{
  "resourceType": "QuestionnaireResponse",
  "questionnaire": "Questionnaire/mii-qst-pro-eortc-qlq-c30",
  "status": "completed",
  "item": [
    {
      "linkId": "qlq30-q01",
      "text": "Do you have any trouble doing strenuous activities?",
      "answer": [{
        "valueCoding": {
          "system": "http://mii.de/fhir/pro/CodeSystem/eortc-qlq-c30",
          "code": "a-little",
          "display": "A little"
        }
      }]
    }
    // ... 29 additional items
  ]
}

```

### Integration with the MII Oncology Module

The EORTC QLQ-C30 is primarily relevant for use in oncological settings. Since the QLQ-C30 covers general domains (similar to PROMIS-29), it is maintained within the MII PRO Module. Additional oncology-specific PROs will likely be managed within the dedicated MII Oncology Module.

### References

* [EORTC QLQ-C30 Official](https://qol.eortc.org/questionnaire/eortc-qlq-c30/)
* [Scoring Manual](https://www.eortc.org/app/uploads/sites/2/2018/02/SCmanual.pdf)
* SNOMED: 273446001

**Technical Preview**: EORTC licensing is required before production use.

