# mii-sp-pro-observationdefinition-preferred-report-name - MII IG PRO v2027.0.0-ballot.rc5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-sp-pro-observationdefinition-preferred-report-name**

## SearchParameter: mii-sp-pro-observationdefinition-preferred-report-name (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-preferred-report-name | *Version*:2027.0.0-ballot.rc5 |
| Active as of 2025-05-24 | *Computable Name*:MII_SP_PRO_ObservationDefinition_PreferredReportName |

 
SearchParameter for ObservationDefinition.preferredReportName to search score definitions by display name 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-pro-observationdefinition-preferred-report-name",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-pr-meta-searchparameter"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "natural",
      "display" : "Natural"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-preferred-report-name",
  "version" : "2027.0.0-ballot.rc5",
  "name" : "MII_SP_PRO_ObservationDefinition_PreferredReportName",
  "status" : "active",
  "experimental" : true,
  "date" : "2025-05-24",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    },
    {
      "system" : "email",
      "value" : "office@medizininformatik-initiative.de"
    }]
  }],
  "description" : "SearchParameter for ObservationDefinition.preferredReportName to search score definitions by display name",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "preferred-report-name",
  "base" : ["ObservationDefinition"],
  "type" : "string",
  "expression" : "ObservationDefinition.preferredReportName"
}

```
