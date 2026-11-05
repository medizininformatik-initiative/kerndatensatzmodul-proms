# MII CS PRO BDI-II - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS PRO BDI-II**

## CodeSystem: MII CS PRO BDI-II (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-bdi-bdi2 | *Version*:2027.0.0-rc.1 |
| Active Stand: 2026-11-05 | *Maschinenlesbarer Name*:MII_CS_PRO_BDI_BDI2_AnswerList |

 
MII CS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS PRO BDI-II](ValueSet-mii-vs-pro-bdi-bdi2-long.md)
* [MII VS PRO BDI-II](ValueSet-mii-vs-pro-bdi-bdi2-short.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-pro-bdi-bdi2",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-bdi-bdi2",
  "version" : "2027.0.0-rc.1",
  "name" : "MII_CS_PRO_BDI_BDI2_AnswerList",
  "title" : "MII CS PRO BDI-II",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-11-05T10:07:52+00:00",
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
  "description" : "MII CS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2",
  "content" : "complete",
  "count" : 10,
  "property" : [{
    "code" : "itemWeight",
    "uri" : "http://hl7.org/fhir/concept-properties#itemWeight",
    "description" : "Numerical weight for SDC calculatedExpression scoring via .weight()",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "bdi-bdi2-answer-0",
    "display" : "0 points",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 0
    }]
  },
  {
    "code" : "bdi-bdi2-answer-1",
    "display" : "1 point",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "bdi-bdi2-answer-2",
    "display" : "2 points",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "bdi-bdi2-answer-3",
    "display" : "3 points",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "bdi-bdi2-answer-1a",
    "display" : "1 point (variant a)",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "bdi-bdi2-answer-1b",
    "display" : "1 point (variant b)",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "bdi-bdi2-answer-2a",
    "display" : "2 points (variant a)",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "bdi-bdi2-answer-2b",
    "display" : "2 points (variant b)",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "bdi-bdi2-answer-3a",
    "display" : "3 points (variant a)",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "bdi-bdi2-answer-3b",
    "display" : "3 points (variant b)",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  }]
}

```
