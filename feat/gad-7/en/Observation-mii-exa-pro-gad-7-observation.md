# GAD-7 Observation Example - MII IG PRO v2026.2.0

## Example Observation: GAD-7 Observation Example

-------

**English**

-------

Profile: [MII PR PRO Score Instance](StructureDefinition-mii-pr-pro-score-instance.md) version: 2026.2.0

**status**: Final

**code**: Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2024-03-15 10:30:00+0000

**value**: 13 {score} (Details: UCUM code{score} = '{score}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-gad-7-observation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance|2026.2.0"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "70274-6",
      "display" : "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-pro-patient"
  },
  "effectiveDateTime" : "2024-03-15T10:30:00Z",
  "valueQuantity" : {
    "value" : 13,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  }
}

```
