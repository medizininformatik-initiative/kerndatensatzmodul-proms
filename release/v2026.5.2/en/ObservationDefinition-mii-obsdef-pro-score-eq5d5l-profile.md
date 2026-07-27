# MII ObsDef PRO Score EQ-5D-5L Profile - MII IG PRO v2026.5.2

## ObservationDefinition: MII ObsDef PRO Score EQ-5D-5L Profile 

-------

**English**

-------

Profile: [MII PR PRO Score Blueprint / Template](StructureDefinition-mii-pr-pro-score-blueprint.md) version: 2026.5.2

**ArtifactVersion**: 2026.5.2

**category**: Survey

**code**: EuroQol EQ-5D-5L Profile

**permittedDataType**: string

**multipleResultsAllowed**: false

**method**: EuroQoL five dimension five level questionnaire



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "mii-obsdef-pro-score-eq5d5l-profile",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint|2026.5.2"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-version",
    "valueString" : "2026.5.2"
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
      "code" : "euroqol-eq5d5l-profile",
      "display" : "EuroQol EQ-5D-5L Profile"
    }]
  },
  "permittedDataType" : ["string"],
  "multipleResultsAllowed" : false,
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "73041000052103",
      "display" : "EuroQoL five dimension five level questionnaire"
    }]
  }
}

```
