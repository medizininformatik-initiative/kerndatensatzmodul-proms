# MII VS PRO Trigger Event Type - MII IG PRO v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS PRO Trigger Event Type**

## ValueSet: MII VS PRO Trigger Event Type 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-trigger-event-type | *Version*:2027.0.0-ballot.2 |
| Draft as of 2026-11-25 | *Computable Name*:MII_VS_PRO_Trigger_Event_Type |

 
All concepts of the MII CS PRO Trigger Event Type: the triggering event or purpose of a PRO collection (collection context, HDB-1030). 

 **References** 

* [MII EX PRO Collection Context](StructureDefinition-mii-ex-pro-collection-context.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-trigger-event-type",
  "language" : "en",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-trigger-event-type",
  "version" : "2027.0.0-ballot.2",
  "name" : "MII_VS_PRO_Trigger_Event_Type",
  "title" : "MII VS PRO Trigger Event Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-11-25T09:23:42+00:00",
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
  "description" : "All concepts of the MII CS PRO Trigger Event Type: the triggering event or purpose of a PRO collection (collection context, HDB-1030).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-trigger-event-type"
    }]
  }
}

```
