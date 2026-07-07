# MII VS PRO MIDOS2 Wohlbefinden-Skala - MII IG PRO v2026.4.1

## ValueSet: MII VS PRO MIDOS2 Wohlbefinden-Skala (Experimental) 

 
4-stufige Wohlbefinden-Skala (sehr gut, eher gut, eher schlecht, sehr schlecht) — wird für das Wohlbefinden-Item des MIDOS2 verwendet. 

 **References** 

* [MII QST PRO MIDOS2](Questionnaire-mii-qst-pro-midos-midos2.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-midos2-wellbeing",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-wellbeing",
  "version" : "2026.4.1",
  "name" : "MII_VS_PRO_MIDOS2_Wellbeing",
  "title" : "MII VS PRO MIDOS2 Wohlbefinden-Skala",
  "status" : "draft",
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
  "description" : "4-stufige Wohlbefinden-Skala (sehr gut, eher gut, eher schlecht, sehr schlecht) — wird für das Wohlbefinden-Item des MIDOS2 verwendet.",
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
        "code" : "midos2-wellbeing-0"
      },
      {
        "code" : "midos2-wellbeing-1"
      },
      {
        "code" : "midos2-wellbeing-2"
      },
      {
        "code" : "midos2-wellbeing-3"
      }]
    }]
  }
}

```
