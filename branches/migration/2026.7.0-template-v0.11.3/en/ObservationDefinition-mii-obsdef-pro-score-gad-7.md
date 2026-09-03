# MII ObsDef PRO Score GAD-7 - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII ObsDef PRO Score GAD-7**

## ObservationDefinition: MII ObsDef PRO Score GAD-7

-------

**English**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2026.7.0

**ArtifactVersion**: 2026.7.0

**category**: Survey

**code**: Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]

**permittedDataType**: Quantity

**multipleResultsAllowed**: false

**method**: Generalized anxiety disorder 7 item (GAD-7)

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | 1 | 0 |

> **qualifiedInterval****category**: absolute range**range**: 0-21

> **qualifiedInterval****category**: reference range**range**: 0-4**condition**: Minimale Angstsymptomatik (minimal anxiety)

> **qualifiedInterval****category**: reference range**range**: 5-9**condition**: Leichte Angstsymptomatik (mild anxiety)

> **qualifiedInterval****category**: reference range**range**: 10-14**condition**: Moderate Angstsymptomatik (moderate anxiety) — weitere Abklärung empfohlen

> **qualifiedInterval****category**: reference range**range**: 15-21**condition**: Schwere Angstsymptomatik (severe anxiety)



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "mii-obsdef-pro-score-gad-7",
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
      "code" : "70274-6",
      "display" : "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "phq-gad7-total",
      "display" : "GAD-7 Total Score (0-21)"
    }]
  },
  "permittedDataType" : ["Quantity"],
  "multipleResultsAllowed" : false,
  "method" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "69737-5",
      "display" : "Generalized anxiety disorder 7 item (GAD-7)"
    }]
  },
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
        "value" : 21
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
        "value" : 4
      }
    },
    "condition" : "Minimale Angstsymptomatik (minimal anxiety)"
  },
  {
    "category" : "reference",
    "range" : {
      "low" : {
        "value" : 5
      },
      "high" : {
        "value" : 9
      }
    },
    "condition" : "Leichte Angstsymptomatik (mild anxiety)"
  },
  {
    "category" : "reference",
    "range" : {
      "low" : {
        "value" : 10
      },
      "high" : {
        "value" : 14
      }
    },
    "condition" : "Moderate Angstsymptomatik (moderate anxiety) — weitere Abklärung empfohlen"
  },
  {
    "category" : "reference",
    "range" : {
      "low" : {
        "value" : 15
      },
      "high" : {
        "value" : 21
      }
    },
    "condition" : "Schwere Angstsymptomatik (severe anxiety)"
  }]
}

```
