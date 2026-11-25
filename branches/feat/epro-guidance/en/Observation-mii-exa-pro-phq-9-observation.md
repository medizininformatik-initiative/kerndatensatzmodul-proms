# PHQ-9 Observation Example - MII IG PRO v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PHQ-9 Observation Example**

## Example Observation: PHQ-9 Observation Example

-------

**English**

-------

Profile: [MII PR PRO Observation PHQ-9](StructureDefinition-mii-pr-pro-observation-phq-9.md) version: 2027.0.0-ballot.2

> **MII EX PRO Collection Context**
* triggerType: Baseline / admission
* triggerDate: 2023-10-01

**status**: Final

**code**: Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2023-10-01 12:00:00+0000

**value**: 27 {score} (Details: UCUM code{score} = '{score}')

**derivedFrom**: [Response to Questionnaire '->MII QST PRO PHQ-9' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-mii-exa-pro-phq-9-response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-phq-9-observation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9|2027.0.0-ballot.2"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "triggerType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-trigger-event-type",
          "code" : "baseline",
          "display" : "Baseline / admission"
        }]
      }
    },
    {
      "url" : "triggerDate",
      "valueDate" : "2023-10-01"
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-collection-context"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "44261-6",
      "display" : "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-pro-patient"
  },
  "effectiveDateTime" : "2023-10-01T12:00:00Z",
  "valueQuantity" : {
    "value" : 27,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-pro-phq-9-response"
  }]
}

```
