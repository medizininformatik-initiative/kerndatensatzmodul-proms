# MII QST PRO PHQ-15 - MII IG PRO v2026.5.2-rc.1

## Questionnaire: MII QST PRO PHQ-15 (Experimentell) 

 
Patient Health Questionnaire-15 (PHQ-15) — somatic symptom severity (PHQ-D German validated) 

*  [Baumansicht](#tabs-tree) 
*  [Beispielanzeige](#tabs-sample) 
*  [Formularlogik](#tabs-logic) 

### Diesen Fragebogen testen

### Antworten zu diesem Fragebogen

* [null](QuestionnaireResponse-mii-exa-pro-phq-15-response.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qst-pro-phq-15",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2026.5.2-rc.1"]
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
      "name" : "phq15Sum",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^phq-phq(1[a-m]|2[cd])$')).answer.value.ordinal().sum()"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-15",
  "version" : "2026.5.2-rc.1",
  "title" : "MII QST PRO PHQ-15",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-27T20:34:21+00:00",
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
  "description" : "Patient Health Questionnaire-15 (PHQ-15) — somatic symptom severity (PHQ-D German validated)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "copyright" : "Patient Health Questionnaire (PHQ/PHQ-15) © Pfizer Inc. Freely available — no permission required for reproduction, translation, display, or use (public domain). German version: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002). Lizenz-Status: frei verfügbar.",
  "code" : [{
    "system" : "http://loinc.org",
    "code" : "69728-4",
    "display" : "Patient Health Questionnaire 15 item (PHQ-15) [Reported]"
  },
  {
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "phq-phq15",
    "display" : "PHQ-15 Questionnaire"
  }],
  "item" : [{
    "linkId" : "PHQ-15.Description",
    "text" : "During the past 4 weeks, how much have you been bothered by any of the following problems?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Wie stark fühlten Sie sich im Verlauf der letzten 4 Wochen durch die folgenden Beschwerden beeinträchtigt?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "display"
  },
  {
    "linkId" : "phq-phq1a",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69671-6"
    }],
    "prefix" : "1",
    "text" : "Stomach pain",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Bauchschmerzen"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "linkId" : "phq-phq1b",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69672-4"
    }],
    "prefix" : "2",
    "text" : "Back pain",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Rückenschmerzen"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "linkId" : "phq-phq1c",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69673-2"
    }],
    "prefix" : "3",
    "text" : "Pain in your arms, legs, or joints (knees, hips, etc.)",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Schmerzen in Armen, Beinen oder Gelenken (Knie, Hüften, usw.)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "linkId" : "phq-phq1d",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69674-0"
    }],
    "prefix" : "4",
    "text" : "Menstrual cramps or other problems with your periods",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Menstruationsschmerzen oder andere Probleme mit der Menstruation"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "linkId" : "phq-phq1e",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69717-7"
    }],
    "prefix" : "5",
    "text" : "Pain or problems during sexual intercourse",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Schmerzen oder Probleme beim Geschlechtsverkehr"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "linkId" : "phq-phq1f",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69675-7"
    }],
    "prefix" : "6",
    "text" : "Headaches",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Kopfschmerzen"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "linkId" : "phq-phq1g",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69676-5"
    }],
    "prefix" : "7",
    "text" : "Chest pain",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Schmerzen im Brustbereich"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "linkId" : "phq-phq1h",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69677-3"
    }],
    "prefix" : "8",
    "text" : "Dizziness",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Schwindel"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "linkId" : "phq-phq1i",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69678-1"
    }],
    "prefix" : "9",
    "text" : "Fainting spells",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Ohnmachtsanfälle"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "linkId" : "phq-phq1j",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69679-9"
    }],
    "prefix" : "10",
    "text" : "Feeling your heart pound or race",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Herzklopfen oder Herzrasen"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "linkId" : "phq-phq1k",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69680-7"
    }],
    "prefix" : "11",
    "text" : "Shortness of breath",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Kurzatmigkeit"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "linkId" : "phq-phq1l",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69681-5"
    }],
    "prefix" : "12",
    "text" : "Constipation, loose bowels, or diarrhea",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Verstopfung, nervöser Darm oder Durchfall"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "linkId" : "phq-phq1m",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69682-3"
    }],
    "prefix" : "13",
    "text" : "Nausea, gas, or indigestion",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Übelkeit, Blähungen oder Verdauungsbeschwerden"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "linkId" : "phq-phq2d",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69731-8"
    }],
    "prefix" : "14",
    "text" : "Feeling tired or having low energy",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Müdigkeit oder Gefühl, keine Energie zu haben"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "linkId" : "phq-phq2c",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "69732-6"
    }],
    "prefix" : "15",
    "text" : "Trouble sleeping",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Schwierigkeiten ein- oder durchzuschlafen oder vermehrter Schlaf"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "name" : "Scoreberechnung",
        "language" : "text/fhirpath",
        "expression" : "%phq15Sum"
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
    "linkId" : "phq-phq15-score-total",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "70273-8",
      "display" : "Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]"
    }],
    "prefix" : "Summenwert",
    "text" : "PHQ-15 Total Score (0–30)",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "PHQ-15 Summenwert (0–30)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "decimal",
    "readOnly" : true
  }]
}

```
