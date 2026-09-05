# MII CS PRO PHQ-15 Answers - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS PRO PHQ-15 Answers**

## CodeSystem: MII CS PRO PHQ-15 Answers 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-phq-15-answers | *Version*:2026.7.0 |
| Active as of 2026-09-05 | *Computable Name*:MII_CS_PRO_PHQ_15_Answers |

 
MII-controlled bother severity answer scale for PHQ-15 (0–2). English primary with German designations. ordinalValue properties on each concept enable SDC ordinal scoring via answerValueSet. 

This Code system is referenced in the definition of the following value sets:

* [MII VS PRO PHQ-15 Answers](ValueSet-mii-vs-pro-phq-15-answers.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-pro-phq-15-answers",
  "language" : "en",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-phq-15-answers",
  "version" : "2026.7.0",
  "name" : "MII_CS_PRO_PHQ_15_Answers",
  "title" : "MII CS PRO PHQ-15 Answers",
  "status" : "active",
  "date" : "2026-09-05T06:23:19+00:00",
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
  "description" : "MII-controlled bother severity answer scale for PHQ-15 (0–2). English primary with German designations. ordinalValue properties on each concept enable SDC ordinal scoring via answerValueSet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "content" : "complete",
  "count" : 3,
  "property" : [{
    "code" : "ordinalValue",
    "uri" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
    "description" : "Numerical ordinal value (0–2) for SDC calculatedExpression scoring via .ordinal().sum()",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "not-bothered",
    "display" : "Not bothered at all",
    "designation" : [{
      "language" : "de",
      "value" : "Nicht beeinträchtigt"
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 0
    }]
  },
  {
    "code" : "bothered-a-little",
    "display" : "Bothered a little",
    "designation" : [{
      "language" : "de",
      "value" : "Wenig beeinträchtigt"
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "bothered-a-lot",
    "display" : "Bothered a lot",
    "designation" : [{
      "language" : "de",
      "value" : "Stark beeinträchtigt"
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 2
    }]
  }]
}

```
