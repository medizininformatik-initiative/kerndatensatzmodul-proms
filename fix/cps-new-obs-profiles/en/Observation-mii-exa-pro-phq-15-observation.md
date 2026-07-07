# PHQ-15 Score Observation Example - MII IG PRO v2026.5.0

## Example Observation: PHQ-15 Score Observation Example

-------

**English**

-------

Profile: [MII PR PRO Observation PHQ-15](StructureDefinition-mii-pr-pro-observation-phq-15.md) version: 2026.5.0

**status**: Final

**code**: Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2024-03-15 10:00:00+0000

**value**: 15 {score} (Details: UCUM code{score} = '{score}')

**derivedFrom**: [Response to Questionnaire '->MII QST PRO PHQ-15' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-mii-exa-pro-phq-15-response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-phq-15-observation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-15|2026.5.0"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "70273-8",
      "display" : "Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-pro-patient"
  },
  "effectiveDateTime" : "2024-03-15T10:00:00Z",
  "valueQuantity" : {
    "value" : 15,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-pro-phq-15-response"
  }]
}

```
