# SSD-12 Score Observation Example - MII IG PRO v2026.6.0

## Beispiel Observation: SSD-12 Score Observation Example

-------

**German**

-------

Profile: [MII PR PRO Score Instance](StructureDefinition-mii-pr-pro-score-instance.md) version: 2026.6.0

**status**: Final

**category**: Survey

**code**: SSD-12 Total Score (0-48)

**subject**: [Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)](Patient-mii-exa-pro-patient.md)

**effective**: 2026-09-01

**value**: 24 {score} (Details: UCUM code{score} = '{score}')

**derivedFrom**: [Response to Questionnaire '->MII QST PRO SSD-12' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-mii-exa-pro-ssd-12-response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-pro-ssd-12-score",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance|2026.6.0"]
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
      "code" : "ssd-12-total",
      "display" : "SSD-12 Total Score (0-48)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-pro-patient"
  },
  "effectiveDateTime" : "2026-09-01",
  "valueQuantity" : {
    "value" : 24,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-pro-ssd-12-response"
  }]
}

```
