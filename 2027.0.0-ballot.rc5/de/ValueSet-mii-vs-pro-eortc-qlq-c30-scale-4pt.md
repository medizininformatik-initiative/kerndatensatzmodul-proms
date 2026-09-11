# MII VS PRO EORTC QLQ-C30 4-Point Scale - MII IG PRO v2027.0.0-ballot.rc5

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS PRO EORTC QLQ-C30 4-Point Scale**

## ValueSet: MII VS PRO EORTC QLQ-C30 4-Point Scale (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt | *Version*:2027.0.0-ballot.rc5 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_VS_PRO_EORTC_QLQ_C30_Scale_4pt |

 
Standard 4-point response scale for EORTC QLQ-C30 items 

 **References** 

* [EORTC QLQ-C30 Quality of Life Questionnaire Version 3.0](Questionnaire-mii-qst-pro-eortc-qlq-c30.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-eortc-qlq-c30-scale-4pt",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt",
  "version" : "2027.0.0-ballot.rc5",
  "name" : "MII_VS_PRO_EORTC_QLQ_C30_Scale_4pt",
  "title" : "MII VS PRO EORTC QLQ-C30 4-Point Scale",
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
  "description" : "Standard 4-point response scale for EORTC QLQ-C30 items",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30",
      "concept" : [{
        "code" : "not-at-all",
        "display" : "Not at all"
      },
      {
        "code" : "a-little",
        "display" : "A little"
      },
      {
        "code" : "quite-a-bit",
        "display" : "Quite a bit"
      },
      {
        "code" : "very-much",
        "display" : "Very much"
      }]
    }]
  }
}

```
