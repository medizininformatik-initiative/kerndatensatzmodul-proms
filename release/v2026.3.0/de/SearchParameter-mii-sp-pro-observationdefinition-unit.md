# mii-sp-pro-observationdefinition-unit - MII IG PRO v2026.3.0

## SearchParameter: mii-sp-pro-observationdefinition-unit (Experimentell) 

 
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
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-observationdefinition-unit",
  "version" : "2026.3.0",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "code" : "unit",
  "base" : ["ObservationDefinition"],
  "type" : "token",
  "expression" : "ObservationDefinition.quantitativeDetails.unit"
}

```
