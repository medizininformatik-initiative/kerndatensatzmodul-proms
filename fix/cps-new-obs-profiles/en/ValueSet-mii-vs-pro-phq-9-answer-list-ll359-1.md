# MII VS PRO PHQ-9 Answer List LL359-1 - MII IG PRO v2026.5.0

## ValueSet: MII VS PRO PHQ-9 Answer List LL359-1 

 
Not difficult at all/Somewhat difficult/Very difficult/Extremely difficult-Perceived difficulty (PHQ-9) 

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
  "id" : "mii-vs-pro-phq-9-answer-list-ll359-1",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-9-answer-list-ll359-1",
  "version" : "2026.5.0",
  "name" : "MII_VS_PRO_PHQ9_AnswerList_LL3591",
  "title" : "MII VS PRO PHQ-9 Answer List LL359-1",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Not difficult at all/Somewhat difficult/Very difficult/Extremely difficult-Perceived difficulty (PHQ-9)",
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
        "code" : "LA6572-7",
        "display" : "Not difficult at all",
        "designation" : [{
          "language" : "de",
          "value" : "Überhaupt nicht erschwert"
        }]
      },
      {
        "code" : "LA6573-5",
        "display" : "Somewhat difficult",
        "designation" : [{
          "language" : "de",
          "value" : "Etwas erschwert"
        }]
      },
      {
        "code" : "LA6575-0",
        "display" : "Very difficult",
        "designation" : [{
          "language" : "de",
          "value" : "Relativ stark erschwert"
        }]
      },
      {
        "code" : "LA6574-3",
        "display" : "Extremely difficult",
        "designation" : [{
          "language" : "de",
          "value" : "Sehr stark erschwert"
        }]
      }]
    }]
  }
}

```
