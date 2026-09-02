# MII PR PRO QuestionnaireResponse - MII IG PRO v2026.6.0

## Resource Profile: MII PR PRO QuestionnaireResponse 

 
MII PR PRO QuestionnaireResponse, based on the FHIR Structure Data Capture Specification 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/mii-exa-pro-bdi-bdi2](QuestionnaireResponse-mii-exa-pro-bdi-bdi2.md), [QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01](QuestionnaireResponse-mii-exa-pro-dass-dass21-response-01.md), [QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response](QuestionnaireResponse-mii-exa-pro-eortc-qlq-c30-response.md), [QuestionnaireResponse/mii-exa-pro-euronet-soma-response](QuestionnaireResponse-mii-exa-pro-euronet-soma-response.md)... Show 15 more, [QuestionnaireResponse/mii-exa-pro-euroqol-eq5d5l-coded-response](QuestionnaireResponse-mii-exa-pro-euroqol-eq5d5l-coded-response.md), [QuestionnaireResponse/mii-exa-pro-euroqol-eq5d5l-response](QuestionnaireResponse-mii-exa-pro-euroqol-eq5d5l-response.md), [QuestionnaireResponse/mii-exa-pro-isr-z-response](QuestionnaireResponse-mii-exa-pro-isr-z-response.md), [QuestionnaireResponse/mii-exa-pro-midos2-response-01](QuestionnaireResponse-mii-exa-pro-midos2-response-01.md), [QuestionnaireResponse/mii-exa-pro-pc-ptsd-response](QuestionnaireResponse-mii-exa-pro-pc-ptsd-response.md), [QuestionnaireResponse/mii-exa-pro-phq-15-response](QuestionnaireResponse-mii-exa-pro-phq-15-response.md), [QuestionnaireResponse/mii-exa-pro-phq-9-response](QuestionnaireResponse-mii-exa-pro-phq-9-response.md), [QuestionnaireResponse/mii-exa-pro-pro-ctcae-onkologisches-basisscreening-response-01](QuestionnaireResponse-mii-exa-pro-pro-ctcae-onkologisches-basisscreening-response-01.md), [QuestionnaireResponse/mii-exa-pro-promis-29-de-response](QuestionnaireResponse-mii-exa-pro-promis-29-de-response.md), [QuestionnaireResponse/mii-exa-pro-promis-29-response](QuestionnaireResponse-mii-exa-pro-promis-29-response.md), [QuestionnaireResponse/mii-exa-pro-promis-depression-sf4a-response](QuestionnaireResponse-mii-exa-pro-promis-depression-sf4a-response.md), [QuestionnaireResponse/mii-exa-pro-scoff-response](QuestionnaireResponse-mii-exa-pro-scoff-response.md), [QuestionnaireResponse/mii-exa-pro-ssd-12-response](QuestionnaireResponse-mii-exa-pro-ssd-12-response.md), [QuestionnaireResponse/mii-exa-pro-whodas12-response-01](QuestionnaireResponse-mii-exa-pro-whodas12-response-01.md) and [QuestionnaireResponse/mii-exa-pro-wi-7-response](QuestionnaireResponse-mii-exa-pro-wi-7-response.md)
* CapabilityStatements using this Profile: [MII CPS PRO CapabilityStatement](CapabilityStatement-mii-cps-pro-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.pros|current/StructureDefinition/StructureDefinition-mii-pr-pro-questionnaire-response.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-pro-questionnaire-response.csv), [Excel](../StructureDefinition-mii-pr-pro-questionnaire-response.xlsx), [Schematron](../StructureDefinition-mii-pr-pro-questionnaire-response.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-pro-questionnaire-response",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response",
  "version" : "2026.6.0",
  "name" : "MII_PR_PRO_QuestionnaireResponse",
  "title" : "MII PR PRO QuestionnaireResponse",
  "status" : "active",
  "date" : "2026-09-02T06:36:46+00:00",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
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
      "mustSupport" : true
    }]
  }
}

```
