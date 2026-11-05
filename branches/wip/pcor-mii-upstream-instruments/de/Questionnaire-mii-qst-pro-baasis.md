# MII QST PRO BAASIS - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII QST PRO BAASIS**

## Questionnaire: BAASIS (metadata-only) (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-baasis | *Version*:2027.0.0-rc.1 |
| Active Stand: 2026-11-05 | *Maschinenlesbarer Name*: |
| **Copyright/Rechtliches**: BAASIS © Universität Basel. Lizenz-Status: Tier B (metadata-only). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt. Wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Bezug: https://baasis.nursing.unibas.ch/how-to-obtain | |

 
BAASIS — Basel Assessment of Adherence to Immunosuppressive Medications Scale (Universität Basel). Metadata-only (Tier B): Struktur ohne Item-Wortlaut. 

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
  "id" : "mii-qst-pro-baasis",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-baasis",
  "version" : "2027.0.0-rc.1",
  "title" : "BAASIS (metadata-only)",
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
  "description" : "BAASIS — Basel Assessment of Adherence to Immunosuppressive Medications Scale (Universität Basel). Metadata-only (Tier B): Struktur ohne Item-Wortlaut.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "BAASIS © Universität Basel. Lizenz-Status: Tier B (metadata-only). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt. Wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Bezug: https://baasis.nursing.unibas.ch/how-to-obtain",
  "code" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "baasis",
    "display" : "BAASIS (Basel Assessment of Adherence to Immunosuppressive Medications Scale)"
  }],
  "item" : [{
    "linkId" : "baasis-q1a",
    "text" : "BAASIS Item 1A (Ja/Nein)",
    "type" : "choice",
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
    "linkId" : "baasis-q1a-freq",
    "text" : "BAASIS Item 1A — Häufigkeit (Stufe 1-5)",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "baasis-q1a",
      "operator" : "=",
      "answerCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }],
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-baasis-frequency"
  },
  {
    "linkId" : "baasis-q1b",
    "text" : "BAASIS Item 1B (Ja/Nein)",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "baasis-q1a",
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
    "linkId" : "baasis-q1b-freq",
    "text" : "BAASIS Item 1B — Häufigkeit (Stufe 1-5)",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "baasis-q1b",
      "operator" : "=",
      "answerCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }],
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-baasis-frequency"
  },
  {
    "linkId" : "baasis-q2",
    "text" : "BAASIS Item 2 (Ja/Nein)",
    "type" : "choice",
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
    "linkId" : "baasis-q2-freq",
    "text" : "BAASIS Item 2 — Häufigkeit (Stufe 1-5)",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "baasis-q2",
      "operator" : "=",
      "answerCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }],
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-baasis-frequency"
  },
  {
    "linkId" : "baasis-q3",
    "text" : "BAASIS Item 3 (Ja/Nein)",
    "type" : "choice",
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
    "linkId" : "baasis-q4",
    "text" : "BAASIS Item 4 (Ja/Nein; Rückblick 1 Jahr)",
    "type" : "choice",
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
    "linkId" : "baasis-q5",
    "text" : "BAASIS Item 5 (Ja/Nein; Rückblick 1 Jahr)",
    "type" : "choice",
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
    "linkId" : "baasis-q5a",
    "text" : "BAASIS Item 5a (Ja/Nein)",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "baasis-q5",
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
  }]
}

```
