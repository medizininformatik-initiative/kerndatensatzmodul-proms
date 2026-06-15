# MII QST PRO MIDOS2 - MII IG PRO v2026.4.1

## Questionnaire: MII QST PRO MIDOS2 (Experimental) 

 
MIDOS2 (Minimales Dokumentationssystem für Palliativpatienten, v2) — Symptom-Screening für die Palliativmedizin nach DGP. 11 Symptom-Items mit 4-stufiger DGP-Skala, ein Wohlbefinden-Item, ein offenes Item für sonstige Beschwerden. 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

* [MIDOS2 QuestionnaireResponse Beispiel — Palliativpatient mit moderater Symptomlast (Summe 19/33, Wohlbefinden eher schlecht)](QuestionnaireResponse-mii-exa-pro-midos2-response-01.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qst-pro-midos-midos2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2026.4.1"]
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
      "name" : "symptomSumScore",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^midos2-q(0[1-9]|1[01])-')).answer.value.ordinal().sum()"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-midos-midos2",
  "version" : "2026.4.1",
  "name" : "MII_QST_PRO_MIDOS_MIDOS2",
  "title" : "MII QST PRO MIDOS2",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-15T12:52:47+00:00",
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
  "description" : "MIDOS2 (Minimales Dokumentationssystem für Palliativpatienten, v2) — Symptom-Screening für die Palliativmedizin nach DGP. 11 Symptom-Items mit 4-stufiger DGP-Skala, ein Wohlbefinden-Item, ein offenes Item für sonstige Beschwerden.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "copyright" : "MIDOS2 ist ein Instrument der Deutschen Gesellschaft für Palliativmedizin (DGP), frei verwendbar für klinische und Forschungszwecke.",
  "code" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "midos-midos2",
    "display" : "MIDOS2 (Minimales Dokumentationssystem für Palliativpatienten, DGP)"
  }],
  "item" : [{
    "linkId" : "midos2-instruction",
    "text" : "Bitte geben Sie an, wie stark Sie in den letzten Tagen unter folgenden Beschwerden gelitten haben.",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Please indicate how severely you have suffered from the following complaints over the past few days."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "display"
  },
  {
    "linkId" : "midos2-q01-schmerz",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
      "code" : "midos2-q01-schmerz"
    }],
    "prefix" : "1",
    "text" : "Schmerz",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Pain"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"
  },
  {
    "linkId" : "midos2-q02-uebelkeit",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
      "code" : "midos2-q02-uebelkeit"
    }],
    "prefix" : "2",
    "text" : "Übelkeit",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Nausea"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"
  },
  {
    "linkId" : "midos2-q03-erbrechen",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
      "code" : "midos2-q03-erbrechen"
    }],
    "prefix" : "3",
    "text" : "Erbrechen",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Vomiting"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"
  },
  {
    "linkId" : "midos2-q04-luftnot",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
      "code" : "midos2-q04-luftnot"
    }],
    "prefix" : "4",
    "text" : "Luftnot",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Shortness of breath"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"
  },
  {
    "linkId" : "midos2-q05-verstopfung",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
      "code" : "midos2-q05-verstopfung"
    }],
    "prefix" : "5",
    "text" : "Verstopfung",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Constipation"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"
  },
  {
    "linkId" : "midos2-q06-schwaeche",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
      "code" : "midos2-q06-schwaeche"
    }],
    "prefix" : "6",
    "text" : "Schwäche",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Weakness"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"
  },
  {
    "linkId" : "midos2-q07-muedigkeit",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
      "code" : "midos2-q07-muedigkeit"
    }],
    "prefix" : "7",
    "text" : "Müdigkeit",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Tiredness"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"
  },
  {
    "linkId" : "midos2-q08-appetitmangel",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
      "code" : "midos2-q08-appetitmangel"
    }],
    "prefix" : "8",
    "text" : "Appetitmangel",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Loss of appetite"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"
  },
  {
    "linkId" : "midos2-q09-depressivitaet",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
      "code" : "midos2-q09-depressivitaet"
    }],
    "prefix" : "9",
    "text" : "Depressivität",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Depression"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"
  },
  {
    "linkId" : "midos2-q10-angst",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
      "code" : "midos2-q10-angst"
    }],
    "prefix" : "10",
    "text" : "Angst",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Anxiety"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"
  },
  {
    "linkId" : "midos2-q11-anspannung",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
      "code" : "midos2-q11-anspannung"
    }],
    "prefix" : "11",
    "text" : "Anspannung",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Tension"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"
  },
  {
    "linkId" : "midos2-q12-wohlbefinden",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
      "code" : "midos2-q12-wohlbefinden"
    }],
    "prefix" : "12",
    "text" : "Wie würden Sie Ihr Wohlbefinden insgesamt einschätzen?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "How would you rate your overall wellbeing?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-wellbeing"
  },
  {
    "linkId" : "midos2-q13-sonstiges",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
      "code" : "midos2-q13-sonstiges"
    }],
    "prefix" : "13",
    "text" : "Andere Beschwerden (bitte angeben)",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Other complaints (please specify)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "string",
    "required" : false
  }]
}

```
