# MII CM PRO GAD-7 Item-Nummerierung → PHQ-D-linkIds - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM PRO GAD-7 Item-Nummerierung → PHQ-D-linkIds**

## ConceptMap: MII CM PRO GAD-7 Item-Nummerierung → PHQ-D-linkIds 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ConceptMap/mii-cm-pro-gad-7-linkids | *Version*:2027.0.0-ballot.1 |
| Active as of 2026-09-11 | *Computable Name*: |

 
Bildet die übliche GAD-7-Itemnummerierung (Item 1–7, wie publiziert und in Fremdsystemen verbreitet) auf die kanonischen linkIds des PHQ-D-Block-Namespace (phq-phq5a…phq-phq5g) ab. Lesehilfe für die Übernahme von Daten aus Systemen, die die konventionelle Nummerierung verwenden — keine Migration einer veröffentlichten Fassung. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-pro-gad-7-linkids",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "natural",
      "display" : "Natural"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ConceptMap/mii-cm-pro-gad-7-linkids",
  "version" : "2027.0.0-ballot.1",
  "title" : "MII CM PRO GAD-7 Item-Nummerierung → PHQ-D-linkIds",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T14:35:48+00:00",
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
  "description" : "Bildet die übliche GAD-7-Itemnummerierung (Item 1–7, wie publiziert und in Fremdsystemen verbreitet) auf die kanonischen linkIds des PHQ-D-Block-Namespace (phq-phq5a…phq-phq5g) ab. Lesehilfe für die Übernahme von Daten aus Systemen, die die konventionelle Nummerierung verwenden — keine Migration einer veröffentlichten Fassung.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/linkid/mii-qst-pro-gad-7",
    "target" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/linkid/mii-qst-pro-gad-7",
    "element" : [{
      "code" : "gad7-q01",
      "display" : "GAD-7 Item 1 — Nervousness / anxiety",
      "target" : [{
        "code" : "phq-phq5a",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "gad7-q02",
      "display" : "GAD-7 Item 2 — Uncontrollable worrying",
      "target" : [{
        "code" : "phq-phq5b",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "gad7-q03",
      "display" : "GAD-7 Item 3 — Excessive worrying",
      "target" : [{
        "code" : "phq-phq5c",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "gad7-q04",
      "display" : "GAD-7 Item 4 — Trouble relaxing",
      "target" : [{
        "code" : "phq-phq5d",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "gad7-q05",
      "display" : "GAD-7 Item 5 — Restlessness",
      "target" : [{
        "code" : "phq-phq5e",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "gad7-q06",
      "display" : "GAD-7 Item 6 — Irritability",
      "target" : [{
        "code" : "phq-phq5f",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "gad7-q07",
      "display" : "GAD-7 Item 7 — Fear of something awful",
      "target" : [{
        "code" : "phq-phq5g",
        "equivalence" : "equal"
      }]
    }]
  }]
}

```
