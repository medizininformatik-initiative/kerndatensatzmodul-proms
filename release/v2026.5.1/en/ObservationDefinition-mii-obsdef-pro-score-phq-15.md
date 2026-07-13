# MII ObsDef PRO Score PHQ-15 - MII IG PRO v2026.5.1

## ObservationDefinition: MII ObsDef PRO Score PHQ-15 

-------

**English**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2026.5.1

**ArtifactVersion**: 2026.5.1

**category**: Survey

**code**: Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]

**permittedDataType**: Quantity

**multipleResultsAllowed**: false

**method**: Patient Health Questionnaire 15 item (PHQ-15) [Reported]

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | 1 | 0 |

> **qualifiedInterval****category**: absolute range**range**: 0-30

> **qualifiedInterval****category**: reference range**range**: 0-4**condition**: Minimal somatic symptom burden (minimale somatische Symptomlast)

> **qualifiedInterval****category**: reference range**range**: 5-9**condition**: Low somatic symptom burden (geringe somatische Symptomlast)

> **qualifiedInterval****category**: reference range**range**: 10-14**condition**: Medium somatic symptom burden (mittlere somatische Symptomlast)

> **qualifiedInterval****category**: reference range**range**: 15-30**condition**: High somatic symptom burden (hohe somatische Symptomlast)



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "mii-obsdef-pro-score-phq-15",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint|2026.5.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-version",
    "valueString" : "2026.5.1"
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
      "code" : "70273-8",
      "display" : "Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "phq-phq15-total",
      "display" : "PHQ-15 Total Score"
    }]
  },
  "permittedDataType" : ["Quantity"],
  "multipleResultsAllowed" : false,
  "method" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "69728-4",
      "display" : "Patient Health Questionnaire 15 item (PHQ-15) [Reported]"
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
        "value" : 30
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
    "condition" : "Minimal somatic symptom burden (minimale somatische Symptomlast)"
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
    "condition" : "Low somatic symptom burden (geringe somatische Symptomlast)"
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
    "condition" : "Medium somatic symptom burden (mittlere somatische Symptomlast)"
  },
  {
    "category" : "reference",
    "range" : {
      "low" : {
        "value" : 15
      },
      "high" : {
        "value" : 30
      }
    },
    "condition" : "High somatic symptom burden (hohe somatische Symptomlast)"
  }]
}

```
