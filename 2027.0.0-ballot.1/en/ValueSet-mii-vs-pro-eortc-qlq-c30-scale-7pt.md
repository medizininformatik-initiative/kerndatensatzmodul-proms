# MII VS PRO EORTC QLQ-C30 7-Point Scale - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS PRO EORTC QLQ-C30 7-Point Scale**

## ValueSet: MII VS PRO EORTC QLQ-C30 7-Point Scale (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-7pt | *Version*:2027.0.0-ballot.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_VS_PRO_EORTC_QLQ_C30_Scale_7pt |

 
7-point response scale for EORTC QLQ-C30 global health status and quality of life items 

 **References** 

* [EORTC QLQ-C30 Quality of Life Questionnaire Version 3.0](Questionnaire-mii-qst-pro-eortc-qlq-c30.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-eortc-qlq-c30-scale-7pt",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-7pt",
  "version" : "2027.0.0-ballot.1",
  "name" : "MII_VS_PRO_EORTC_QLQ_C30_Scale_7pt",
  "title" : "MII VS PRO EORTC QLQ-C30 7-Point Scale",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-11T15:59:56+00:00",
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
  "description" : "7-point response scale for EORTC QLQ-C30 global health status and quality of life items",
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
        "code" : "1-very-poor"
      },
      {
        "code" : "2-poor"
      },
      {
        "code" : "3-fair"
      },
      {
        "code" : "4-good"
      },
      {
        "code" : "5-very-good"
      },
      {
        "code" : "6-excellent"
      },
      {
        "code" : "7-perfect"
      }]
    }]
  }
}

```
