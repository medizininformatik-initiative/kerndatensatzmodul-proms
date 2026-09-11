# EORTC QLQ-C30 Constipation Score Definition - MII IG PRO v2027.0.0-ballot.rc5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EORTC QLQ-C30 Constipation Score Definition**

## ObservationDefinition: EORTC QLQ-C30 Constipation Score Definition

-------

**English**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2027.0.0-ballot.rc5

**ArtifactVersion**: 2027.0.0-ballot.rc5

**code**: EORTC QLQ-C30 Constipation Score

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | {score} | 2 |



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "mii-obsdef-pro-eortc-qlq-c30-co",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint|2027.0.0-ballot.rc5"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-version",
    "valueString" : "2027.0.0-ballot.rc5"
  }],
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "eortc-qlq-c30-co",
      "display" : "EORTC QLQ-C30 Constipation Score"
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
