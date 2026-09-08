# MII VS PRO BDI-II - MII IG PRO v2027.0.0-ballot.rc4

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS PRO BDI-II**

## ValueSet: MII VS PRO BDI-II (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short | *Version*:2027.0.0-ballot.rc4 |
| Active Stand: 2026-09-08 | *Maschinenlesbarer Name*:MII_VS_PRO_BDI_BDI2_AnswerListShort |

 
MII VS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire 

 **References** 

* [MII QST PRO BDI-II](Questionnaire-mii-qst-pro-bdi-bdi2.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-bdi-bdi2-short",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short",
  "version" : "2027.0.0-ballot.rc4",
  "name" : "MII_VS_PRO_BDI_BDI2_AnswerListShort",
  "title" : "MII VS PRO BDI-II",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-08T16:46:13+00:00",
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
  "description" : "MII VS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-bdi-bdi2",
      "concept" : [{
        "code" : "bdi-bdi2-answer-0"
      },
      {
        "code" : "bdi-bdi2-answer-1"
      },
      {
        "code" : "bdi-bdi2-answer-2"
      },
      {
        "code" : "bdi-bdi2-answer-3"
      }]
    }]
  }
}

```
