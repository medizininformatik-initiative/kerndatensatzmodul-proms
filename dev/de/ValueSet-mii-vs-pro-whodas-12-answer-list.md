# MII VS PRO WHODAS 2.0 12-Item Answer List - MII IG PRO v2026.7.0

## ValueSet: MII VS PRO WHODAS 2.0 12-Item Answer List (Experimentell) 

 
5-point response scale for all WHODAS-12 items (0 = None, 1 = Mild, 2 = Moderate, 3 = Severe, 4 = Extreme or cannot do). MII-controlled for reliable ordinal() score calculation; German labels via designations on mii-cs-pro-whodas-12. 

 **References** 

* [MII QST PRO WHODAS 2.0 12-Item](Questionnaire-mii-qst-pro-whodas-whodas12.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-whodas-12-answer-list",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-whodas-12-answer-list",
  "version" : "2026.7.0",
  "name" : "MII_VS_PRO_WHODAS_12_Answer_List",
  "title" : "MII VS PRO WHODAS 2.0 12-Item Answer List",
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
  "description" : "5-point response scale for all WHODAS-12 items (0 = None, 1 = Mild, 2 = Moderate, 3 = Severe, 4 = Extreme or cannot do). MII-controlled for reliable ordinal() score calculation; German labels via designations on mii-cs-pro-whodas-12.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-whodas-12",
      "concept" : [{
        "code" : "whodas12-answer-0"
      },
      {
        "code" : "whodas12-answer-1"
      },
      {
        "code" : "whodas12-answer-2"
      },
      {
        "code" : "whodas12-answer-3"
      },
      {
        "code" : "whodas12-answer-4"
      }]
    }]
  }
}

```
