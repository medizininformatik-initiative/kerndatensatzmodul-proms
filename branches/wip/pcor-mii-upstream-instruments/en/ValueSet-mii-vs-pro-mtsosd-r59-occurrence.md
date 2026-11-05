# MII VS PRO MTSOSD-R59 Occurrence - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS PRO MTSOSD-R59 Occurrence**

## ValueSet: MII VS PRO MTSOSD-R59 Occurrence (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence | *Version*:2027.0.0-rc.1 |
| Active as of 2026-11-05 | *Computable Name*:MII_VS_PRO_MTSOSD_R59_Occurrence |

 
Neutral benannte 5-stufige Auftretensskala des MTSOSD-R59 (Stufe 0-4), metadata-only (Tier B). 

 **References** 

* [MTSOSD-R59 (metadata-only)](Questionnaire-mii-qst-pro-mtsosd-r59.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-mtsosd-r59-occurrence",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-mtsosd-r59-occurrence",
  "version" : "2027.0.0-rc.1",
  "name" : "MII_VS_PRO_MTSOSD_R59_Occurrence",
  "title" : "MII VS PRO MTSOSD-R59 Occurrence",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-11-05T08:15:37+00:00",
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
  "description" : "Neutral benannte 5-stufige Auftretensskala des MTSOSD-R59 (Stufe 0-4), metadata-only (Tier B).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence"
    }]
  }
}

```
