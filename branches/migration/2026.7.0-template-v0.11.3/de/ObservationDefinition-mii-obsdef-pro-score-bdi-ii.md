# MII ObsDef PRO Score BDI-II - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII ObsDef PRO Score BDI-II**

## ObservationDefinition: MII ObsDef PRO Score BDI-II

-------

**German**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2026.7.0

**ArtifactVersion**: 2026.7.0

**category**: Survey

**code**: Beck Depression Inventory II total score [BDI]

**permittedDataType**: Quantity

**multipleResultsAllowed**: false

**method**: Beck Depression Inventory II (BDI-II)

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | {score} | 0 |

### QualifiedIntervals

| | | |
| :--- | :--- | :--- |
| - | **Category** | **Range** |
| * | absolute range | 0-63 |



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "mii-obsdef-pro-score-bdi-ii",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint|2026.7.0"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-version",
    "valueString" : "2026.7.0"
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
      "code" : "89209-1",
      "display" : "Beck Depression Inventory II total score [BDI]"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "bdi-bdi2-total",
      "display" : "Beck Depression Inventory II (BDI-II) Total Score"
    }]
  },
  "permittedDataType" : ["Quantity"],
  "multipleResultsAllowed" : false,
  "method" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "89209-1",
      "display" : "Beck Depression Inventory II total score [BDI]"
    }],
    "text" : "Beck Depression Inventory II (BDI-II)"
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
            "code" : "decrease"
          }],
          "text" : "Higher scores indicate more severe depression"
        }
      }],
      "low" : {
        "value" : 0
      },
      "high" : {
        "value" : 63
      }
    }
  }]
}

```
