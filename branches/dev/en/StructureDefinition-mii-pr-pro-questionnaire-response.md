# MII PR PRO QuestionnaireResponse - MII IG PRO v2027.0.0-ballot.rc4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR PRO QuestionnaireResponse**

## Resource Profile: MII PR PRO QuestionnaireResponse 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response | *Version*:2027.0.0-ballot.rc4 |
| Active as of 2026-09-10 | *Computable Name*:MII_PR_PRO_QuestionnaireResponse |

 
MII PR PRO QuestionnaireResponse, based on the FHIR Structure Data Capture Specification 

The abstract QuestionnaireResponse profile standardises the structure of completed questionnaires. It inherits from the [SDC QuestionnaireResponse](https://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaireresponse.html) profile and ensures that all PRO answers can be captured and processed consistently. Concrete implementations must extend this profile and add instrument-specific constraints.

**Core elements:**

* A reference to the corresponding Questionnaire
* A mandatory status (completed, in-progress, and so on)
* Structured items carrying the answers
* An authored timestamp for chronological documentation

**Example** — a concrete response inheriting from this abstract profile: [PHQ-9 response](QuestionnaireResponse-mii-exa-pro-phq-9-response.md).

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/mii-exa-pro-bdi-bdi2](QuestionnaireResponse-mii-exa-pro-bdi-bdi2.md), [QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01](QuestionnaireResponse-mii-exa-pro-dass-dass21-response-01.md), [QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response](QuestionnaireResponse-mii-exa-pro-eortc-qlq-c30-response.md), [QuestionnaireResponse/mii-exa-pro-euronet-soma-response](QuestionnaireResponse-mii-exa-pro-euronet-soma-response.md)... Show 16 more, [QuestionnaireResponse/mii-exa-pro-euroqol-eq5d5l-coded-response](QuestionnaireResponse-mii-exa-pro-euroqol-eq5d5l-coded-response.md), [QuestionnaireResponse/mii-exa-pro-euroqol-eq5d5l-response](QuestionnaireResponse-mii-exa-pro-euroqol-eq5d5l-response.md), [QuestionnaireResponse/mii-exa-pro-gad-7-response](QuestionnaireResponse-mii-exa-pro-gad-7-response.md), [QuestionnaireResponse/mii-exa-pro-isr-z-response](QuestionnaireResponse-mii-exa-pro-isr-z-response.md), [QuestionnaireResponse/mii-exa-pro-midos2-response-01](QuestionnaireResponse-mii-exa-pro-midos2-response-01.md), [QuestionnaireResponse/mii-exa-pro-pc-ptsd-response](QuestionnaireResponse-mii-exa-pro-pc-ptsd-response.md), [QuestionnaireResponse/mii-exa-pro-phq-15-response](QuestionnaireResponse-mii-exa-pro-phq-15-response.md), [QuestionnaireResponse/mii-exa-pro-phq-9-response](QuestionnaireResponse-mii-exa-pro-phq-9-response.md), [QuestionnaireResponse/mii-exa-pro-pro-ctcae-onkologisches-basisscreening-response-01](QuestionnaireResponse-mii-exa-pro-pro-ctcae-onkologisches-basisscreening-response-01.md), [QuestionnaireResponse/mii-exa-pro-promis-29-de-response](QuestionnaireResponse-mii-exa-pro-promis-29-de-response.md), [QuestionnaireResponse/mii-exa-pro-promis-29-response](QuestionnaireResponse-mii-exa-pro-promis-29-response.md), [QuestionnaireResponse/mii-exa-pro-promis-depression-sf4a-response](QuestionnaireResponse-mii-exa-pro-promis-depression-sf4a-response.md), [QuestionnaireResponse/mii-exa-pro-scoff-response](QuestionnaireResponse-mii-exa-pro-scoff-response.md), [QuestionnaireResponse/mii-exa-pro-ssd-12-response](QuestionnaireResponse-mii-exa-pro-ssd-12-response.md), [QuestionnaireResponse/mii-exa-pro-whodas12-response-01](QuestionnaireResponse-mii-exa-pro-whodas12-response-01.md) and [QuestionnaireResponse/mii-exa-pro-wi-7-response](QuestionnaireResponse-mii-exa-pro-wi-7-response.md)
* CapabilityStatements using this Profile: [MII CPS PRO CapabilityStatement](CapabilityStatement-mii-cps-pro-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.pros|current/StructureDefinition/StructureDefinition-mii-pr-pro-questionnaire-response.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-pro-questionnaire-response.csv), [Excel](../StructureDefinition-mii-pr-pro-questionnaire-response.xlsx), [Schematron](../StructureDefinition-mii-pr-pro-questionnaire-response.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-pro-questionnaire-response",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response",
  "version" : "2027.0.0-ballot.rc4",
  "name" : "MII_PR_PRO_QuestionnaireResponse",
  "title" : "MII PR PRO QuestionnaireResponse",
  "status" : "active",
  "date" : "2026-09-10T15:13:00+00:00",
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
  "description" : "MII PR PRO QuestionnaireResponse, based on the FHIR Structure Data Capture Specification",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse"
    },
    {
      "id" : "QuestionnaireResponse.language",
      "path" : "QuestionnaireResponse.language",
      "short" : "Sprache der Antwortinhalte",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item.text",
      "path" : "QuestionnaireResponse.item.text",
      "short" : "Wortlaut des Items, wie er der antwortenden Person präsentiert wurde"
    },
    {
      "id" : "QuestionnaireResponse.item.text.extension",
      "path" : "QuestionnaireResponse.item.text.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "QuestionnaireResponse.item.text.extension:translation",
      "path" : "QuestionnaireResponse.item.text.extension",
      "sliceName" : "translation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/translation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "QuestionnaireResponse.item.answer.value[x]:valueCoding",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "sliceName" : "valueCoding",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item.answer.value[x]:valueCoding.display",
      "path" : "QuestionnaireResponse.item.answer.value[x].display",
      "short" : "Wortlaut der gewählten Antwort",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item.answer.value[x]:valueCoding.display.extension",
      "path" : "QuestionnaireResponse.item.answer.value[x].display.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "QuestionnaireResponse.item.answer.value[x]:valueCoding.display.extension:translation",
      "path" : "QuestionnaireResponse.item.answer.value[x].display.extension",
      "sliceName" : "translation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/translation"]
      }],
      "mustSupport" : true
    }]
  }
}

```
