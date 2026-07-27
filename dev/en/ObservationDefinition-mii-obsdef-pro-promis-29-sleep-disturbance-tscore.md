# MII ObsDef PRO PROMIS-29 Sleep Disturbance T-Score - MII IG PRO v2026.5.2

## ObservationDefinition: MII ObsDef PRO PROMIS-29 Sleep Disturbance T-Score 

-------

**English**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2026.5.2

**ArtifactVersion**: 2026.5.2

**category**: Survey

**code**: PROMIS sleep disturbance - version 1.0 Tscore

**permittedDataType**: Quantity

**multipleResultsAllowed**: false

**method**: PROMIS-29 Profile v2.1

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
  "id" : "mii-obsdef-pro-promis-29-sleep-disturbance-tscore",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint|2026.5.2"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-version",
    "valueString" : "2026.5.2"
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
      "code" : "77860-5",
      "display" : "PROMIS sleep disturbance - version 1.0 Tscore"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "promis-29-sleep-disturbance-tscore",
      "display" : "PROMIS-29 Sleep Disturbance T-Score"
    }]
  },
  "permittedDataType" : ["Quantity"],
  "multipleResultsAllowed" : false,
  "method" : {
    "text" : "PROMIS-29 Profile v2.1"
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
            "code" : "decrease"
          }],
          "text" : "Higher scores indicate more sleep disturbance"
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
