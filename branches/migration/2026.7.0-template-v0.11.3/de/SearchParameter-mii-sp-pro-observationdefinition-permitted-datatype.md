# mii-sp-pro-observationdefinition-permitted-datatype - MII IG PRO v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-sp-pro-observationdefinition-permitted-datatype**

## SearchParameter: mii-sp-pro-observationdefinition-permitted-datatype (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-permitted-datatype | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-05-24 | *Maschinenlesbarer Name*:MII_SP_PRO_ObservationDefinition_PermittedDataType |

 
SearchParameter for ObservationDefinition.permittedDataType to filter score definitions by data type (Quantity, string, etc.) 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-pro-observationdefinition-permitted-datatype",
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
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-permitted-datatype",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_SP_PRO_ObservationDefinition_PermittedDataType",
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
  "description" : "SearchParameter for ObservationDefinition.permittedDataType to filter score definitions by data type (Quantity, string, etc.)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "permitted-datatype",
  "base" : ["ObservationDefinition"],
  "type" : "token",
  "expression" : "ObservationDefinition.permittedDataType"
}

```
