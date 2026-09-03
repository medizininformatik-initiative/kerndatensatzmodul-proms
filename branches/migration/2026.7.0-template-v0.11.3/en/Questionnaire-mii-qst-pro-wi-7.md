# MII QST PRO WI-7 - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII QST PRO WI-7**

## Questionnaire: MII QST PRO WI-7 (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-wi-7 | *Version*:2026.7.0 |
| Active as of 2026-09-03 | *Computable Name*: |
| **Copyright/Legal**: Whiteley-7 scale — Fink, Ewald, Jensen, Sørensen, Engberg, Holm & Munk-Jørgensen 1999 (Journal of Psychosomatic Research, Elsevier). No explicit licensing restriction stated in the original publication; treated as freely available for clinical and research use. Lizenz-Status: frei verfügbar (Tier A). | |

 
WI-7 (Whiteley-7) questionnaire — seven-item screening scale for hypochondriasis and somatization (Fink et al. 1999) with German translation 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

* [null](QuestionnaireResponse-mii-exa-pro-wi-7-response.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qst-pro-wi-7",
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
      "name" : "wi7Sum",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^wi7-q0[1-7]$')).answer.value.ordinal().sum()"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-wi-7",
  "version" : "2026.7.0",
  "title" : "MII QST PRO WI-7",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-03T19:26:10+00:00",
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
  "description" : "WI-7 (Whiteley-7) questionnaire — seven-item screening scale for hypochondriasis and somatization (Fink et al. 1999) with German translation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "copyright" : "Whiteley-7 scale — Fink, Ewald, Jensen, Sørensen, Engberg, Holm & Munk-Jørgensen 1999 (Journal of Psychosomatic Research, Elsevier). No explicit licensing restriction stated in the original publication; treated as freely available for clinical and research use. Lizenz-Status: frei verfügbar (Tier A).",
  "code" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "wi-7",
    "display" : "Whiteley-7 Questionnaire"
  }],
  "item" : [{
    "linkId" : "wi7-intro",
    "text" : "The following questions are about your physical health:",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "In den nächsten Fragen geht es um Ihren körperlichen Gesundheitszustand:"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "display"
  },
  {
    "linkId" : "wi7-q01",
    "prefix" : "1",
    "text" : "Do you think there is something seriously wrong with your body?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Denken Sie, dass mit Ihrem Körper ernsthaft etwas nicht in Ordnung ist?"
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
    "linkId" : "wi7-q02",
    "prefix" : "2",
    "text" : "Do you worry a lot about your health?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Machen Sie sich viel Sorgen um Ihre Gesundheit?"
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
    "linkId" : "wi7-q03",
    "prefix" : "3",
    "text" : "Is it hard for you to believe the doctor when he tells you there is nothing to worry about?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Können Sie der Ärztin/dem Arzt nur schwer glauben, wenn sie/er sagt, dass kein Grund zur Besorgnis besteht?"
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
    "linkId" : "wi7-q04",
    "prefix" : "4",
    "text" : "Do you often worry about the possibility that you have a serious illness?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Machen Sie sich oft Sorgen, möglicherweise eine ernsthafte Krankheit zu haben?"
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
    "linkId" : "wi7-q05",
    "prefix" : "5",
    "text" : "Are you bothered by many different pains and aches?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Werden Sie durch eine Vielzahl von Schmerzen geplagt?"
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
    "linkId" : "wi7-q06",
    "prefix" : "6",
    "text" : "If disease is brought to your attention (e.g., on TV, radio, the newspapers, or by someone you know), do you worry about getting it yourself?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Wenn Sie auf eine Krankheit aufmerksam gemacht werden (durch Fernsehen, Zeitung oder einen Bekannten), machen Sie sich dann Sorgen, dass Sie diese Krankheit auch bekommen?"
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
    "linkId" : "wi7-q07",
    "prefix" : "7",
    "text" : "Do you find that you are bothered by many different symptoms?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Finden Sie, dass Sie von einer Vielzahl unterschiedlicher Symptome geplagt werden?"
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
        "expression" : "%wi7Sum"
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
    "linkId" : "wi7-score-total",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "wi-7-total",
      "display" : "WI-7 Total Score"
    }],
    "prefix" : "Score",
    "text" : "WI-7 Total Score (0-7)",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "WI-7 Summenwert (0-7)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "decimal",
    "readOnly" : true
  }]
}

```
