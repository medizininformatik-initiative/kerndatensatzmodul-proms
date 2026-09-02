# MII CS PRO SSD-12 Answers - MII IG PRO v2026.6.0

## CodeSystem: MII CS PRO SSD-12 Answers 

 
MII-controlled frequency answer scale for SSD-12 (0-4). English display with German designation (original instrument wording). ordinalValue properties on each concept enable SDC ordinal scoring via answerValueSet. 

This Code system is referenced in the definition of the following value sets:

* [MII VS PRO SSD-12 Answers](ValueSet-mii-vs-pro-ssd-12-answers.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-pro-ssd-12-answers",
  "language" : "en",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-ssd-12-answers",
  "version" : "2026.6.0",
  "name" : "MII_CS_PRO_SSD_12_Answers",
  "title" : "MII CS PRO SSD-12 Answers",
  "status" : "active",
  "date" : "2026-09-02T06:41:53+00:00",
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
  "description" : "MII-controlled frequency answer scale for SSD-12 (0-4). English display with German designation (original instrument wording). ordinalValue properties on each concept enable SDC ordinal scoring via answerValueSet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "content" : "complete",
  "count" : 5,
  "property" : [{
    "code" : "ordinalValue",
    "uri" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
    "description" : "Numerical ordinal value (0-4) for SDC calculatedExpression scoring via .ordinal().sum()",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "never",
    "display" : "nie",
    "designation" : [{
      "language" : "en",
      "value" : "Never"
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 0
    }]
  },
  {
    "code" : "rarely",
    "display" : "selten",
    "designation" : [{
      "language" : "en",
      "value" : "Rarely"
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "sometimes",
    "display" : "manchmal",
    "designation" : [{
      "language" : "en",
      "value" : "Sometimes"
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "often",
    "display" : "oft",
    "designation" : [{
      "language" : "en",
      "value" : "Often"
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "very-often",
    "display" : "sehr oft",
    "designation" : [{
      "language" : "en",
      "value" : "Very often"
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 4
    }]
  }]
}

```
