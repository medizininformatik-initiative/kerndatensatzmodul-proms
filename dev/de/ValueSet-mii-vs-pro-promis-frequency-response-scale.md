# MII VS PRO PROMIS Frequency Response Scale - MII IG PRO v2026.4.0

## ValueSet: MII VS PRO PROMIS Frequency Response Scale (Experimentell) 

 
PROMIS Frequency response scale based on LOINC LL1016-6 

 **References** 

* [MII QST PRO PROMIS-16 (Adults)](Questionnaire-mii-qst-pro-promis-16.md)
* [MII QST PRO PROMIS-29 Minimal](Questionnaire-mii-qst-pro-promis-29-minimal.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-promis-frequency-response-scale",
  "language" : "en",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale",
  "version" : "2026.4.0",
  "name" : "MII_VS_PRO_PROMIS_Frequency_Response_Scale",
  "title" : "MII VS PRO PROMIS Frequency Response Scale",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-06-14T20:00:22+00:00",
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
  "description" : "PROMIS Frequency response scale based on LOINC LL1016-6",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA6270-8",
        "display" : "Never",
        "designation" : [{
          "language" : "de",
          "value" : "Nie"
        }]
      },
      {
        "code" : "LA10066-1",
        "display" : "Rarely",
        "designation" : [{
          "language" : "de",
          "value" : "Selten"
        }]
      },
      {
        "code" : "LA10082-8",
        "display" : "Sometimes",
        "designation" : [{
          "language" : "de",
          "value" : "Manchmal"
        }]
      },
      {
        "code" : "LA10044-8",
        "display" : "Often",
        "designation" : [{
          "language" : "de",
          "value" : "Oft"
        }]
      },
      {
        "code" : "LA9933-8",
        "display" : "Always",
        "designation" : [{
          "language" : "de",
          "value" : "Immer"
        }]
      }]
    }]
  }
}

```
