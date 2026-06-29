# EORTC QLQ-C30 Physical Functioning Score - MII IG PRO v2026.4.1

## Example Observation: EORTC QLQ-C30 Physical Functioning Score

-------

**English**

-------

Profile: [MII PR PRO Score Instance](StructureDefinition-mii-pr-pro-score-instance.md) version: 2026.4.1

**status**: Final

**category**: Survey

**code**: European Organisation for Research and Treatment of Cancer - Quality of Life questionnaire (assessment scale)

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2024-01-15 10:30:00+0000

**value**: 73.33 {score} (Details: UCUM code{score} = '{score}')

**method**: EORTC QLQ-C30 Version 3.0 Scoring Manual

**derivedFrom**: [Response to Questionnaire '->EORTC QLQ-C30 Quality of Life Questionnaire Version 3.0' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-mii-exa-pro-eortc-qlq-c30-response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-eortc-qlq-c30-observation-pf",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance|2026.4.1"]
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
      "code" : "273446001",
      "display" : "European Organisation for Research and Treatment of Cancer - Quality of Life questionnaire (assessment scale)"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "eortc-qlq-c30-pf",
      "display" : "EORTC QLQ-C30 Physical Functioning Score"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-pro-patient"
  },
  "effectiveDateTime" : "2024-01-15T10:30:00Z",
  "valueQuantity" : {
    "value" : 73.33,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "method" : {
    "text" : "EORTC QLQ-C30 Version 3.0 Scoring Manual"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"
  }]
}

```
