# MII QST PRO PROMIS-29 Minimal - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII QST PRO PROMIS-29 Minimal**

## Questionnaire: MII QST PRO PROMIS-29 Minimal (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29-minimal | *Version*:2026.7.0 |
| Active as of 2026-09-03 | *Computable Name*: |

 
PROMIS-29 Profile v2.1 - Minimal variant for data collection without calculated expressions 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

There are currently no QuestionnaireResponse instances for this Questionnaire defined in this IG.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qst-pro-promis-29-minimal",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2026.7.0"]
  },
  "language" : "de",
  "extension" : [{
    "extension" : [{
      "url" : "displayable",
      "valueBoolean" : true
    },
    {
      "url" : "collectable",
      "valueBoolean" : true
    },
    {
      "url" : "calculatable",
      "valueBoolean" : false
    },
    {
      "url" : "extractable",
      "valueBoolean" : false
    },
    {
      "url" : "populatable",
      "valueBoolean" : false
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29-minimal",
  "version" : "2026.7.0",
  "title" : "MII QST PRO PROMIS-29 Minimal",
  "derivedFrom" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29"],
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-03T19:45:41+00:00",
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
  "description" : "PROMIS-29 Profile v2.1 - Minimal variant for data collection without calculated expressions",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "code" : [{
    "system" : "http://loinc.org",
    "code" : "62337-1",
    "display" : "PROMIS item bank - 29 profile"
  },
  {
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "promis-promis29",
    "display" : "PROMIS-29 Questionnaire"
  }],
  "item" : [{
    "linkId" : "PROMIS-29",
    "text" : "PROMIS-29 Profile v2.1",
    "type" : "group",
    "item" : [{
      "linkId" : "PROMIS-29.Instructions",
      "text" : "Please respond to each question or statement by marking one box per row. In the past 7 days...",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Bitte beantworten Sie jede Frage oder Aussage, indem Sie ein Kästchen pro Zeile markieren. In den letzten 7 Tagen..."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "display"
    },
    {
      "linkId" : "PROMIS-29.PhysicalFunction",
      "text" : "Physical Function",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Körperliche Funktion"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "group",
      "item" : [{
        "linkId" : "promis-pfa11",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "61597-1"
        }],
        "text" : "Are you able to do chores such as vacuuming or yard work?",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Sind Sie in der Lage, Hausarbeiten wie Staubsaugen oder Gartenarbeit zu erledigen?"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale"
      },
      {
        "linkId" : "promis-pfa21",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "61598-9"
        }],
        "text" : "Are you able to go up and down stairs at a normal pace?",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Sind Sie in der Lage, in normalem Tempo Treppen hinauf- und hinunterzugehen?"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale"
      },
      {
        "linkId" : "promis-pfa23",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "61593-0"
        }],
        "text" : "Are you able to go for a walk of at least 15 minutes?",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Sind Sie in der Lage, mindestens 15 Minuten spazieren zu gehen?"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale"
      },
      {
        "linkId" : "promis-pfa53",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "61596-3"
        }],
        "text" : "Are you able to run errands and shop?",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Sind Sie in der Lage, Besorgungen zu machen und einzukaufen?"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale"
      }]
    },
    {
      "linkId" : "PROMIS-29.Anxiety",
      "text" : "Anxiety",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Angst"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "group",
      "item" : [{
        "linkId" : "promis-edanx01",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "61923-9",
          "display" : "I felt fearful in past 7 days [PROMIS]"
        }],
        "text" : "I felt fearful",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Ich fühlte mich ängstlich"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"
      },
      {
        "linkId" : "promis-edanx40",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "61941-1",
          "display" : "I found it hard to focus on anything other than my anxiety in past 7 days"
        }],
        "text" : "I found it hard to focus on anything other than my anxiety",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Ich fand es schwer, mich auf etwas anderes als meine Angst zu konzentrieren"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"
      },
      {
        "linkId" : "promis-edanx41",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "61942-9",
          "display" : "My worries overwhelmed me in past 7 days"
        }],
        "text" : "My worries overwhelmed me",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Meine Sorgen überwältigten mich"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"
      },
      {
        "linkId" : "promis-edanx53",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "61949-4",
          "display" : "I felt uneasy in past 7 days"
        }],
        "text" : "I felt uneasy",
        "_text" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Ich fühlte mich unruhig"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"
      }]
    }]
  }]
}

```
