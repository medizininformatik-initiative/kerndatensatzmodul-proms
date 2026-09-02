# MII VS PRO EORTC QLQ-C30 Role Functioning Scale - MII IG PRO v2026.7.0

## ValueSet: MII VS PRO EORTC QLQ-C30 Role Functioning Scale (Experimentell) 

 
4-point response scale for EORTC QLQ-C30 role functioning items 

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
  "id" : "mii-vs-pro-eortc-qlq-c30-scale-role",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-role",
  "version" : "2026.7.0",
  "name" : "MII_VS_PRO_EORTC_QLQ_C30_Scale_Role",
  "title" : "MII VS PRO EORTC QLQ-C30 Role Functioning Scale",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-02T06:47:03+00:00",
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
  "description" : "4-point response scale for EORTC QLQ-C30 role functioning items",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30",
      "concept" : [{
        "code" : "not-at-all-role"
      },
      {
        "code" : "a-little-role"
      },
      {
        "code" : "quite-a-bit-role"
      },
      {
        "code" : "very-much-role"
      }]
    }]
  }
}

```
