# MII CS PRO MTSOSD-R59 Occurrence - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS PRO MTSOSD-R59 Occurrence**

## CodeSystem: MII CS PRO MTSOSD-R59 Occurrence (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence | *Version*:2027.0.0-rc.1 |
| Active as of 2026-11-05 | *Computable Name*:MII_CS_PRO_MTSOSD_R59_Occurrence |

 
Neutral benannte 5-stufige Auftretensskala des MTSOSD-R59 (metadata-only, Tier B). Konzeptbezeichnungen bewusst neutral (Stufe 0-4). itemWeight 0-4. 

This Code system is referenced in the definition of the following value sets:

* [MII VS PRO MTSOSD-R59 Occurrence](ValueSet-mii-vs-pro-mtsosd-r59-occurrence.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-pro-mtsosd-r59-occurrence",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence",
  "version" : "2027.0.0-rc.1",
  "name" : "MII_CS_PRO_MTSOSD_R59_Occurrence",
  "title" : "MII CS PRO MTSOSD-R59 Occurrence",
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
  "description" : "Neutral benannte 5-stufige Auftretensskala des MTSOSD-R59 (metadata-only, Tier B). Konzeptbezeichnungen bewusst neutral (Stufe 0-4). itemWeight 0-4.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "property" : [{
    "code" : "itemWeight",
    "uri" : "http://hl7.org/fhir/concept-properties#itemWeight",
    "description" : "Numerical weight for SDC calculatedExpression scoring via .weight()",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "stufe-0",
    "display" : "Stufe 0",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 0
    }]
  },
  {
    "code" : "stufe-1",
    "display" : "Stufe 1",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "stufe-2",
    "display" : "Stufe 2",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "stufe-3",
    "display" : "Stufe 3",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "stufe-4",
    "display" : "Stufe 4",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 4
    }]
  }]
}

```
