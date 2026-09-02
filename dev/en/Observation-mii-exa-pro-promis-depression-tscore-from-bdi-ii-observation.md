# PROMIS Depression T-Score, derived from BDI-II Observation Example - MII IG PRO v2026.7.0

## Example Observation: PROMIS Depression T-Score, derived from BDI-II Observation Example

-------

**English**

-------

Profile: [MII PR PRO Score Instance](StructureDefinition-mii-pr-pro-score-instance.md) version: 2026.7.0

**status**: Final

**code**: PROMIS emotional distress - depression - version 1.0 Tscore

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2023-10-01 12:00:00+0000

**value**: 63.2 {score} (Details: UCUM code{score} = '{score}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-promis-depression-tscore-from-bdi-ii-observation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance|2026.7.0"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "77861-3",
      "display" : "PROMIS emotional distress - depression - version 1.0 Tscore"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-pro-patient"
  },
  "effectiveDateTime" : "2023-10-01T12:00:00Z",
  "valueQuantity" : {
    "value" : 63.2,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  }
}

```
