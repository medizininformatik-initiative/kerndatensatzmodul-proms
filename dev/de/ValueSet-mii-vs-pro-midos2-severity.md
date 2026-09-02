# MII VS PRO MIDOS2 DGP-Severity-Skala - MII IG PRO v2026.7.0

## ValueSet: MII VS PRO MIDOS2 DGP-Severity-Skala (Experimentell) 

 
DGP-4-stufige Severity-Skala (keine, leichte, mittlere, starke) — wird für die 11 Symptom-Items des MIDOS2 verwendet. 

 **References** 

* [MII QST PRO MIDOS2](Questionnaire-mii-qst-pro-midos-midos2.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-midos2-severity",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity",
  "version" : "2026.7.0",
  "name" : "MII_VS_PRO_MIDOS2_Severity",
  "title" : "MII VS PRO MIDOS2 DGP-Severity-Skala",
  "status" : "draft",
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
  "description" : "DGP-4-stufige Severity-Skala (keine, leichte, mittlere, starke) — wird für die 11 Symptom-Items des MIDOS2 verwendet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
      "concept" : [{
        "code" : "midos2-severity-0"
      },
      {
        "code" : "midos2-severity-1"
      },
      {
        "code" : "midos2-severity-2"
      },
      {
        "code" : "midos2-severity-3"
      }]
    }]
  }
}

```
