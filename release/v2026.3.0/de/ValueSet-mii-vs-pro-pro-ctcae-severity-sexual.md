# MII VS PRO PRO-CTCAE Severity Scale (Sexual Function) - MII IG PRO v2026.3.0

## ValueSet: MII VS PRO PRO-CTCAE Severity Scale (Sexual Function) (Experimentell) 

 
7-point severity scale for sexual function items: standard 5 options plus 'Not sexually active' and 'Prefer not to answer' 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-pro-ctcae-severity-sexual",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity-sexual",
  "version" : "2026.3.0",
  "name" : "MII_VS_PRO_PRO_CTCAE_Severity_Sexual",
  "title" : "MII VS PRO PRO-CTCAE Severity Scale (Sexual Function)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-05-06T16:46:31+00:00",
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
  "description" : "7-point severity scale for sexual function items: standard 5 options plus 'Not sexually active' and 'Prefer not to answer'",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-pro-ctcae",
      "concept" : [{
        "code" : "proctcae-severity-0"
      },
      {
        "code" : "proctcae-severity-1"
      },
      {
        "code" : "proctcae-severity-2"
      },
      {
        "code" : "proctcae-severity-3"
      },
      {
        "code" : "proctcae-severity-4"
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
