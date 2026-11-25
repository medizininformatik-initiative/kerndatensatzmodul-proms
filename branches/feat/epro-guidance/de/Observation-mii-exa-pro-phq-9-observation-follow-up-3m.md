# PHQ-9 Observation Example – 3-Month Follow-up - MII IG PRO v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PHQ-9 Observation Example – 3-Month Follow-up**

## Beispiel Observation: PHQ-9 Observation Example – 3-Month Follow-up

-------

**German**

-------

Profile: [MII PR PRO Observation PHQ-9](StructureDefinition-mii-pr-pro-observation-phq-9.md) version: 2027.0.0-ballot.2

> **MII EX PRO Collection Context**
* triggerType: Follow-up
* triggerDate: 2023-10-20

**status**: Final

**code**: Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2024-01-22 09:30:00+0000

**value**: 8 {score} (Details: UCUM code{score} = '{score}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-phq-9-observation-follow-up-3m",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9|2027.0.0-ballot.2"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "triggerType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-trigger-event-type",
          "code" : "follow-up",
          "display" : "Follow-up"
        }]
      }
    },
    {
      "url" : "triggerDate",
      "valueDate" : "2023-10-20"
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
  "effectiveDateTime" : "2024-01-22T09:30:00Z",
  "valueQuantity" : {
    "value" : 8,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  }
}

```
