# MII VS PRO EORTC QLQ-C30 4-Point Scale - MII IG PRO v2026.3.0

## ValueSet: MII VS PRO EORTC QLQ-C30 4-Point Scale (Experimental) 

 
Standard 4-point response scale for EORTC QLQ-C30 items 

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
  "id" : "mii-vs-pro-eortc-qlq-c30-scale-4pt",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt",
  "version" : "2026.3.0",
  "name" : "MII_VS_PRO_EORTC_QLQ_C30_Scale_4pt",
  "title" : "MII VS PRO EORTC QLQ-C30 4-Point Scale",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-05-06T16:39:55+00:00",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
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
