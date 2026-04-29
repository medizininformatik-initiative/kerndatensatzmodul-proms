# MII CS PRO EORTC QLQ-C30 Response Scale - MII IG PRO v2026.2.0

## CodeSystem: MII CS PRO EORTC QLQ-C30 Response Scale (Experimentell) 

 
Response scale for EORTC QLQ-C30 questionnaire items with multilingual support 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII_VS_PRO_EORTC_QLQ_C30_Scale_4pt](ValueSet-mii-vs-pro-eortc-qlq-c30-scale-4pt.md)
* [MII_VS_PRO_EORTC_QLQ_C30_Scale_7pt](ValueSet-mii-vs-pro-eortc-qlq-c30-scale-7pt.md)
* [MII_VS_PRO_EORTC_QLQ_C30_Scale_Role](ValueSet-mii-vs-pro-eortc-qlq-c30-scale-role.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-pro-eortc-qlq-c30",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30",
  "version" : "2026.2.0",
  "name" : "MII_CS_PRO_EORTC_QLQ_C30",
  "title" : "MII CS PRO EORTC QLQ-C30 Response Scale",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-04-29T06:19:54+00:00",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
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
    }]
  },
  {
    "code" : "a-little",
    "display" : "A little",
    "designation" : [{
      "language" : "de",
      "value" : "Wenig"
    }]
  },
  {
    "code" : "quite-a-bit",
    "display" : "Quite a bit",
    "designation" : [{
      "language" : "de",
      "value" : "Mäßig"
    }]
  },
  {
    "code" : "very-much",
    "display" : "Very much",
    "designation" : [{
      "language" : "de",
      "value" : "Sehr"
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
    }]
  },
  {
    "code" : "2-poor",
    "display" : "2 - Poor",
    "designation" : [{
      "language" : "de",
      "value" : "2 - Schlecht"
    }]
  },
  {
    "code" : "3-fair",
    "display" : "3 - Fair",
    "designation" : [{
      "language" : "de",
      "value" : "3 - Mittelmäßig"
    }]
  },
  {
    "code" : "4-good",
    "display" : "4 - Good",
    "designation" : [{
      "language" : "de",
      "value" : "4 - Gut"
    }]
  },
  {
    "code" : "5-very-good",
    "display" : "5 - Very good",
    "designation" : [{
      "language" : "de",
      "value" : "5 - Sehr gut"
    }]
  },
  {
    "code" : "6-excellent",
    "display" : "6 - Excellent",
    "designation" : [{
      "language" : "de",
      "value" : "6 - Ausgezeichnet"
    }]
  },
  {
    "code" : "7-perfect",
    "display" : "7 - Perfect",
    "designation" : [{
      "language" : "de",
      "value" : "7 - Vollkommen"
    }]
  }]
}

```
