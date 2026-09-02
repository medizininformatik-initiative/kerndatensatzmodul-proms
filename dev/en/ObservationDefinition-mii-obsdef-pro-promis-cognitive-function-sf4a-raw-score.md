# MII ObsDef PRO PROMIS Cognitive Function SF 4a Raw Score - MII IG PRO v2026.7.0

## ObservationDefinition: MII ObsDef PRO PROMIS Cognitive Function SF 4a Raw Score 

-------

**English**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2026.7.0

**ArtifactVersion**: 2026.7.0

**CQF Citation**: PROMIS Cognitive Function Scoring Manual, Version 3 June 2022. Available at: https://www.healthmeasures.net/images/PROMIS/manuals/Scoring_Manual_Only/PROMIS_Cognitive_Function_Scoring_Manual_03June2022.pdf

**category**: Survey

**code**: PROMIS short form - cognitive function 4a - version 2.0 raw score

**permittedDataType**: Quantity

**multipleResultsAllowed**: false

**method**: PROMIS Cognitive Function SF 4a

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | {score} | 0 |

### QualifiedIntervals

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Category** | **Range** | **Context** |
| * | absolute range | 4-20 | Raw score range for 4 items with 1-5 scale (reverse scored) |



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint|2026.7.0"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-version",
    "valueString" : "2026.7.0"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-citation",
    "valueString" : "PROMIS Cognitive Function Scoring Manual, Version 3 June 2022. Available at: https://www.healthmeasures.net/images/PROMIS/manuals/Scoring_Manual_Only/PROMIS_Cognitive_Function_Scoring_Manual_03June2022.pdf"
  }],
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "81533-2",
      "display" : "PROMIS short form - cognitive function 4a - version 2.0 raw score"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "promis-cognitive-function-sf4a-raw",
      "display" : "PROMIS Cognitive Function Abilities 4a Raw Score"
    }]
  },
  "permittedDataType" : ["Quantity"],
  "multipleResultsAllowed" : false,
  "method" : {
    "text" : "PROMIS Cognitive Function SF 4a"
  },
  "quantitativeDetails" : {
    "unit" : {
      "coding" : [{
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}",
        "display" : "{score}"
      }]
    },
    "decimalPrecision" : 0
  },
  "qualifiedInterval" : [{
    "category" : "absolute",
    "range" : {
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-score-score-health-correlation",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/measure-improvement-notation",
            "code" : "increase"
          }],
          "text" : "Higher scores indicate better cognitive function"
        }
      }],
      "low" : {
        "value" : 4
      },
      "high" : {
        "value" : 20
      }
    },
    "context" : {
      "text" : "Raw score range for 4 items with 1-5 scale (reverse scored)"
    }
  }]
}

```
