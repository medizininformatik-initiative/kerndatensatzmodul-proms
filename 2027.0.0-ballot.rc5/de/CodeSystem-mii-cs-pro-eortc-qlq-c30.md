# MII CS PRO EORTC QLQ-C30 Response Scale - MII IG PRO v2027.0.0-ballot.rc5

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS PRO EORTC QLQ-C30 Response Scale**

## CodeSystem: MII CS PRO EORTC QLQ-C30 Response Scale (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30 | *Version*:2027.0.0-ballot.rc5 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_CS_PRO_EORTC_QLQ_C30 |

 
Response scale for EORTC QLQ-C30 questionnaire items with multilingual support 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS PRO EORTC QLQ-C30 4-Point Scale](ValueSet-mii-vs-pro-eortc-qlq-c30-scale-4pt.md)
* [MII VS PRO EORTC QLQ-C30 7-Point Scale](ValueSet-mii-vs-pro-eortc-qlq-c30-scale-7pt.md)
* [MII VS PRO EORTC QLQ-C30 Role Functioning Scale](ValueSet-mii-vs-pro-eortc-qlq-c30-scale-role.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-pro-eortc-qlq-c30",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30",
  "version" : "2027.0.0-ballot.rc5",
  "name" : "MII_CS_PRO_EORTC_QLQ_C30",
  "title" : "MII CS PRO EORTC QLQ-C30 Response Scale",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-11T10:21:48+00:00",
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
  "description" : "Response scale for EORTC QLQ-C30 questionnaire items with multilingual support",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 15,
  "concept" : [{
    "code" : "not-at-all",
    "display" : "Not at all",
    "designation" : [{
      "language" : "de",
      "value" : "Überhaupt nicht"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "a-little",
    "display" : "A little",
    "designation" : [{
      "language" : "de",
      "value" : "Wenig"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "quite-a-bit",
    "display" : "Quite a bit",
    "designation" : [{
      "language" : "de",
      "value" : "Mäßig"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "very-much",
    "display" : "Very much",
    "designation" : [{
      "language" : "de",
      "value" : "Sehr"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 4
    }]
  },
  {
    "code" : "not-at-all-role",
    "display" : "Not at all",
    "designation" : [{
      "language" : "de",
      "value" : "Überhaupt nicht"
    }]
  },
  {
    "code" : "a-little-role",
    "display" : "A little",
    "designation" : [{
      "language" : "de",
      "value" : "Wenig"
    }]
  },
  {
    "code" : "quite-a-bit-role",
    "display" : "Quite a bit",
    "designation" : [{
      "language" : "de",
      "value" : "Mäßig"
    }]
  },
  {
    "code" : "very-much-role",
    "display" : "Very much",
    "designation" : [{
      "language" : "de",
      "value" : "Sehr"
    }]
  },
  {
    "code" : "1-very-poor",
    "display" : "1 - Very poor",
    "designation" : [{
      "language" : "de",
      "value" : "1 - Sehr schlecht"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "2-poor",
    "display" : "2 - Poor",
    "designation" : [{
      "language" : "de",
      "value" : "2 - Schlecht"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "3-fair",
    "display" : "3 - Fair",
    "designation" : [{
      "language" : "de",
      "value" : "3 - Mittelmäßig"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "4-good",
    "display" : "4 - Good",
    "designation" : [{
      "language" : "de",
      "value" : "4 - Gut"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 4
    }]
  },
  {
    "code" : "5-very-good",
    "display" : "5 - Very good",
    "designation" : [{
      "language" : "de",
      "value" : "5 - Sehr gut"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 5
    }]
  },
  {
    "code" : "6-excellent",
    "display" : "6 - Excellent",
    "designation" : [{
      "language" : "de",
      "value" : "6 - Ausgezeichnet"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 6
    }]
  },
  {
    "code" : "7-perfect",
    "display" : "7 - Perfect",
    "designation" : [{
      "language" : "de",
      "value" : "7 - Vollkommen"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 7
    }]
  }]
}

```
