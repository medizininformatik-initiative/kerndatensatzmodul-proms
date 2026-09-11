# MII CS PRO ISR-Z Answers - MII IG PRO v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS PRO ISR-Z Answers**

## CodeSystem: MII CS PRO ISR-Z Answers 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-isr-z-answers | *Version*:2027.0.0-ballot |
| Active as of 2026-09-11 | *Computable Name*:MII_CS_PRO_ISR_Z_Answers |

 
MII-controlled Zustimmungsskala des ISR (0-4), deutsches Original. itemWeight-Property je Konzept ermöglicht SDC-Ordinalscoring via answerValueSet. 

This Code system is referenced in the definition of the following value sets:

* [MII VS PRO ISR-Z Answers](ValueSet-mii-vs-pro-isr-z-answers.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-pro-isr-z-answers",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-isr-z-answers",
  "version" : "2027.0.0-ballot",
  "name" : "MII_CS_PRO_ISR_Z_Answers",
  "title" : "MII CS PRO ISR-Z Answers",
  "status" : "active",
  "date" : "2026-09-11T13:09:25+00:00",
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
  "description" : "MII-controlled Zustimmungsskala des ISR (0-4), deutsches Original. itemWeight-Property je Konzept ermöglicht SDC-Ordinalscoring via answerValueSet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "content" : "complete",
  "count" : 5,
  "property" : [{
    "code" : "itemWeight",
    "uri" : "http://hl7.org/fhir/concept-properties#itemWeight",
    "description" : "Numerical ordinal value (0-4) for SDC calculatedExpression scoring via .weight().avg()",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "trifft-nicht-zu",
    "display" : "trifft nicht zu",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 0
    }]
  },
  {
    "code" : "trifft-kaum-zu",
    "display" : "trifft kaum zu",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "trifft-ziemlich-zu",
    "display" : "trifft ziemlich zu",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "trifft-deutlich-zu",
    "display" : "trifft deutlich zu",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "trifft-extrem-zu",
    "display" : "trifft extrem zu",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 4
    }]
  }]
}

```
