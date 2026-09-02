# MII EXA PRO PROMIS Depression SF 4a T-Score - MII IG PRO v2026.6.0

## Beispiel Observation: MII EXA PRO PROMIS Depression SF 4a T-Score

-------

**German**

-------

Profile: [MII PR PRO Depression Domain T-Score](StructureDefinition-mii-pr-pro-depression-t-score.md) version: 2026.6.0

**status**: Final

**category**: Survey

**code**: PROMIS emotional distress - depression - version 1.0 Tscore

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2024-01-15 10:30:00+0000

**value**: 62.2 {score} (Details: UCUM code{score} = '{score}')

**derivedFrom**: [Response to Questionnaire '->MII QST PRO PROMIS Depression SF 4a (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-mii-exa-pro-promis-depression-sf4a-response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-promis-depression-sf4a-tscore",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-depression-t-score|2026.6.0"]
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
      "code" : "77861-3",
      "display" : "PROMIS emotional distress - depression - version 1.0 Tscore"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-pro-patient"
  },
  "effectiveDateTime" : "2024-01-15T10:30:00Z",
  "valueQuantity" : {
    "value" : 62.2,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-pro-promis-depression-sf4a-response"
  }]
}

```
