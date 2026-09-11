# MII ObsDef PRO Score SSD-12 - MII IG PRO v2027.0.0-ballot.rc5

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII ObsDef PRO Score SSD-12**

## ObservationDefinition: MII ObsDef PRO Score SSD-12

-------

**German**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2027.0.0-ballot.rc5

**ArtifactVersion**: 2027.0.0-ballot.rc5

**category**: Survey

**code**: SSD-12 Total Score (0-48)

**permittedDataType**: Quantity

**multipleResultsAllowed**: false

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | 1 | 0 |

### QualifiedIntervals

| | | |
| :--- | :--- | :--- |
| - | **Category** | **Range** |
| * | absolute range | 0-48 |



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "mii-obsdef-pro-score-ssd-12",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint|2027.0.0-ballot.rc5"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-version",
    "valueString" : "2027.0.0-ballot.rc5"
  }],
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "ssd-12-total",
      "display" : "SSD-12 Total Score (0-48)"
    }]
  },
  "permittedDataType" : ["Quantity"],
  "multipleResultsAllowed" : false,
  "quantitativeDetails" : {
    "unit" : {
      "coding" : [{
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
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
            "code" : "decrease"
          }]
        }
      }],
      "low" : {
        "value" : 0
      },
      "high" : {
        "value" : 48
      }
    }
  }]
}

```
