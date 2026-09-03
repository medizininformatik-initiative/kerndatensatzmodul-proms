# MII VS PRO SSD-12 Answers - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS PRO SSD-12 Answers**

## ValueSet: MII VS PRO SSD-12 Answers 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-ssd-12-answers | *Version*:2026.7.0 |
| Active as of 2026-09-03 | *Computable Name*:MII_VS_PRO_SSD_12_Answers |

 
SSD-12 frequency answer options (0 = nie, 1 = selten, 2 = manchmal, 3 = oft, 4 = sehr oft). MII-controlled for reliable ordinal() score calculation. 

 **References** 

* [MII QST PRO SSD-12](Questionnaire-mii-qst-pro-ssd-12.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-ssd-12-answers",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-ssd-12-answers",
  "version" : "2026.7.0",
  "name" : "MII_VS_PRO_SSD_12_Answers",
  "title" : "MII VS PRO SSD-12 Answers",
  "status" : "active",
  "date" : "2026-09-03T19:45:41+00:00",
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
  "description" : "SSD-12 frequency answer options (0 = nie, 1 = selten, 2 = manchmal, 3 = oft, 4 = sehr oft). MII-controlled for reliable ordinal() score calculation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-ssd-12-answers"
    }]
  }
}

```
