# MII ObsDef PRO Score PHQ-D Panikblock - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII ObsDef PRO Score PHQ-D Panikblock**

## ObservationDefinition: MII ObsDef PRO Score PHQ-D Panikblock

-------

**German**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2027.0.0-rc.1

**ArtifactVersion**: 2027.0.0-rc.1

**category**: Survey

**code**: PHQ-D Panikblock Yes-Count (0-4, screening items 3a-3d)

**permittedDataType**: Quantity

**multipleResultsAllowed**: false

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | 1 | 0 |

> **qualifiedInterval****category**: absolute range**range**: 0-4

> **qualifiedInterval****category**: reference range**range**: 0-3**condition**: Unauffälliges Screening (screening negative — PHQ panic syndrome algorithm requires all of 3a-3d 'yes')

> **qualifiedInterval****category**: reference range**range**: 4-4**condition**: Auffälliges Screening — Symptomliste 4a-4k bzw. klinische Abklärung erforderlich (screening positive; panic syndrome additionally requires >= 4 of 4a-4k 'yes')



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "mii-obsdef-pro-score-phq-panic",
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
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "phq-panic-count",
      "display" : "PHQ-D Panikblock Yes-Count (0-4, screening items 3a-3d)"
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
        "value" : 4
      }
    }
  },
  {
    "category" : "reference",
    "range" : {
      "low" : {
        "value" : 0
      },
      "high" : {
        "value" : 3
      }
    },
    "condition" : "Unauffälliges Screening (screening negative — PHQ panic syndrome algorithm requires all of 3a-3d 'yes')"
  },
  {
    "category" : "reference",
    "range" : {
      "low" : {
        "value" : 4
      },
      "high" : {
        "value" : 4
      }
    },
    "condition" : "Auffälliges Screening — Symptomliste 4a-4k bzw. klinische Abklärung erforderlich (screening positive; panic syndrome additionally requires >= 4 of 4a-4k 'yes')"
  }]
}

```
