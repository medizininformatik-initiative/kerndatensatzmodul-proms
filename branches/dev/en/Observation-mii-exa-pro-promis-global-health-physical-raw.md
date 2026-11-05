# PROMIS Global Physical Health Raw Score Example - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PROMIS Global Physical Health Raw Score Example**

## Example Observation: PROMIS Global Physical Health Raw Score Example

-------

**English**

-------

Profile: [MII PR PRO Score Instance](StructureDefinition-mii-pr-pro-score-instance.md) version: 2027.0.0-ballot.1

**status**: Final

**category**: Survey

**code**: PROMIS-10 Global Physical Health score

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2026-11-05

**value**: 14 {score} (Details: UCUM code{score} = '{score}')

**derivedFrom**: [Response to Questionnaire '->MII QST PRO PROMIS Global Health v1.2' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-mii-exa-pro-promis-global-health-response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-promis-global-health-physical-raw",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance|2027.0.0-ballot.1"]
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
      "code" : "71972-4",
      "display" : "PROMIS-10 Global Physical Health score"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "promis-global-health-physical-raw",
      "display" : "PROMIS Global Health - Global Physical Health Raw Score (4-20)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-pro-patient"
  },
  "effectiveDateTime" : "2026-11-05",
  "valueQuantity" : {
    "value" : 14,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-pro-promis-global-health-response"
  }]
}

```
