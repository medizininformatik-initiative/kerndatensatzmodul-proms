# EORTC QLQ-C30 Cognitive Functioning Score - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **EORTC QLQ-C30 Cognitive Functioning Score**

## Beispiel Observation: EORTC QLQ-C30 Cognitive Functioning Score

-------

**German**

-------

Profile: [MII PR PRO Score Instance](StructureDefinition-mii-pr-pro-score-instance.md) version: 2026.7.0

**status**: Final

**category**: Survey

**code**: EORTC QLQ-C30 Cognitive Functioning Score

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2024-01-15 10:30:00+0000

**value**: 100 {score} (Details: UCUM code{score} = '{score}')

**derivedFrom**: [Response to Questionnaire '->EORTC QLQ-C30 Quality of Life Questionnaire Version 3.0' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-mii-exa-pro-eortc-qlq-c30-response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-eortc-qlq-c30-observation-cf",
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
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "eortc-qlq-c30-cf",
      "display" : "EORTC QLQ-C30 Cognitive Functioning Score"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-pro-patient"
  },
  "effectiveDateTime" : "2024-01-15T10:30:00Z",
  "valueQuantity" : {
    "value" : 100,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"
  }]
}

```
