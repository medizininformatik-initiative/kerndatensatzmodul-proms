# MII VS PRO PRO-CTCAE Presence Scale (Sexual Function) - MII IG PRO v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS PRO PRO-CTCAE Presence Scale (Sexual Function)**

## ValueSet: MII VS PRO PRO-CTCAE Presence Scale (Sexual Function) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-presence-sexual | *Version*:2027.0.0-ballot |
| Active as of 2026-09-06 | *Computable Name*:MII_VS_PRO_PRO_CTCAE_Presence_Sexual |

 
4-option presence scale for sexual function: Yes / No / Not sexually active / Prefer not to answer 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-pro-ctcae-presence-sexual",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-presence-sexual",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_PRO_PRO_CTCAE_Presence_Sexual",
  "title" : "MII VS PRO PRO-CTCAE Presence Scale (Sexual Function)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-06T21:42:10+00:00",
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
  "description" : "4-option presence scale for sexual function: Yes / No / Not sexually active / Prefer not to answer",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-pro-ctcae",
      "concept" : [{
        "code" : "proctcae-presence-1"
      },
      {
        "code" : "proctcae-presence-0"
      },
      {
        "code" : "proctcae-optout-not-sexually-active"
      },
      {
        "code" : "proctcae-optout-prefer-not-to-answer"
      }]
    }]
  }
}

```
