# MII QST PRO WHODAS 2.0 12-Item - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII QST PRO WHODAS 2.0 12-Item**

## Questionnaire: MII QST PRO WHODAS 2.0 12-Item (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12 | *Version*:2026.7.0 |
| Active as of 2026-09-05 | *Computable Name*: |
| **Copyright/Legal**: WHODAS 2.0 © World Health Organization 2010 (Measuring Health and Disability: Manual for WHODAS 2.0, ISBN 9789241547598). WHO permits clinicians to reproduce WHODAS 2.0 for use with their own patients free of charge. Any other use — including reproduction in an electronic data capture system — requires a licence agreement (free of charge for non-commercial use) via the WHO Classifications licensing process; translations require WHO permission. The German item wording follows the validated PCOR-MII Item Level Dictionary. Only the MII-authored FHIR content (profiles, codes, scoring) is licensed CC0; the WHODAS 2.0 item text remains © World Health Organization. | |

 
WHO Disability Assessment Schedule 2.0, 12-item self-administered version (WHODAS-12). English primary with German translations (validated PCOR-MII wording). WHODAS 2.0 © WHO 2010 — see copyright for licensing conditions (a WHO licence is required for electronic/data-capture use). 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

* [Complete WHODAS-12 QuestionnaireResponse example. All 12 items answered 'Moderate' (ordinal 2); simple sum = 24.](QuestionnaireResponse-mii-exa-pro-whodas12-response-01.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qst-pro-whodas-whodas12",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2026.7.0"]
  },
  "language" : "en",
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
      "valueBoolean" : true
    },
    {
      "url" : "extractable",
      "valueBoolean" : true
    },
    {
      "url" : "domainAligned",
      "valueBoolean" : true
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/variable",
    "valueExpression" : {
      "name" : "simpleSum",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^whodas-whodas12-q(0[1-9]|1[0-2])$')).answer.value.ordinal().sum()"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12",
  "version" : "2026.7.0",
  "title" : "MII QST PRO WHODAS 2.0 12-Item",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-05T06:23:19+00:00",
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
  "description" : "WHO Disability Assessment Schedule 2.0, 12-item self-administered version (WHODAS-12). English primary with German translations (validated PCOR-MII wording). WHODAS 2.0 © WHO 2010 — see copyright for licensing conditions (a WHO licence is required for electronic/data-capture use).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "copyright" : "WHODAS 2.0 © World Health Organization 2010 (Measuring Health and Disability: Manual for WHODAS 2.0, ISBN 9789241547598). WHO permits clinicians to reproduce WHODAS 2.0 for use with their own patients free of charge. Any other use — including reproduction in an electronic data capture system — requires a licence agreement (free of charge for non-commercial use) via the WHO Classifications licensing process; translations require WHO permission. The German item wording follows the validated PCOR-MII Item Level Dictionary. Only the MII-authored FHIR content (profiles, codes, scoring) is licensed CC0; the WHODAS 2.0 item text remains © World Health Organization.",
  "code" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "whodas-whodas12",
    "display" : "WHODAS 2.0 12-Item (WHO Disability Assessment Schedule 2.0, self-administered)"
  }],
  "item" : [{
    "linkId" : "WHODAS12.Description",
    "text" : "In the past 30 days, how much difficulty did you have in:",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Wie viele Schwierigkeiten hatten Sie in den letzten 30 Tagen:"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "display"
  },
  {
    "linkId" : "whodas-whodas12-q01",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12",
      "code" : "whodas12-q01"
    }],
    "prefix" : "1",
    "text" : "Standing for long periods such as 30 minutes?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "längere Zeit (ca. 30 min) zu stehen?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-whodas-12-answer-list"
  },
  {
    "linkId" : "whodas-whodas12-q02",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12",
      "code" : "whodas12-q02"
    }],
    "prefix" : "2",
    "text" : "Taking care of your household responsibilities?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Ihren Haushaltspflichten nachzukommen?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-whodas-12-answer-list"
  },
  {
    "linkId" : "whodas-whodas12-q03",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12",
      "code" : "whodas12-q03"
    }],
    "prefix" : "3",
    "text" : "Learning a new task, for example, learning how to get to a new place?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Neue Aufgaben zu lernen (z.B. erlernen an einen neuen Ort zu gelangen, den sie nicht kannten?)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-whodas-12-answer-list"
  },
  {
    "linkId" : "whodas-whodas12-q04",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12",
      "code" : "whodas12-q04"
    }],
    "prefix" : "4",
    "text" : "Joining in community activities (for example, festivities, religious or other activities) in the same way as anyone else can?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Wie viele Schwierigkeiten hatten Sie, an gesellschaftlichen Aktivitäten (wie z.B. Festlichkeiten, religiöse oder andere Aktivitäten) in der gleichen Art und Weise teilzunehmen, wie jeder andere?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-whodas-12-answer-list"
  },
  {
    "linkId" : "whodas-whodas12-q05",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12",
      "code" : "whodas12-q05"
    }],
    "prefix" : "5",
    "text" : "How much have you been emotionally affected by your health problems?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Wie sehr wurden Sie durch Ihren gesundheitlichen Zustand emotional belastet?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-whodas-12-answer-list"
  },
  {
    "linkId" : "whodas-whodas12-q06",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12",
      "code" : "whodas12-q06"
    }],
    "prefix" : "6",
    "text" : "Concentrating on doing something for ten minutes?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Sich auf etwas für 10 Minuten zu konzentrieren?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-whodas-12-answer-list"
  },
  {
    "linkId" : "whodas-whodas12-q07",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12",
      "code" : "whodas12-q07"
    }],
    "prefix" : "7",
    "text" : "Walking a long distance such as a kilometre?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Eine längere Strecke (ca. einen Kilometer) zu Fuß zu gehen?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-whodas-12-answer-list"
  },
  {
    "linkId" : "whodas-whodas12-q08",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12",
      "code" : "whodas12-q08"
    }],
    "prefix" : "8",
    "text" : "Washing your whole body?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Ihren gesamten Körper zu waschen?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-whodas-12-answer-list"
  },
  {
    "linkId" : "whodas-whodas12-q09",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12",
      "code" : "whodas12-q09"
    }],
    "prefix" : "9",
    "text" : "Getting dressed?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "sich anzuziehen?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-whodas-12-answer-list"
  },
  {
    "linkId" : "whodas-whodas12-q10",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12",
      "code" : "whodas12-q10"
    }],
    "prefix" : "10",
    "text" : "Dealing with people you do not know?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Im Umgang mit anderen Personen, die Sie nicht kennen?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-whodas-12-answer-list"
  },
  {
    "linkId" : "whodas-whodas12-q11",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12",
      "code" : "whodas12-q11"
    }],
    "prefix" : "11",
    "text" : "Maintaining a friendship?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Eine Freundschaft aufrechtzuerhalten?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-whodas-12-answer-list"
  },
  {
    "linkId" : "whodas-whodas12-q12",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12",
      "code" : "whodas12-q12"
    }],
    "prefix" : "12",
    "text" : "Your day-to-day work/school?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Bei der Bewältigung des Arbeits-/Schulalltags?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-whodas-12-answer-list"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "name" : "whodas12SimpleSum",
        "language" : "text/fhirpath",
        "expression" : "%simpleSum"
      }
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract",
      "valueBoolean" : true
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
      "valueCoding" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      }
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observation-extract-category",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      }
    }],
    "linkId" : "whodas-whodas12-score-simple-sum",
    "prefix" : "Sum score",
    "text" : "WHODAS 2.0 12-Item simple sum score (0-48)",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "WHODAS 2.0 12-Item Summenwert (Simple Sum, 0-48)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "decimal",
    "readOnly" : true
  }]
}

```
