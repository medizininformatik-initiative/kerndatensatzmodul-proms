# MII VS PRO EORTC QLQ-C30 7-Point Scale - MII IG PRO v2026.4.1

## ValueSet: MII VS PRO EORTC QLQ-C30 7-Point Scale (Experimental) 

 
7-point response scale for EORTC QLQ-C30 global health status and quality of life items 

 **References** 

* [EORTC QLQ-C30 Quality of Life Questionnaire Version 3.0 - Variant A](Questionnaire-mii-qst-pro-eortc-qlq-c30-variant-a.md)

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
  "version" : "2026.4.1",
  "name" : "MII_VS_PRO_EORTC_QLQ_C30_Scale_7pt",
  "title" : "MII VS PRO EORTC QLQ-C30 7-Point Scale",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-23T11:58:37+00:00",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
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
