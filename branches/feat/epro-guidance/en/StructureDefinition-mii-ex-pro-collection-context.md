# MII EX PRO Collection Context - MII IG PRO v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX PRO Collection Context**

## Extension: MII EX PRO Collection Context 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-collection-context | *Version*:2027.0.0-ballot.2 |
| Draft as of 2026-11-25 | *Computable Name*:MII_EX_PRO_Collection_Context |

Collection context of a QuestionnaireResponse or score Observation: which point in the course of care or of a study triggered the collection (baseline, discharge, follow-up, pre-/post-intervention, on demand, screening …). Two modes, combinable: (a) routine: triggerType + triggerDate; (b) protocol: protocol + protocolPosition, with index date and target intervals in the study protocol (PlanDefinition) and ResearchSubject.period.start. Filled by the form filler or the ordering system from the launch context or from QuestionnaireResponse.basedOn, never by patient input. A score Observation carries the same value as the QuestionnaireResponse it is derived from. Not to be confused with the recall period reported inside an instrument ("over the last two weeks").

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR PRO QuestionnaireResponse](StructureDefinition-mii-pr-pro-questionnaire-response.md) and [MII PR PRO Score Instance](StructureDefinition-mii-pr-pro-score-instance.md)
* Examples for this Extension: [Bundle/mii-exa-pro-phq-9-bundle](Bundle-mii-exa-pro-phq-9-bundle.md), [Observation/mii-exa-pro-phq-9-observation-discharge](Observation-mii-exa-pro-phq-9-observation-discharge.md), [Observation/mii-exa-pro-phq-9-observation-follow-up-3m](Observation-mii-exa-pro-phq-9-observation-follow-up-3m.md), [Observation/mii-exa-pro-phq-9-observation](Observation-mii-exa-pro-phq-9-observation.md) and [QuestionnaireResponse/mii-exa-pro-phq-9-response](QuestionnaireResponse-mii-exa-pro-phq-9-response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.pros|current/StructureDefinition/StructureDefinition-mii-ex-pro-collection-context.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-pro-collection-context.csv), [Excel](../StructureDefinition-mii-ex-pro-collection-context.xlsx), [Schematron](../StructureDefinition-mii-ex-pro-collection-context.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-pro-collection-context",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-collection-context",
  "version" : "2027.0.0-ballot.2",
  "name" : "MII_EX_PRO_Collection_Context",
  "title" : "MII EX PRO Collection Context",
  "status" : "draft",
  "date" : "2026-11-25T11:32:53+00:00",
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
  "description" : "Collection context of a QuestionnaireResponse or score Observation: which point in the course of care or of a study triggered the collection (baseline, discharge, follow-up, pre-/post-intervention, on demand, screening …). Two modes, combinable: (a) routine: triggerType + triggerDate; (b) protocol: protocol + protocolPosition, with index date and target intervals in the study protocol (PlanDefinition) and ResearchSubject.period.start. Filled by the form filler or the ordering system from the launch context or from QuestionnaireResponse.basedOn, never by patient input. A score Observation carries the same value as the QuestionnaireResponse it is derived from. Not to be confused with the recall period reported inside an instrument (\"over the last two weeks\").",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "QuestionnaireResponse"
  },
  {
    "type" : "element",
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX PRO Collection Context",
      "definition" : "Collection context of a QuestionnaireResponse or score Observation: which point in the course of care or of a study triggered the collection (baseline, discharge, follow-up, pre-/post-intervention, on demand, screening …). Two modes, combinable: (a) routine: triggerType + triggerDate; (b) protocol: protocol + protocolPosition, with index date and target intervals in the study protocol (PlanDefinition) and ResearchSubject.period.start. Filled by the form filler or the ordering system from the launch context or from QuestionnaireResponse.basedOn, never by patient input. A score Observation carries the same value as the QuestionnaireResponse it is derived from. Not to be confused with the recall period reported inside an instrument (\"over the last two weeks\").",
      "constraint" : [{
        "key" : "mii-pro-cc-1",
        "severity" : "error",
        "human" : "At least one of trigger event type (routine mode) or protocol reference (protocol mode) must be present.",
        "expression" : "extension.where(url = 'triggerType').exists() or extension.where(url = 'protocol').exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-collection-context"
      }]
    },
    {
      "id" : "Extension.extension:triggerType",
      "path" : "Extension.extension",
      "sliceName" : "triggerType",
      "short" : "Trigger event type (baseline, discharge, follow-up, pre-/post-intervention, on demand, screening …)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:triggerType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:triggerType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "triggerType"
    },
    {
      "id" : "Extension.extension:triggerType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-trigger-event-type"
      }
    },
    {
      "id" : "Extension.extension:triggerDate",
      "path" : "Extension.extension",
      "sliceName" : "triggerDate",
      "short" : "Date of the triggering event (surgery, discharge …), not the completion date",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:triggerDate.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:triggerDate.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "triggerDate"
    },
    {
      "id" : "Extension.extension:triggerDate.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:protocol",
      "path" : "Extension.extension",
      "sliceName" : "protocol",
      "short" : "Study or care-pathway protocol (PlanDefinition) defining the time point",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:protocol.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:protocol.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "protocol"
    },
    {
      "id" : "Extension.extension:protocol.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "canonical",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/PlanDefinition"]
      }]
    },
    {
      "id" : "Extension.extension:protocolPosition",
      "path" : "Extension.extension",
      "sliceName" : "protocolPosition",
      "short" : "Position in the protocol, e.g. visit code (PlanDefinition.action.id or action.code)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:protocolPosition.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:protocolPosition.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "protocolPosition"
    },
    {
      "id" : "Extension.extension:protocolPosition.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-collection-context"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
