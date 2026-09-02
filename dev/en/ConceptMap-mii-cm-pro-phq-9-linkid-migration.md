# MII CM PRO PHQ-9 linkId Migration (2026.4.x → 2026.5.0) - MII IG PRO v2026.6.0

## ConceptMap: MII CM PRO PHQ-9 linkId Migration (2026.4.x → 2026.5.0) 

 
Maps PHQ-9 item linkIds from the pre-2026.5.0 scheme (phq-phq9-q01…q10) to the PHQ-D block namespace (phq-phq2a…i and phq-phq9-difficulty) introduced in 2026.5.0. Apply to existing PHQ-9 QuestionnaireResponses so their item.linkId values match the current Questionnaire. The calculated items phq-phq9-score-total and phq-phq9-promis-tscore were not renamed. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-pro-phq-9-linkid-migration",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ConceptMap/mii-cm-pro-phq-9-linkid-migration",
  "version" : "2026.6.0",
  "title" : "MII CM PRO PHQ-9 linkId Migration (2026.4.x → 2026.5.0)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T06:41:53+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    },
    {
      "system" : "email",
      "value" : "office@medizininformatik-initiative.de"
    }]
  }],
  "description" : "Maps PHQ-9 item linkIds from the pre-2026.5.0 scheme (phq-phq9-q01…q10) to the PHQ-D block namespace (phq-phq2a…i and phq-phq9-difficulty) introduced in 2026.5.0. Apply to existing PHQ-9 QuestionnaireResponses so their item.linkId values match the current Questionnaire. The calculated items phq-phq9-score-total and phq-phq9-promis-tscore were not renamed.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "sourceCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9",
  "targetCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9",
  "group" : [{
    "element" : [{
      "code" : "phq-phq9-q01",
      "target" : [{
        "code" : "phq-phq2a",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "phq-phq9-q02",
      "target" : [{
        "code" : "phq-phq2b",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "phq-phq9-q03",
      "target" : [{
        "code" : "phq-phq2c",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "phq-phq9-q04",
      "target" : [{
        "code" : "phq-phq2d",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "phq-phq9-q05",
      "target" : [{
        "code" : "phq-phq2e",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "phq-phq9-q06",
      "target" : [{
        "code" : "phq-phq2f",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "phq-phq9-q07",
      "target" : [{
        "code" : "phq-phq2g",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "phq-phq9-q08",
      "target" : [{
        "code" : "phq-phq2h",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "phq-phq9-q09",
      "target" : [{
        "code" : "phq-phq2i",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "phq-phq9-q10",
      "target" : [{
        "code" : "phq-phq9-difficulty",
        "equivalence" : "equal"
      }]
    }]
  }]
}

```
