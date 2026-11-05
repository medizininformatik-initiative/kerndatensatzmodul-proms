# MII CS PRO ABQ Answers - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS PRO ABQ Answers**

## CodeSystem: MII CS PRO ABQ Answers (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers | *Version*:2027.0.0-rc.1 |
| Active Stand: 2026-11-05 | *Maschinenlesbarer Name*:MII_CS_PRO_ABQ_Answers |

 
Neutral benannte 4-stufige Antwortskala des ABQ (metadata-only, Tier B). Konzeptbezeichnungen bewusst neutral (Stufe 1-4) statt der Original-Antwortbezeichnungen. itemWeight 1-4. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS PRO ABQ Answers](ValueSet-mii-vs-pro-abq-answers.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-pro-abq-answers",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers",
  "version" : "2027.0.0-rc.1",
  "name" : "MII_CS_PRO_ABQ_Answers",
  "title" : "MII CS PRO ABQ Answers",
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
  "description" : "Neutral benannte 4-stufige Antwortskala des ABQ (metadata-only, Tier B). Konzeptbezeichnungen bewusst neutral (Stufe 1-4) statt der Original-Antwortbezeichnungen. itemWeight 1-4.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "property" : [{
    "code" : "itemWeight",
    "uri" : "http://hl7.org/fhir/concept-properties#itemWeight",
    "description" : "Numerical weight for SDC calculatedExpression scoring via .weight()",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "stufe-1",
    "display" : "Stufe 1",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "stufe-2",
    "display" : "Stufe 2",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "stufe-3",
    "display" : "Stufe 3",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "stufe-4",
    "display" : "Stufe 4",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 4
    }]
  }]
}

```
