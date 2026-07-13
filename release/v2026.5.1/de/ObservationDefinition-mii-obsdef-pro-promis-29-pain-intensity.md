# MII ObsDef PRO PROMIS-29 Pain Intensity - MII IG PRO v2026.5.1

## ObservationDefinition: MII ObsDef PRO PROMIS-29 Pain Intensity 

-------

**German**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2026.5.1

**ArtifactVersion**: 2026.5.1

**category**: Survey

**code**: How intense was your average pain in the past 7 days [PROMIS]

**permittedDataType**: Quantity

**multipleResultsAllowed**: false

**method**: PROMIS-29 Profile v2.1 - Pain Intensity single item

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | 1 | 0 |

### QualifiedIntervals

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Category** | **Range** | **Context** |
| * | absolute range | 0-10 | Pain intensity scale 0-10 |



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "mii-obsdef-pro-promis-29-pain-intensity",
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
      "code" : "75261-8",
      "display" : "How intense was your average pain in the past 7 days [PROMIS]"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "promis-29-pain-intensity",
      "display" : "PROMIS-29 Pain Intensity (0-10 Numeric Rating)"
    }]
  },
  "permittedDataType" : ["Quantity"],
  "multipleResultsAllowed" : false,
  "method" : {
    "text" : "PROMIS-29 Profile v2.1 - Pain Intensity single item"
  },
  "quantitativeDetails" : {
    "unit" : {
      "coding" : [{
        "system" : "http://unitsofmeasure.org",
        "code" : "1",
        "display" : "1"
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
          "text" : "Higher scores indicate more pain"
        }
      }],
      "low" : {
        "value" : 0
      },
      "high" : {
        "value" : 10
      }
    },
    "context" : {
      "text" : "Pain intensity scale 0-10"
    }
  }]
}

```
