# WHODAS 2.0 12-Item Simple Sum Score Observation - MII IG PRO v2026.5.2

## Beispiel Observation: WHODAS 2.0 12-Item Simple Sum Score Observation

-------

**German**

-------

Profile: [MII PR PRO Observation WHODAS 2.0 12-Item](StructureDefinition-mii-pr-pro-observation-whodas12.md) version: 2026.5.2

**status**: Final

**category**: Survey

**code**: WHODAS (World Health Organization Disability Assessment Schedule) 2.0 score

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2026-02-01

**value**: 24 {score} (Details: UCUM code{score} = '{score}')

**derivedFrom**: [Response to Questionnaire '->MII QST PRO WHODAS 2.0 12-Item' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-mii-exa-pro-whodas12-response-01.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-whodas12-score-simple-sum",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-whodas12|2026.5.2"]
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
      "system" : "http://snomed.info/sct",
      "code" : "715823002",
      "display" : "WHODAS (World Health Organization Disability Assessment Schedule) 2.0 score"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "whodas12-simple-sum",
      "display" : "WHODAS 2.0 12-Item Simple Sum Score (0-48)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-pro-patient"
  },
  "effectiveDateTime" : "2026-02-01",
  "valueQuantity" : {
    "value" : 24,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-pro-whodas12-response-01"
  }]
}

```
