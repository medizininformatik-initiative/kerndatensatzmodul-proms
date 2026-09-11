# mii-sp-pro-observationdefinition-unit - MII IG PRO v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-sp-pro-observationdefinition-unit**

## SearchParameter: mii-sp-pro-observationdefinition-unit (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-unit | *Version*:2027.0.0-ballot |
| Active Stand: 2025-05-24 | *Maschinenlesbarer Name*:MII_SP_PRO_ObservationDefinition_QuantitativeDetails_Unit |

 
SearchParameter for ObservationDefinition.quantitativeDetails.unit to filter score definitions by measurement unit 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-pro-observationdefinition-unit",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-unit",
  "version" : "2027.0.0-ballot",
  "name" : "MII_SP_PRO_ObservationDefinition_QuantitativeDetails_Unit",
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
  "description" : "SearchParameter for ObservationDefinition.quantitativeDetails.unit to filter score definitions by measurement unit",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "unit",
  "base" : ["ObservationDefinition"],
  "type" : "token",
  "expression" : "ObservationDefinition.quantitativeDetails.unit"
}

```
