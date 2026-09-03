# MII ObsDef PRO Score WI-7 - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII ObsDef PRO Score WI-7**

## ObservationDefinition: MII ObsDef PRO Score WI-7

-------

**English**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2026.7.0

**ArtifactVersion**: 2026.7.0

**category**: Survey

**code**: WI-7 Total Score

**permittedDataType**: Quantity

**multipleResultsAllowed**: false

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | 1 | 0 |

> **qualifiedInterval****category**: absolute range**range**: 0-7

> **qualifiedInterval****category**: reference range**range**: 0-0**condition**: Unauffälliges Screening nach Cut-off 0/1 (screening negative)

> **qualifiedInterval****category**: reference range**range**: 1-7**condition**: Auffälliges Screening nach Cut-off 0/1 — hohe Sensitivität, moderate Spezifität (ICD-10: Sensitivität 1,00, Spezifität 0,65; Fink et al. 1999, Tabelle II)

> **qualifiedInterval****category**: reference range**range**: 0-1**condition**: Unauffälliges Screening nach Cut-off 1/2 (screening negative)

> **qualifiedInterval****category**: reference range**range**: 2-7**condition**: Auffälliges Screening nach Cut-off 1/2 — moderate Sensitivität, höhere Spezifität, weitere Abklärung empfohlen (ICD-10: Sensitivität 0,65, Spezifität 0,84; Fink et al. 1999, Tabelle II)



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "mii-obsdef-pro-score-wi-7",
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
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "wi-7-total",
      "display" : "WI-7 Total Score"
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
        "value" : 7
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
        "value" : 0
      }
    },
    "condition" : "Unauffälliges Screening nach Cut-off 0/1 (screening negative)"
  },
  {
    "category" : "reference",
    "range" : {
      "low" : {
        "value" : 1
      },
      "high" : {
        "value" : 7
      }
    },
    "condition" : "Auffälliges Screening nach Cut-off 0/1 — hohe Sensitivität, moderate Spezifität (ICD-10: Sensitivität 1,00, Spezifität 0,65; Fink et al. 1999, Tabelle II)"
  },
  {
    "category" : "reference",
    "range" : {
      "low" : {
        "value" : 0
      },
      "high" : {
        "value" : 1
      }
    },
    "condition" : "Unauffälliges Screening nach Cut-off 1/2 (screening negative)"
  },
  {
    "category" : "reference",
    "range" : {
      "low" : {
        "value" : 2
      },
      "high" : {
        "value" : 7
      }
    },
    "condition" : "Auffälliges Screening nach Cut-off 1/2 — moderate Sensitivität, höhere Spezifität, weitere Abklärung empfohlen (ICD-10: Sensitivität 0,65, Spezifität 0,84; Fink et al. 1999, Tabelle II)"
  }]
}

```
