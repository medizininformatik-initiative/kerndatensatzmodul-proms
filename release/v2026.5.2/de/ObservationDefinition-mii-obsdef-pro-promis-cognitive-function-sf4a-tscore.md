# MII ObsDef PRO PROMIS Cognitive Function SF 4a T-Score - MII IG PRO v2026.5.2

## ObservationDefinition: MII ObsDef PRO PROMIS Cognitive Function SF 4a T-Score 

-------

**German**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2026.5.2

**ArtifactVersion**: 2026.5.2

**CQF Citation**: PROMIS Cognitive Function Scoring Manual, Version 3 June 2022. Available at: https://www.healthmeasures.net/images/PROMIS/manuals/Scoring_Manual_Only/PROMIS_Cognitive_Function_Scoring_Manual_03June2022.pdf

**category**: Survey

**code**: PROMIS cognitive function - version 2.0 T-score

**permittedDataType**: Quantity

**multipleResultsAllowed**: false

**method**: PROMIS Cognitive Function SF 4a

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | {score} | 1 |

### QualifiedIntervals

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Category** | **Range** | **Context** |
| * | reference range | 20-80 | PROMIS T-Score metric (Mean=50, SD=10) |



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "mii-obsdef-pro-promis-cognitive-function-sf4a-tscore",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint|2026.5.2"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-version",
    "valueString" : "2026.5.2"
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
      "code" : "81538-1",
      "display" : "PROMIS cognitive function - version 2.0 T-score"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "promis-cognitive-function-sf4a-tscore",
      "display" : "PROMIS Cognitive Function Abilities 4a T-Score"
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
    "decimalPrecision" : 1
  },
  "qualifiedInterval" : [{
    "category" : "reference",
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
        "value" : 20
      },
      "high" : {
        "value" : 80
      }
    },
    "context" : {
      "text" : "PROMIS T-Score metric (Mean=50, SD=10)"
    }
  }]
}

```
