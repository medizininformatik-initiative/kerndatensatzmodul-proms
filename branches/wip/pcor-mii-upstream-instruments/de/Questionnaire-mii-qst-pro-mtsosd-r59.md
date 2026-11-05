# MII QST PRO MTSOSD-R59 - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII QST PRO MTSOSD-R59**

## Questionnaire: MTSOSD-R59 (metadata-only) (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-mtsosd-r59 | *Version*:2027.0.0-rc.1 |
| Active Stand: 2026-11-05 | *Maschinenlesbarer Name*: |
| **Copyright/Rechtliches**: MTSOSD-R59 © KU Leuven. Lizenz-Status: Tier B (metadata-only). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt. Wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Kontakt: joke.willems@kuleuven.be | |

 
MTSOSD-R59 — Symptomfragebogen mit 59 Symptomen plus 3 Freitext-Symptomen (KU Leuven). Metadata-only (Tier B): Struktur ohne Item-Wortlaut. 

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
  "id" : "mii-qst-pro-mtsosd-r59",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2027.0.0-rc.1"]
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
      "valueBoolean" : false
    },
    {
      "url" : "collectable",
      "valueBoolean" : false
    },
    {
      "url" : "calculatable",
      "valueBoolean" : false
    },
    {
      "url" : "extractable",
      "valueBoolean" : true
    },
    {
      "url" : "domainAligned",
      "valueBoolean" : false
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-mtsosd-r59",
  "version" : "2027.0.0-rc.1",
  "title" : "MTSOSD-R59 (metadata-only)",
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
  "description" : "MTSOSD-R59 — Symptomfragebogen mit 59 Symptomen plus 3 Freitext-Symptomen (KU Leuven). Metadata-only (Tier B): Struktur ohne Item-Wortlaut.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "MTSOSD-R59 © KU Leuven. Lizenz-Status: Tier B (metadata-only). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt. Wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Kontakt: joke.willems@kuleuven.be",
  "code" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "mtsosd-r59",
    "display" : "MTSOSD-R59 (Symptomfragebogen, 59 Symptome)"
  }],
  "item" : [{
    "linkId" : "mtsosd-r59-q01",
    "text" : "Symptom 01 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q01-distress",
    "text" : "Symptom 01 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q01",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q02",
    "text" : "Symptom 02 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q02-distress",
    "text" : "Symptom 02 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q02",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q03",
    "text" : "Symptom 03 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q03-distress",
    "text" : "Symptom 03 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q03",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q04",
    "text" : "Symptom 04 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q04-distress",
    "text" : "Symptom 04 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q04",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q05",
    "text" : "Symptom 05 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q05-distress",
    "text" : "Symptom 05 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q05",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q06",
    "text" : "Symptom 06 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q06-distress",
    "text" : "Symptom 06 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q06",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q07",
    "text" : "Symptom 07 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q07-distress",
    "text" : "Symptom 07 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q07",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q08",
    "text" : "Symptom 08 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q08-distress",
    "text" : "Symptom 08 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q08",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q09",
    "text" : "Symptom 09 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q09-distress",
    "text" : "Symptom 09 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q09",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q10",
    "text" : "Symptom 10 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q10-distress",
    "text" : "Symptom 10 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q10",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q11",
    "text" : "Symptom 11 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q11-distress",
    "text" : "Symptom 11 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q11",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q12",
    "text" : "Symptom 12 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q12-distress",
    "text" : "Symptom 12 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q12",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q13",
    "text" : "Symptom 13 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q13-distress",
    "text" : "Symptom 13 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q13",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q14",
    "text" : "Symptom 14 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q14-distress",
    "text" : "Symptom 14 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q14",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q15",
    "text" : "Symptom 15 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q15-distress",
    "text" : "Symptom 15 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q15",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q16",
    "text" : "Symptom 16 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q16-distress",
    "text" : "Symptom 16 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q16",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q17",
    "text" : "Symptom 17 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q17-distress",
    "text" : "Symptom 17 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q17",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q18",
    "text" : "Symptom 18 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q18-distress",
    "text" : "Symptom 18 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q18",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q19",
    "text" : "Symptom 19 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q19-distress",
    "text" : "Symptom 19 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q19",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q20",
    "text" : "Symptom 20 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q20-distress",
    "text" : "Symptom 20 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q20",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q21",
    "text" : "Symptom 21 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q21-distress",
    "text" : "Symptom 21 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q21",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q22",
    "text" : "Symptom 22 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q22-distress",
    "text" : "Symptom 22 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q22",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q23",
    "text" : "Symptom 23 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q23-distress",
    "text" : "Symptom 23 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q23",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q24",
    "text" : "Symptom 24 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q24-distress",
    "text" : "Symptom 24 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q24",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q25",
    "text" : "Symptom 25 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q25-distress",
    "text" : "Symptom 25 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q25",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q26",
    "text" : "Symptom 26 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q26-distress",
    "text" : "Symptom 26 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q26",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q27-male",
    "text" : "Symptom 27 (männlich) — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q27-male-distress",
    "text" : "Symptom 27 (männlich) — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q27-male",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q27-female",
    "text" : "Symptom 27 (weiblich) — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q27-female-distress",
    "text" : "Symptom 27 (weiblich) — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q27-female",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q28",
    "text" : "Symptom 28 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q28-distress",
    "text" : "Symptom 28 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q28",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q29",
    "text" : "Symptom 29 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q29-distress",
    "text" : "Symptom 29 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q29",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q30",
    "text" : "Symptom 30 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q30-distress",
    "text" : "Symptom 30 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q30",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q31",
    "text" : "Symptom 31 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q31-distress",
    "text" : "Symptom 31 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q31",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q32",
    "text" : "Symptom 32 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q32-distress",
    "text" : "Symptom 32 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q32",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q33",
    "text" : "Symptom 33 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q33-distress",
    "text" : "Symptom 33 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q33",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q34",
    "text" : "Symptom 34 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q34-distress",
    "text" : "Symptom 34 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q34",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q35",
    "text" : "Symptom 35 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q35-distress",
    "text" : "Symptom 35 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q35",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q36",
    "text" : "Symptom 36 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q36-distress",
    "text" : "Symptom 36 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q36",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q37",
    "text" : "Symptom 37 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q37-distress",
    "text" : "Symptom 37 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q37",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q38",
    "text" : "Symptom 38 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q38-distress",
    "text" : "Symptom 38 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q38",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q39",
    "text" : "Symptom 39 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q39-distress",
    "text" : "Symptom 39 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q39",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q40",
    "text" : "Symptom 40 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q40-distress",
    "text" : "Symptom 40 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q40",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q41",
    "text" : "Symptom 41 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q41-distress",
    "text" : "Symptom 41 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q41",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q42",
    "text" : "Symptom 42 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q42-distress",
    "text" : "Symptom 42 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q42",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q43",
    "text" : "Symptom 43 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q43-distress",
    "text" : "Symptom 43 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q43",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q44",
    "text" : "Symptom 44 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q44-distress",
    "text" : "Symptom 44 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q44",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q45",
    "text" : "Symptom 45 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q45-distress",
    "text" : "Symptom 45 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q45",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q46",
    "text" : "Symptom 46 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q46-distress",
    "text" : "Symptom 46 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q46",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q47",
    "text" : "Symptom 47 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q47-distress",
    "text" : "Symptom 47 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q47",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q48",
    "text" : "Symptom 48 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q48-distress",
    "text" : "Symptom 48 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q48",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q49",
    "text" : "Symptom 49 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q49-distress",
    "text" : "Symptom 49 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q49",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q50",
    "text" : "Symptom 50 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q50-distress",
    "text" : "Symptom 50 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q50",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q51",
    "text" : "Symptom 51 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q51-distress",
    "text" : "Symptom 51 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q51",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q52",
    "text" : "Symptom 52 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q52-distress",
    "text" : "Symptom 52 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q52",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q53",
    "text" : "Symptom 53 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q53-distress",
    "text" : "Symptom 53 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q53",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q54",
    "text" : "Symptom 54 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q54-distress",
    "text" : "Symptom 54 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q54",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q55",
    "text" : "Symptom 55 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q55-distress",
    "text" : "Symptom 55 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q55",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q56",
    "text" : "Symptom 56 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q56-distress",
    "text" : "Symptom 56 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q56",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q57",
    "text" : "Symptom 57 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q57-distress",
    "text" : "Symptom 57 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q57",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q58",
    "text" : "Symptom 58 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q58-distress",
    "text" : "Symptom 58 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q58",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q59",
    "text" : "Symptom 59 — Auftreten (0-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence"
  },
  {
    "linkId" : "mtsosd-r59-q59-distress",
    "text" : "Symptom 59 — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q59",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
        "code" : "stufe-0",
        "display" : "Stufe 0"
      }
    }]
  },
  {
    "linkId" : "mtsosd-r59-q60",
    "text" : "Symptom 60 (Freitext) — Freitext",
    "type" : "text"
  },
  {
    "linkId" : "mtsosd-r59-q60-distress",
    "text" : "Symptom 60 (Freitext) — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q60",
      "operator" : "exists",
      "answerBoolean" : true
    }]
  },
  {
    "linkId" : "mtsosd-r59-q61",
    "text" : "Symptom 61 (Freitext) — Freitext",
    "type" : "text"
  },
  {
    "linkId" : "mtsosd-r59-q61-distress",
    "text" : "Symptom 61 (Freitext) — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q61",
      "operator" : "exists",
      "answerBoolean" : true
    }]
  },
  {
    "linkId" : "mtsosd-r59-q62",
    "text" : "Symptom 62 (Freitext) — Freitext",
    "type" : "text"
  },
  {
    "linkId" : "mtsosd-r59-q62-distress",
    "text" : "Symptom 62 (Freitext) — Belastung",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "mtsosd-r59-q62",
      "operator" : "exists",
      "answerBoolean" : true
    }]
  }]
}

```
