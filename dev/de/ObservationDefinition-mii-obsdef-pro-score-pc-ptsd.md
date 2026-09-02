# MII ObsDef PRO Score PC-PTSD - MII IG PRO v2026.7.0

## ObservationDefinition: MII ObsDef PRO Score PC-PTSD 

-------

**German**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2026.7.0

**ArtifactVersion**: 2026.7.0

**category**: Survey

**code**: PC-PTSD Total Score (0-4)

**permittedDataType**: Quantity

**multipleResultsAllowed**: false

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | 1 | 0 |

> **qualifiedInterval****category**: absolute range**range**: 0-4

> **qualifiedInterval****category**: reference range**range**: 0-2**condition**: Unauffälliges Screening (screening negative)

> **qualifiedInterval****category**: reference range**range**: 3-4**condition**: Auffälliges Screening, weitere Abklärung empfohlen (screening positive, further assessment indicated)



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "mii-obsdef-pro-score-pc-ptsd",
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
      "code" : "pc-ptsd-total",
      "display" : "PC-PTSD Total Score (0-4)"
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
        "value" : 2
      }
    },
    "condition" : "Unauffälliges Screening (screening negative)"
  },
  {
    "category" : "reference",
    "range" : {
      "low" : {
        "value" : 3
      },
      "high" : {
        "value" : 4
      }
    },
    "condition" : "Auffälliges Screening, weitere Abklärung empfohlen (screening positive, further assessment indicated)"
  }]
}

```
