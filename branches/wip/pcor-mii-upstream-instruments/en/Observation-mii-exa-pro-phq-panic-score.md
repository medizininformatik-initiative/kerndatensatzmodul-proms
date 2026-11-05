# PHQ-D Panikblock Score Observation Example - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PHQ-D Panikblock Score Observation Example**

## Example Observation: PHQ-D Panikblock Score Observation Example

-------

**English**

-------

Profile: [MII PR PRO Score Instance](StructureDefinition-mii-pr-pro-score-instance.md) version: 2027.0.0-rc.1

**status**: Final

**category**: Survey

**code**: PHQ-D Panikblock Yes-Count (0-4, screening items 3a-3d)

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2026-11-05

**value**: 3 {score} (Details: UCUM code{score} = '{score}')

**derivedFrom**: [Response to Questionnaire '->MII QST PRO PHQ-D Panikblock' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-mii-exa-pro-phq-panic-response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-phq-panic-score",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance|2027.0.0-rc.1"]
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
      "code" : "phq-panic-count",
      "display" : "PHQ-D Panikblock Yes-Count (0-4, screening items 3a-3d)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-pro-patient"
  },
  "effectiveDateTime" : "2026-11-05",
  "valueQuantity" : {
    "value" : 3,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-pro-phq-panic-response"
  }]
}

```
