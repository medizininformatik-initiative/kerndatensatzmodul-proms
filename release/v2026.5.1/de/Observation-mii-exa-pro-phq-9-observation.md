# PHQ-9 Observation Example - MII IG PRO v2026.5.1

## Beispiel Observation: PHQ-9 Observation Example

-------

**German**

-------

Profile: [MII PR PRO Observation PHQ-9](StructureDefinition-mii-pr-pro-observation-phq-9.md) version: 2026.5.1

**status**: Final

**code**: Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2023-10-01 12:00:00+0000

**value**: 27 {score} (Details: UCUM code{score} = '{score}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-phq-9-observation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9|2026.5.1"]
  },
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
  }
}

```
