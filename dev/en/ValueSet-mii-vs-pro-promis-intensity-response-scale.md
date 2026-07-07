# MII VS PRO PROMIS Intensity Response Scale - MII IG PRO v2026.4.1

## ValueSet: MII VS PRO PROMIS Intensity Response Scale (Experimental) 

 
PROMIS Intensity response scale (Not at all / A little bit / Somewhat / Quite a bit / Very much) based on LOINC LL1024-0 

 **References** 

* [MII QST PRO PROMIS-16 (Adults)](Questionnaire-mii-qst-pro-promis-16.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-promis-intensity-response-scale",
  "language" : "en",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale",
  "version" : "2026.4.1",
  "name" : "MII_VS_PRO_PROMIS_Intensity_Response_Scale",
  "title" : "MII VS PRO PROMIS Intensity Response Scale",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-07T06:23:56+00:00",
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
  "description" : "PROMIS Intensity response scale (Not at all / A little bit / Somewhat / Quite a bit / Very much) based on LOINC LL1024-0",
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
        "code" : "LA6568-5",
        "display" : "Not at all",
        "designation" : [{
          "language" : "de",
          "value" : "Überhaupt nicht"
        }]
      },
      {
        "code" : "LA13863-8",
        "display" : "A little bit",
        "designation" : [{
          "language" : "de",
          "value" : "Ein wenig"
        }]
      },
      {
        "code" : "LA13909-9",
        "display" : "Somewhat",
        "designation" : [{
          "language" : "de",
          "value" : "Mäßig"
        }]
      },
      {
        "code" : "LA13902-4",
        "display" : "Quite a bit",
        "designation" : [{
          "language" : "de",
          "value" : "Ziemlich"
        }]
      },
      {
        "code" : "LA13914-9",
        "display" : "Very much",
        "designation" : [{
          "language" : "de",
          "value" : "Sehr"
        }]
      }]
    }]
  }
}

```
