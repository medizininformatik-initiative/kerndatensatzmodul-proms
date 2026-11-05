# MII ObsDef PRO PROMIS Global Health Physical Raw Score - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII ObsDef PRO PROMIS Global Health Physical Raw Score**

## ObservationDefinition: MII ObsDef PRO PROMIS Global Health Physical Raw Score

-------

**English**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2027.0.0-rc.1

**ArtifactVersion**: 2027.0.0-rc.1

**category**: Survey

**code**: PROMIS-10 Global Physical Health (GPH) score

**permittedDataType**: Quantity

**multipleResultsAllowed**: false

**method**: PROMIS Scale v1.2 - Global Health (Scoring Manual v1.2: Global07/Global08 recoded)

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | {score} | 0 |

### QualifiedIntervals

| | | |
| :--- | :--- | :--- |
| - | **Category** | **Range** |
| * | absolute range | 4-20 |



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "mii-obsdef-pro-promis-global-health-physical-raw",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint|2027.0.0-rc.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-version",
    "valueString" : "2027.0.0-rc.1"
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
      "code" : "71972-4",
      "display" : "PROMIS-10 Global Physical Health (GPH) score"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "promis-global-health-physical-raw",
      "display" : "PROMIS Global Health - Global Physical Health Raw Score (4-20)"
    }]
  },
  "permittedDataType" : ["Quantity"],
  "multipleResultsAllowed" : false,
  "method" : {
    "text" : "PROMIS Scale v1.2 - Global Health (Scoring Manual v1.2: Global07/Global08 recoded)"
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
          "text" : "Higher scores indicate better global physical health"
        }
      }],
      "low" : {
        "value" : 4
      },
      "high" : {
        "value" : 20
      }
    }
  }]
}

```
