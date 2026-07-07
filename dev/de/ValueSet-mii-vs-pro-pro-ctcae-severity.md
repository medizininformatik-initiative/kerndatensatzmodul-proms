# MII VS PRO PRO-CTCAE Severity Scale - MII IG PRO v2026.5.0

## ValueSet: MII VS PRO PRO-CTCAE Severity Scale (Experimentell) 

 
5-point severity response scale for PRO-CTCAE items (0=None, 4=Very severe) 

 **References** 

* [PRO-CTCAE Deutsches Brustkrebszentrum-Subset (21 Symptome)](Questionnaire-mii-qst-pro-pro-ctcae-breast-de.md)
* [MII QST PRO PRO-CTCAE Onkologisches Basisscreening](Questionnaire-mii-qst-pro-pro-ctcae-onkologisches-basisscreening.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-pro-ctcae-severity",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity",
  "version" : "2026.5.0",
  "name" : "MII_VS_PRO_PRO_CTCAE_Severity",
  "title" : "MII VS PRO PRO-CTCAE Severity Scale",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-07T13:30:17+00:00",
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
  "description" : "5-point severity response scale for PRO-CTCAE items (0=None, 4=Very severe)",
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
      }]
    }]
  }
}

```
