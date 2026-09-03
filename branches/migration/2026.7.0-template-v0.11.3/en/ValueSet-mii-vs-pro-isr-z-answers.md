# MII VS PRO ISR-Z Answers - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS PRO ISR-Z Answers**

## ValueSet: MII VS PRO ISR-Z Answers 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-isr-z-answers | *Version*:2026.7.0 |
| Active as of 2026-09-03 | *Computable Name*:MII_VS_PRO_ISR_Z_Answers |

 
ISR-Zustimmungsskala (0 = trifft nicht zu, 1 = trifft kaum zu, 2 = trifft ziemlich zu, 3 = trifft deutlich zu, 4 = trifft extrem zu). MII-controlled für zuverlässige ordinal()-Scoreberechnung. 

 **References** 

* [MII QST PRO ISR-Z](Questionnaire-mii-qst-pro-isr-z.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-isr-z-answers",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-isr-z-answers",
  "version" : "2026.7.0",
  "name" : "MII_VS_PRO_ISR_Z_Answers",
  "title" : "MII VS PRO ISR-Z Answers",
  "status" : "active",
  "date" : "2026-09-03T20:03:19+00:00",
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
  "description" : "ISR-Zustimmungsskala (0 = trifft nicht zu, 1 = trifft kaum zu, 2 = trifft ziemlich zu, 3 = trifft deutlich zu, 4 = trifft extrem zu). MII-controlled für zuverlässige ordinal()-Scoreberechnung.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-isr-z-answers"
    }]
  }
}

```
