# PROMIS-29 - MII IG PRO v2026.4.1

## PROMIS-29

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Overview

**Status**: Fully implemented **Version**: 2026.0.0-ballot **Last Updated**: 2025-08-28

The PROMIS-29 is a comprehensive instrument for assessing health-related quality of life across 7 domains plus pain intensity.

See the [Questionnaire definition](Questionnaire-mii-qst-pro-promis-29.md) for the full resource.

### Domains

| | | | |
| :--- | :--- | :--- | :--- |
| Physical Function | 4 | T-Score 20-80 | 61758-9 |
| Anxiety | 4 | T-Score 20-80 | 61759-7 |
| Depression | 4 | T-Score 20-80 | 61760-5 |
| Fatigue | 4 | T-Score 20-80 | 61761-3 |
| Sleep Disturbance | 4 | T-Score 20-80 | 61762-1 |
| Social Roles | 4 | T-Score 20-80 | 61763-9 |
| Pain Interference | 4 | T-Score 20-80 | 61764-7 |
| Pain Intensity | 1 | 0-10 | 75262-6 |

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

Each domain (except Pain Intensity) is calculated as a T-Score:

```
// FHIRPath
// Example: Depression Domain
%rawScore = %resource.item
  .where(linkId.matches('^promis-eddep(04|05|06|29)$'))
  .answer.value.ordinal()
  .sum()

// T-Score Lookup (simplified)
%tScore = iif(%rawScore = 4, 41.0,
          iif(%rawScore = 5, 49.0,
          iif(%rawScore = 6, 52.5, ...)))

```

### Language Support

**Primary Language**: English (validated version) **German Translation**: Via Extension

```
{
  "text": "In the past 7 days... I could do chores",
  "extension": [{
    "url": "http://hl7.org/fhir/StructureDefinition/translation",
    "extension": [
      {"url": "lang", "valueCode": "de"},
      {"url": "content", "valueString": "In den letzten 7 Tagen... konnte ich Hausarbeiten erledigen"}
    ]
  }]
}

```

### Implementation Notes

#### Variable-Based Architecture

The PROMIS-29 uses FHIR Variables for efficient multi-score calculation:

```
// FSH
* extension[variable][+].name = "promisDepRaw"
* extension[variable][=].expression = "[sum of depression items]"

// Raw Score Item
* item[dep-raw].calculatedExpression = "%promisDepRaw"

// T-Score Item
* item[dep-tscore].calculatedExpression = "iif(%promisDepRaw = 4, 41.0, ...)"

```

#### Known Limitations

1. **Item IDs**: Currently MII-specific (`promis-pfa11`), not LOINC-conformant
1. **Validation Study Alignment**: IDs are based on German validation studies
1. **Partial Responses**: No handling of missing items

### Example QuestionnaireResponse

```
{
  "resourceType": "QuestionnaireResponse",
  "questionnaire": "Questionnaire/mii-qst-pro-promis-29",
  "status": "completed",
  "item": [
    {
      "linkId": "promis-pfa11",
      "text": "Are you able to do chores?",
      "answer": [{
        "valueCoding": {
          "code": "3",
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
* LOINC Panel: [62199-5](https://loinc.org/62199-5/)

