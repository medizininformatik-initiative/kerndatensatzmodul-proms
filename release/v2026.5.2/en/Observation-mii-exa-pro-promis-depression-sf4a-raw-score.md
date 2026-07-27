# MII EXA PRO PROMIS Depression SF 4a Raw Score - MII IG PRO v2026.5.2

## Example Observation: MII EXA PRO PROMIS Depression SF 4a Raw Score

-------

**English**

-------

Profile: [MII PR PRO PROMIS Depression SF 4a Raw Score](StructureDefinition-mii-pr-pro-promis-depression-sf4a-raw-score.md) version: 2026.5.2

**status**: Final

**category**: Survey

**code**: PROMIS short form - emotional distress - depression 4a - version 1.0 raw score

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2024-01-15 10:30:00+0000

**value**: 12 {score} (Details: UCUM code{score} = '{score}')

**derivedFrom**: [Response to Questionnaire '->MII QST PRO PROMIS Depression SF 4a (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-mii-exa-pro-promis-depression-sf4a-response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-promis-depression-sf4a-raw-score",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-depression-sf4a-raw-score|2026.5.2"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey",
      "display" : "Survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "77821-7",
      "display" : "PROMIS short form - emotional distress - depression 4a - version 1.0 raw score"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-pro-patient"
  },
  "effectiveDateTime" : "2024-01-15T10:30:00Z",
  "valueQuantity" : {
    "value" : 12,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-pro-promis-depression-sf4a-response"
  }]
}

```
