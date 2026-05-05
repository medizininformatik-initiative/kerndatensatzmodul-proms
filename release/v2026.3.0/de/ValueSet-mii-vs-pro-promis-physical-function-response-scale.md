# MII VS PRO PROMIS Physical Function Response Scale - MII IG PRO v2026.2.0

## ValueSet: MII VS PRO PROMIS Physical Function Response Scale (Experimentell) 

 
PROMIS Physical Function response scale based on LOINC LL1022-4 

 **References** 

* [MII QST PRO PROMIS-29 Minimal](Questionnaire-mii-qst-pro-promis-29-minimal.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-promis-physical-function-response-scale",
  "language" : "en",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale",
  "version" : "2026.2.0",
  "name" : "MII_VS_PRO_PROMIS_Physical_Function_Response_Scale",
  "title" : "MII VS PRO PROMIS Physical Function Response Scale",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-05-05T20:04:21+00:00",
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
  "description" : "PROMIS Physical Function response scale based on LOINC LL1022-4",
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
        "code" : "LA13921-4",
        "display" : "Without any difficulty",
        "designation" : [{
          "language" : "de",
          "value" : "Ohne jede Schwierigkeiten"
        }]
      },
      {
        "code" : "LA13918-0",
        "display" : "With a little difficulty",
        "designation" : [{
          "language" : "de",
          "value" : "Mit geringen Schwierigkeiten"
        }]
      },
      {
        "code" : "LA13920-6",
        "display" : "With some difficulty",
        "designation" : [{
          "language" : "de",
          "value" : "Mit einigen Schwierigkeiten"
        }]
      },
      {
        "code" : "LA13919-8",
        "display" : "With much difficulty",
        "designation" : [{
          "language" : "de",
          "value" : "Mit großen Schwierigkeiten"
        }]
      },
      {
        "code" : "LA13912-3",
        "display" : "Unable to do",
        "designation" : [{
          "language" : "de",
          "value" : "Kann ich gar nicht"
        }]
      }]
    }]
  }
}

```
