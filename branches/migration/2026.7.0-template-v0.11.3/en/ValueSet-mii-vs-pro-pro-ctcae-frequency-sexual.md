# MII VS PRO PRO-CTCAE Frequency Scale (Sexual Function) - MII IG PRO v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS PRO PRO-CTCAE Frequency Scale (Sexual Function)**

## ValueSet: MII VS PRO PRO-CTCAE Frequency Scale (Sexual Function) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency-sexual | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-07 | *Computable Name*:MII_VS_PRO_PRO_CTCAE_Frequency_Sexual |

 
7-point frequency scale for sexual function items: standard 5 options plus 'Not sexually active' and 'Prefer not to answer' 

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
  "id" : "mii-vs-pro-pro-ctcae-frequency-sexual",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency-sexual",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_PRO_PRO_CTCAE_Frequency_Sexual",
  "title" : "MII VS PRO PRO-CTCAE Frequency Scale (Sexual Function)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-07T13:38:54+00:00",
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
  "description" : "7-point frequency scale for sexual function items: standard 5 options plus 'Not sexually active' and 'Prefer not to answer'",
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
        "code" : "proctcae-frequency-0"
      },
      {
        "code" : "proctcae-frequency-1"
      },
      {
        "code" : "proctcae-frequency-2"
      },
      {
        "code" : "proctcae-frequency-3"
      },
      {
        "code" : "proctcae-frequency-4"
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
