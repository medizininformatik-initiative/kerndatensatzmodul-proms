# MII QST PRO EQ-5D-5L - MII IG PRO v2027.0.0-ballot.rc5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII QST PRO EQ-5D-5L**

## Questionnaire: MII QST PRO EQ-5D-5L (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-answer-coding | *Version*:2027.0.0-ballot.rc5 |
| Active as of 2026-09-11 | *Computable Name*: |

 
MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire 

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
  "id" : "mii-qst-pro-euroqol-eq5d5l-answer-coding",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2027.0.0-ballot.rc5"]
  },
  "language" : "de",
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
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-answer-coding",
  "version" : "2027.0.0-ballot.rc5",
  "title" : "MII QST PRO EQ-5D-5L",
  "derivedFrom" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l"],
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-11T10:35:27+00:00",
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
  "description" : "MII QST PRO EuroQol Five Dimension Five Level (EQ-5D-5L) Questionnaire",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : [{
    "system" : "http://snomed.info/sct",
    "code" : "73041000052103",
    "display" : "EuroQoL five dimension five level questionnaire"
  },
  {
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "euroqol-eq5d5l",
    "display" : "EuroQol EQ-5D-5L Questionnaire"
  }],
  "item" : [{
    "linkId" : "euroqol-eq5d5l-coded-instruction",
    "text" : "Bitte kreuzen Sie unter jeder Überschrift DAS Kästchen an, das Ihre Gesundheit HEUTE am besten beschreibt.",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Under each heading, please tick the ONE box that best describes your health TODAY."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "display"
  },
  {
    "linkId" : "euroqol-eq5d5l-coded-q01-MO",
    "text" : "BEWEGLICHKEIT / MOBILITÄT",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "MOBILITY"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "1"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "MO-1",
        "display" : "Ich habe keine Probleme herumzugehen"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "2"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "MO-2",
        "display" : "Ich habe leichte Probleme herumzugehen"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "3"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "MO-3",
        "display" : "Ich habe mäßige Probleme herumzugehen"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "4"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "MO-4",
        "display" : "Ich habe große Probleme herumzugehen"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "5"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "MO-5",
        "display" : "Ich bin nicht in der Lage herumzugehen"
      }
    }]
  },
  {
    "linkId" : "euroqol-eq5d5l-coded-q02-SC",
    "text" : "FÜR SICH SELBST SORGEN",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "SELF-CARE"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "1"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "SC-1",
        "display" : "Ich habe keine Probleme, mich selbst zu waschen oder anzuziehen"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "2"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "SC-2",
        "display" : "Ich habe leichte Probleme, mich selbst zu waschen oder anzuziehen"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "3"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "SC-3",
        "display" : "Ich habe mäßige Probleme, mich selbst zu waschen oder anzuziehen"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "4"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "SC-4",
        "display" : "Ich habe große Probleme, mich selbst zu waschen oder anzuziehen"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "5"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "SC-5",
        "display" : "Ich bin nicht in der Lage, mich selbst zu waschen oder anzuziehen"
      }
    }]
  },
  {
    "linkId" : "euroqol-eq5d5l-coded-q03-UA",
    "text" : "ALLTÄGLICHE TÄTIGKEITEN (z.B. Arbeit, Studium, Hausarbeit, Familien- / Freizeitaktivitäten)",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "USUAL ACTIVITIES (e.g. work, study, housework, family or leisure activities)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "1"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "UA-1",
        "display" : "Ich habe keine Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "2"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "UA-2",
        "display" : "Ich habe leichte Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "3"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "UA-3",
        "display" : "Ich habe mäßige Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "4"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "UA-4",
        "display" : "Ich habe große Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "5"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "UA-5",
        "display" : "Ich bin nicht in der Lage, meinen alltäglichen Tätigkeiten nachzugehen"
      }
    }]
  },
  {
    "linkId" : "euroqol-eq5d5l-coded-q04-PD",
    "text" : "SCHMERZEN / KÖRPERLICHEN BESCHWERDEN",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "PAIN / DISCOMFORT"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "1"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "PD-1",
        "display" : "Ich habe keine Schmerzen oder Beschwerden"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "2"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "PD-2",
        "display" : "Ich habe leichte Schmerzen oder Beschwerden"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "3"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "PD-3",
        "display" : "Ich habe mäßige Schmerzen oder Beschwerden"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "4"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "PD-4",
        "display" : "Ich habe starke Schmerzen oder Beschwerden"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "5"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "PD-5",
        "display" : "Ich habe extreme Schmerzen oder Beschwerden"
      }
    }]
  },
  {
    "linkId" : "euroqol-eq5d5l-coded-q05-AD",
    "text" : "ANGST / NIEDERGESCHLAGENHEIT",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "ANXIETY / DEPRESSION"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "1"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "AD-1",
        "display" : "Ich bin nicht ängstlich oder deprimiert"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "2"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "AD-2",
        "display" : "Ich bin ein wenig ängstlich oder deprimiert"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "3"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "AD-3",
        "display" : "Ich bin mäßig ängstlich oder deprimiert"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "4"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "AD-4",
        "display" : "Ich bin sehr ängstlich oder deprimiert"
      }
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
        "valueString" : "5"
      }],
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "AD-5",
        "display" : "Ich bin extrem ängstlich oder deprimiert"
      }
    }]
  },
  {
    "linkId" : "euroqol-eq5d5l-coded-score-profile",
    "code" : [{
      "system" : "http://snomed.info/sct",
      "code" : "405157008",
      "display" : "Personal health status"
    }],
    "text" : "Gesundheitszustand",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Health State"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "string",
    "readOnly" : true
  },
  {
    "linkId" : "euroqol-eq5d5l-coded-vas-instruction",
    "text" : "\n    Wir wollen herausfinden, wie gut oder schlecht Ihre Gesundheit HEUTE ist.\n\n    Die Skala is mit Zahlen von 0 bis 100 versehen.\n\n    100 ist die beste Gesundheit, die Sie sich vorstellen können.\n\n    0 (Null) ist die schlechteste Gesundheit, die Sie sich vorstellen können.\n\n    Bitte kreuzen Sie den Punkt auf der Skala an, der Ihre Gesundheit HEUTE am besten beschreibt.\n\n    Jetzt tragen Sie bitte die Zahl, die Sie auf der Skala angekreuzt haben, in das Kästchen unten ein.",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "\n    We would like to know how good or bad your health is TODAY.\n\n    This scale is numbered from 0 to 100.\n\n    100 means the best health you can imagine.\n\n    0 means the worst health you can imagine.\n\n    Please mark an X on the scale to indicate how your health is TODAY.\n\n    Now, write the number you marked on the scale in the box below."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "display"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueInteger" : 0
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueInteger" : 100
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
    "linkId" : "euroqol-eq5d5l-coded-vas",
    "code" : [{
      "system" : "http://snomed.info/sct",
      "code" : "446515003",
      "display" : "Health assessment questionnaire score"
    }],
    "text" : "IHRE GESUNDHEIT HEUTE",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "YOUR HEALTH TODAY"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "integer",
    "required" : true,
    "repeats" : false,
    "initial" : [{
      "valueInteger" : 999
    }]
  }]
}

```
