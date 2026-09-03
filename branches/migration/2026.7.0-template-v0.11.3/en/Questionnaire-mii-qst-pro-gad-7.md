# MII QST PRO GAD-7 - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII QST PRO GAD-7**

## Questionnaire: MII QST PRO GAD-7 (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7 | *Version*:2026.7.0 |
| Active as of 2026-09-03 | *Computable Name*: |
| **Copyright/Legal**: GAD-7 © Pfizer Inc. Entwickelt von Robert L. Spitzer, Kurt Kroenke, Janet B.W. Williams und Bernd Löwe. Frei verfuegbar — keine Genehmigung fuer Reproduktion, Uebersetzung, Darstellung oder Nutzung erforderlich. Deutsche Fassung: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002). | |

 
Generalized Anxiety Disorder Scale-7 (GAD-7) — Screening auf generalisierte Angststoerung, mit deutscher Uebersetzung (PHQ-D) 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

* [null](QuestionnaireResponse-mii-exa-pro-gad-7-response.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qst-pro-gad-7",
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
      "name" : "gad7Sum",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^phq-phq5[a-g]$')).answer.value.ordinal().sum()"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7",
  "version" : "2026.7.0",
  "title" : "MII QST PRO GAD-7",
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
  "description" : "Generalized Anxiety Disorder Scale-7 (GAD-7) — Screening auf generalisierte Angststoerung, mit deutscher Uebersetzung (PHQ-D)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "copyright" : "GAD-7 © Pfizer Inc. Entwickelt von Robert L. Spitzer, Kurt Kroenke, Janet B.W. Williams und Bernd Löwe. Frei verfuegbar — keine Genehmigung fuer Reproduktion, Uebersetzung, Darstellung oder Nutzung erforderlich. Deutsche Fassung: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002).",
  "code" : [{
    "system" : "http://loinc.org",
    "code" : "69737-5",
    "display" : "Generalized anxiety disorder 7 item (GAD-7)"
  },
  {
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "phq-gad7",
    "display" : "GAD-7 (Generalized Anxiety Disorder Scale-7, Spitzer et al. 2006)"
  }],
  "item" : [{
    "linkId" : "gad-7-intro",
    "text" : "Over the last two weeks, how often have you been bothered by the following problems?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Wie oft fühlten Sie sich im Verlauf der letzten 2 Wochen durch die folgenden Beschwerden beeinträchtigt?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "display"
  },
  {
    "linkId" : "phq-phq5a",
    "prefix" : "1",
    "text" : "Feeling nervous, anxious, or on edge",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Nervosität, Ängstlichkeit oder Anspannung"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 0
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6568-5",
        "display" : "Not at all",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Überhaupt nicht"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 1
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6569-3",
        "display" : "Several days",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "An einzelnen Tagen"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 2
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6570-1",
        "display" : "More than half the days",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "An mehr als der Hälfte der Tage"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 3
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6571-9",
        "display" : "Nearly every day",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Beinahe jeden Tag"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    }]
  },
  {
    "linkId" : "phq-phq5b",
    "prefix" : "2",
    "text" : "Not being able to stop or control worrying",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Nicht in der Lage sein, Sorgen zu stoppen oder zu kontrollieren"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 0
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6568-5",
        "display" : "Not at all",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Überhaupt nicht"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 1
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6569-3",
        "display" : "Several days",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "An einzelnen Tagen"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 2
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6570-1",
        "display" : "More than half the days",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "An mehr als der Hälfte der Tage"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 3
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6571-9",
        "display" : "Nearly every day",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Beinahe jeden Tag"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    }]
  },
  {
    "linkId" : "phq-phq5c",
    "prefix" : "3",
    "text" : "Worrying too much about different things",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Übermäßige Sorgen bezüglich verschiedener Angelegenheiten"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 0
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6568-5",
        "display" : "Not at all",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Überhaupt nicht"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 1
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6569-3",
        "display" : "Several days",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "An einzelnen Tagen"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 2
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6570-1",
        "display" : "More than half the days",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "An mehr als der Hälfte der Tage"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 3
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6571-9",
        "display" : "Nearly every day",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Beinahe jeden Tag"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    }]
  },
  {
    "linkId" : "phq-phq5d",
    "prefix" : "4",
    "text" : "Trouble relaxing",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Schwierigkeiten zu entspannen"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 0
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6568-5",
        "display" : "Not at all",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Überhaupt nicht"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 1
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6569-3",
        "display" : "Several days",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "An einzelnen Tagen"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 2
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6570-1",
        "display" : "More than half the days",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "An mehr als der Hälfte der Tage"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 3
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6571-9",
        "display" : "Nearly every day",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Beinahe jeden Tag"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    }]
  },
  {
    "linkId" : "phq-phq5e",
    "prefix" : "5",
    "text" : "Being so restless that it is hard to sit still",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Rastlosigkeit, so dass Stillsitzen schwer fällt"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 0
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6568-5",
        "display" : "Not at all",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Überhaupt nicht"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 1
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6569-3",
        "display" : "Several days",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "An einzelnen Tagen"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 2
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6570-1",
        "display" : "More than half the days",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "An mehr als der Hälfte der Tage"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 3
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6571-9",
        "display" : "Nearly every day",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Beinahe jeden Tag"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    }]
  },
  {
    "linkId" : "phq-phq5f",
    "prefix" : "6",
    "text" : "Becoming easily annoyed or irritable",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Schnelle Verärgerung oder Gereiztheit"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 0
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6568-5",
        "display" : "Not at all",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Überhaupt nicht"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 1
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6569-3",
        "display" : "Several days",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "An einzelnen Tagen"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 2
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6570-1",
        "display" : "More than half the days",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "An mehr als der Hälfte der Tage"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 3
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6571-9",
        "display" : "Nearly every day",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Beinahe jeden Tag"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    }]
  },
  {
    "linkId" : "phq-phq5g",
    "prefix" : "7",
    "text" : "Feeling afraid, as if something awful might happen",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Gefühl der Angst, so als würde etwas Schlimmes passieren"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 0
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6568-5",
        "display" : "Not at all",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Überhaupt nicht"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 1
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6569-3",
        "display" : "Several days",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "An einzelnen Tagen"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 2
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6570-1",
        "display" : "More than half the days",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "An mehr als der Hälfte der Tage"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
        "valueDecimal" : 3
      }],
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6571-9",
        "display" : "Nearly every day",
        "_display" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Beinahe jeden Tag"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "name" : "Scoreberechnung",
        "language" : "text/fhirpath",
        "expression" : "%gad7Sum"
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
    "linkId" : "phq-gad7-score-total",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "70274-6",
      "display" : "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
    }],
    "prefix" : "Score",
    "text" : "GAD-7 Total Score (0-21)",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "GAD-7 Summenwert (0-21)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "decimal",
    "readOnly" : true
  }]
}

```
