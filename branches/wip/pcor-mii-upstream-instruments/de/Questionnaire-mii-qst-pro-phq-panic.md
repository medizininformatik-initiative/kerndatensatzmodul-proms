# MII QST PRO PHQ-D Panikblock - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII QST PRO PHQ-D Panikblock**

## Questionnaire: MII QST PRO PHQ-D Panikblock (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-panic | *Version*:2027.0.0-rc.1 |
| Active Stand: 2026-11-05 | *Maschinenlesbarer Name*: |
| **Copyright/Rechtliches**: Patient Health Questionnaire (PHQ) © Pfizer Inc. Developed by Robert L. Spitzer, Janet B.W. Williams, Kurt Kroenke and colleagues. Freely available — no permission required for reproduction, translation, display or use. German version: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002). Lizenz-Status: frei verfügbar (Tier A). | |

 
PHQ panic screening items 3a-3d (Spitzer, Kroenke & Williams 1999) with validated German translation (PHQ-D, Löwe et al. 2002) — four yes/no items on anxiety attacks, 4-week recall 

*  [Baumansicht](#tabs-tree) 
*  [Beispielanzeige](#tabs-sample) 
*  [Formularlogik](#tabs-logic) 

### Diesen Fragebogen testen

### Antworten zu diesem Fragebogen

Es sind derzeit keine QuestionnaireResponse-Instanzen für diesen Fragebogen in diesem IG definiert.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qst-pro-phq-panic",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2027.0.0-rc.1"]
  },
  "language" : "en",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "natural",
      "display" : "Natural"
    }
  },
  {
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
      "name" : "phqPanicYesCount",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^phq-phq3[a-d]$')).answer.value.weight().sum()"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-panic",
  "version" : "2027.0.0-rc.1",
  "title" : "MII QST PRO PHQ-D Panikblock",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-11-05T08:15:37+00:00",
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
  "description" : "PHQ panic screening items 3a-3d (Spitzer, Kroenke & Williams 1999) with validated German translation (PHQ-D, Löwe et al. 2002) — four yes/no items on anxiety attacks, 4-week recall",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Patient Health Questionnaire (PHQ) © Pfizer Inc. Developed by Robert L. Spitzer, Janet B.W. Williams, Kurt Kroenke and colleagues. Freely available — no permission required for reproduction, translation, display or use. German version: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002). Lizenz-Status: frei verfügbar (Tier A).",
  "code" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "phq-panic",
    "display" : "PHQ-D Panikblock (PHQ panic screening items 3a-3d, Spitzer et al. 1999)"
  }],
  "item" : [{
    "linkId" : "phq-panic-intro",
    "text" : "Questions about anxiety.",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Fragen zum Thema \"Angst\""
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "display"
  },
  {
    "linkId" : "phq-phq3a",
    "prefix" : "a",
    "text" : "In the last 4 weeks, have you had an anxiety attack — suddenly feeling fear or panic?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Hatten Sie in den letzten 4 Wochen eine Angstattacke (plötzliches Gefühl der Furcht oder Panik?)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/itemWeight",
        "valueDecimal" : 0
      }],
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/itemWeight",
        "valueDecimal" : 1
      }],
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }]
  },
  {
    "linkId" : "phq-phq3b",
    "prefix" : "b",
    "text" : "Has this ever happened before?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Ist dies bereits früher einmal vorgekommen?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "enableWhen" : [{
      "question" : "phq-phq3a",
      "operator" : "=",
      "answerCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }],
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/itemWeight",
        "valueDecimal" : 0
      }],
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/itemWeight",
        "valueDecimal" : 1
      }],
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }]
  },
  {
    "linkId" : "phq-phq3c",
    "prefix" : "c",
    "text" : "Do some of these attacks come suddenly out of the blue — that is, in situations where you don't expect to be nervous or uncomfortable?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Treten manche dieser Anfälle völlig unerwartet auf - d.h. in Situationen, in denen Sie nicht damit rechnen, dass Sie angespannt oder beunruhigt reagieren?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "enableWhen" : [{
      "question" : "phq-phq3a",
      "operator" : "=",
      "answerCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }],
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/itemWeight",
        "valueDecimal" : 0
      }],
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/itemWeight",
        "valueDecimal" : 1
      }],
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }]
  },
  {
    "linkId" : "phq-phq3d",
    "prefix" : "d",
    "text" : "Do these attacks bother you a lot or are you worried about having another attack?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Empfinden Sie diese Anfälle als stark beeinträchtigend, und/oder haben Sie Angst vor erneuten Anfällen?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "enableWhen" : [{
      "question" : "phq-phq3a",
      "operator" : "=",
      "answerCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }],
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/itemWeight",
        "valueDecimal" : 0
      }],
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/itemWeight",
        "valueDecimal" : 1
      }],
      "valueCoding" : {
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
        "expression" : "%phqPanicYesCount"
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
    "linkId" : "phq-panic-score-count",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "phq-panic-count",
      "display" : "PHQ-D Panikblock Yes-Count (0-4, screening items 3a-3d)"
    }],
    "prefix" : "Count",
    "text" : "Number of 'yes' answers (0-4)",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Anzahl der Ja-Antworten (0-4)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "decimal",
    "readOnly" : true
  }]
}

```
