# mii-sp-pro-observationdefinition-interval-category - MII IG PRO v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-sp-pro-observationdefinition-interval-category**

## SearchParameter: mii-sp-pro-observationdefinition-interval-category (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-interval-category | *Version*:2027.0.0-ballot |
| Active as of 2025-05-24 | *Computable Name*:MII_SP_PRO_ObservationDefinition_QualifiedInterval_Category |

 
SearchParameter for ObservationDefinition.qualifiedInterval.category to filter by reference range category (reference, critical, absolute) 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-pro-observationdefinition-interval-category",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-interval-category",
  "version" : "2027.0.0-ballot",
  "name" : "MII_SP_PRO_ObservationDefinition_QualifiedInterval_Category",
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
  "description" : "SearchParameter for ObservationDefinition.qualifiedInterval.category to filter by reference range category (reference, critical, absolute)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "interval-category",
  "base" : ["ObservationDefinition"],
  "type" : "token",
  "expression" : "ObservationDefinition.qualifiedInterval.category"
}

```
