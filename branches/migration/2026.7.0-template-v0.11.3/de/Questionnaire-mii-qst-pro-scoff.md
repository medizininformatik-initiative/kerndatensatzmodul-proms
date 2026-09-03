# MII QST PRO SCOFF - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII QST PRO SCOFF**

## Questionnaire: MII QST PRO SCOFF (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-scoff | *Version*:2026.7.0 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*: |
| **Copyright/Rechtliches**: SCOFF questionnaire © Morgan, Reid & Lacey 1999 (BMJ). Freely available — no permission required for reproduction, translation, display or use. Lizenz-Status: frei verfügbar (Tier A). | |

 
SCOFF questionnaire — five-item screening tool for eating disorders (Morgan et al. 1999) with German translation 

*  [Baumansicht](#tabs-tree) 
*  [Beispielanzeige](#tabs-sample) 
*  [Formularlogik](#tabs-logic) 

### Diesen Fragebogen testen

### Antworten zu diesem Fragebogen

* [null](QuestionnaireResponse-mii-exa-pro-scoff-response.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qst-pro-scoff",
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
      "name" : "scoffSum",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^scoff-q0[1-5]$')).answer.value.ordinal().sum()"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-scoff",
  "version" : "2026.7.0",
  "title" : "MII QST PRO SCOFF",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-03T20:03:19+00:00",
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
  "description" : "SCOFF questionnaire — five-item screening tool for eating disorders (Morgan et al. 1999) with German translation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "copyright" : "SCOFF questionnaire © Morgan, Reid & Lacey 1999 (BMJ). Freely available — no permission required for reproduction, translation, display or use. Lizenz-Status: frei verfügbar (Tier A).",
  "code" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "scoff",
    "display" : "SCOFF Questionnaire"
  }],
  "item" : [{
    "linkId" : "scoff-intro",
    "text" : "The following questions are about eating:",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "In den nächsten Fragen geht es um das Thema Essen:"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "display"
  },
  {
    "linkId" : "scoff-q01",
    "prefix" : "1",
    "text" : "Do you make yourself Sick because you feel uncomfortably full?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Übergeben Sie sich, wenn Sie sich unangenehm voll fühlen?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerOption" : [{
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 0
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    },
    {
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 1
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }]
  },
  {
    "linkId" : "scoff-q02",
    "prefix" : "2",
    "text" : "Do you worry you have lost Control over how much you eat?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Machen Sie sich Sorgen, weil Sie manchmal nicht mit dem Essen aufhören können?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerOption" : [{
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 0
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    },
    {
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 1
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }]
  },
  {
    "linkId" : "scoff-q03",
    "prefix" : "3",
    "text" : "Have you recently lost more than One stone in a 3 month period?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Haben Sie in der letzten Zeit mehr als 6 kg in 3 Monaten abgenommen?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerOption" : [{
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 0
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    },
    {
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 1
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }]
  },
  {
    "linkId" : "scoff-q04",
    "prefix" : "4",
    "text" : "Do you believe yourself to be Fat when others say you are too thin?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Finden Sie sich zu dick, während andere Sie zu dünn finden?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerOption" : [{
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 0
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    },
    {
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 1
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }]
  },
  {
    "linkId" : "scoff-q05",
    "prefix" : "5",
    "text" : "Would you say that Food dominates your life?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Würden Sie sagen, dass Essen Ihr Leben sehr beeinflusst?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerOption" : [{
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 0
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    },
    {
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 1
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "name" : "Scoreberechnung",
        "language" : "text/fhirpath",
        "expression" : "%scoffSum"
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
    "linkId" : "scoff-score-total",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "scoff-total",
      "display" : "SCOFF Total Score"
    }],
    "prefix" : "Score",
    "text" : "SCOFF Total Score (0-5)",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "SCOFF Summenwert (0-5)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "decimal",
    "readOnly" : true
  }]
}

```
