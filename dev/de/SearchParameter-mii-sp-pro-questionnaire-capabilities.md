# mii-sp-pro-questionnaire-capabilities - MII IG PRO v2026.7.0

## SearchParameter: mii-sp-pro-questionnaire-capabilities (Experimentell) 

 
SearchParameter for Questionnaire.extension[capabilities] to filter questionnaires by capability flags (displayable, collectable, calculatable, extractable, populatable, domainAligned) 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-pro-questionnaire-capabilities",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/SearchParameter/mii-sp-pro-questionnaire-capabilities",
  "version" : "2026.7.0",
  "name" : "MII_SP_PRO_Questionnaire_Capabilities",
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
  "description" : "SearchParameter for Questionnaire.extension[capabilities] to filter questionnaires by capability flags (displayable, collectable, calculatable, extractable, populatable, domainAligned)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "code" : "capabilities",
  "base" : ["Questionnaire"],
  "type" : "token",
  "expression" : "Questionnaire.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities').extension.where(url='displayable' or url='collectable' or url='calculatable' or url='extractable' or url='populatable' or url='domainAligned').value"
}

```
