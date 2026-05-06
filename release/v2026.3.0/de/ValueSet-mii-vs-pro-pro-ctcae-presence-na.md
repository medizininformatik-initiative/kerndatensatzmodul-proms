# MII VS PRO PRO-CTCAE Presence Scale (with Not Applicable) - MII IG PRO v2026.3.0

## ValueSet: MII VS PRO PRO-CTCAE Presence Scale (with Not Applicable) (Experimentell) 

 
3-option presence scale: Yes / No / Not applicable 

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
  "id" : "mii-vs-pro-pro-ctcae-presence-na",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-presence-na",
  "version" : "2026.3.0",
  "name" : "MII_VS_PRO_PRO_CTCAE_Presence_NA",
  "title" : "MII VS PRO PRO-CTCAE Presence Scale (with Not Applicable)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-05-06T16:39:55+00:00",
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
  "description" : "3-option presence scale: Yes / No / Not applicable",
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
        "code" : "proctcae-presence-1"
      },
      {
        "code" : "proctcae-presence-0"
      },
      {
        "code" : "proctcae-optout-not-applicable"
      }]
    }]
  }
}

```
