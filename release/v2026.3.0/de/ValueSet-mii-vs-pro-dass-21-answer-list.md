# MII VS PRO DASS-21 Answer List - MII IG PRO v2026.3.0

## ValueSet: MII VS PRO DASS-21 Answer List (Experimentell) 

 
4-point Likert response scale for all DASS-21 items (0 = Did not apply to me at all, 3 = Applied to me very much) 

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
  "id" : "mii-vs-pro-dass-21-answer-list",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-dass-21-answer-list",
  "version" : "2026.3.0",
  "name" : "MII_VS_PRO_DASS_21_Answer_List",
  "title" : "MII VS PRO DASS-21 Answer List",
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
  "description" : "4-point Likert response scale for all DASS-21 items (0 = Did not apply to me at all, 3 = Applied to me very much)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21",
      "concept" : [{
        "code" : "dass-dass21-answer-0"
      },
      {
        "code" : "dass-dass21-answer-1"
      },
      {
        "code" : "dass-dass21-answer-2"
      },
      {
        "code" : "dass-dass21-answer-3"
      }]
    }]
  }
}

```
