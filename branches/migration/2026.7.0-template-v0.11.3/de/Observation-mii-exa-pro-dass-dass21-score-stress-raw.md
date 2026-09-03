# DASS-21 Stress Raw Score Observation - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **DASS-21 Stress Raw Score Observation**

## Beispiel Observation: DASS-21 Stress Raw Score Observation

-------

**German**

-------

Profile: [MII PR PRO Score Instance](StructureDefinition-mii-pr-pro-score-instance.md) version: 2026.7.0

**status**: Final

**category**: Survey

**code**: Depression anxiety stress scales stress score

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2026-02-01

**value**: 11 {score} (Details: UCUM code{score} = '{score}')

**derivedFrom**: [Response to Questionnaire '->MII QST PRO DASS-21' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-mii-exa-pro-dass-dass21-response-01.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-dass-dass21-score-stress-raw",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance|2026.7.0"]
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
      "code" : "416767005",
      "display" : "Depression anxiety stress scales stress score"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "dass21-stress-raw",
      "display" : "DASS-21 Stress Raw Score"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-pro-patient"
  },
  "effectiveDateTime" : "2026-02-01",
  "valueQuantity" : {
    "value" : 11,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"
  }]
}

```
