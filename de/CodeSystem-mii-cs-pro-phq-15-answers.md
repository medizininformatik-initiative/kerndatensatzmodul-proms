# MII CS PRO PHQ-15 Answers - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS PRO PHQ-15 Answers**

## CodeSystem: MII CS PRO PHQ-15 Answers 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-phq-15-answers | *Version*:2027.0.0-ballot.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_CS_PRO_PHQ_15_Answers |

 
MII-controlled bother severity answer scale for PHQ-15 (0–2). English primary with German designations. itemWeight properties on each concept enable SDC ordinal scoring via answerValueSet. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS PRO PHQ-15 Answers](ValueSet-mii-vs-pro-phq-15-answers.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-pro-phq-15-answers",
  "language" : "en",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-phq-15-answers",
  "version" : "2027.0.0-ballot.1",
  "name" : "MII_CS_PRO_PHQ_15_Answers",
  "title" : "MII CS PRO PHQ-15 Answers",
  "status" : "active",
  "date" : "2026-09-11T16:14:51+00:00",
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
  "description" : "MII-controlled bother severity answer scale for PHQ-15 (0–2). English primary with German designations. itemWeight properties on each concept enable SDC ordinal scoring via answerValueSet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "content" : "complete",
  "count" : 3,
  "property" : [{
    "code" : "itemWeight",
    "uri" : "http://hl7.org/fhir/concept-properties#itemWeight",
    "description" : "Numerical ordinal value (0–2) for SDC calculatedExpression scoring via .weight().sum()",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "not-bothered",
    "display" : "Not bothered at all",
    "designation" : [{
      "language" : "de",
      "value" : "Nicht beeinträchtigt"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 0
    }]
  },
  {
    "code" : "bothered-a-little",
    "display" : "Bothered a little",
    "designation" : [{
      "language" : "de",
      "value" : "Wenig beeinträchtigt"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "bothered-a-lot",
    "display" : "Bothered a lot",
    "designation" : [{
      "language" : "de",
      "value" : "Stark beeinträchtigt"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  }]
}

```
