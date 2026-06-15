# EORTC QLQ-C30 Global Health Status / Quality of Life Score Definition - MII IG PRO v2026.4.1

## ObservationDefinition: EORTC QLQ-C30 Global Health Status / Quality of Life Score Definition 

-------

**English**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2026.4.1

**ArtifactVersion**: 2026.4.1

**code**: EORTC QLQ-C30 Global Health Status / Quality of Life Score

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | {score} | 2 |



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "mii-obsdef-pro-eortc-qlq-c30-ql",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint|2026.4.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-version",
    "valueString" : "2026.4.1"
  }],
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "eortc-qlq-c30-ql",
      "display" : "EORTC QLQ-C30 Global Health Status / Quality of Life Score"
    }]
  },
  "quantitativeDetails" : {
    "unit" : {
      "coding" : [{
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}",
        "display" : "{score}"
      }]
    },
    "decimalPrecision" : 2
  }
}

```
