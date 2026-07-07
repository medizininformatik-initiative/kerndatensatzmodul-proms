# MII VS PRO PRO-CTCAE Severity Scale (Radiation) - MII IG PRO v2026.5.0

## ValueSet: MII VS PRO PRO-CTCAE Severity Scale (Radiation) (Experimental) 

 
6-point severity scale for radiation items: standard 5 options plus 'Not applicable' 

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
  "id" : "mii-vs-pro-pro-ctcae-severity-radiation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity-radiation",
  "version" : "2026.5.0",
  "name" : "MII_VS_PRO_PRO_CTCAE_Severity_Radiation",
  "title" : "MII VS PRO PRO-CTCAE Severity Scale (Radiation)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-07T13:29:05+00:00",
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
  "description" : "6-point severity scale for radiation items: standard 5 options plus 'Not applicable'",
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
        "code" : "proctcae-optout-not-applicable"
      }]
    }]
  }
}

```
