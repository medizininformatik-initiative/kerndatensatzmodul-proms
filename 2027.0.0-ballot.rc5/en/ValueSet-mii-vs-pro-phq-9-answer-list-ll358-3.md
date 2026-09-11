# MII VS PRO PHQ-9 Answer List LL358-3 - MII IG PRO v2027.0.0-ballot.rc5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS PRO PHQ-9 Answer List LL358-3**

## ValueSet: MII VS PRO PHQ-9 Answer List LL358-3 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-9-answer-list-ll358-3 | *Version*:2027.0.0-ballot.rc5 |
| Active as of 2026-09-11 | *Computable Name*:MII_VS_PRO_PHQ9_AnswerList_LL3583 |

 
Patient Health Questionnaire (PHQ-9) Not at all/Several days/More than half the days/Nearly every day 

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
  "id" : "mii-vs-pro-phq-9-answer-list-ll358-3",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-9-answer-list-ll358-3",
  "version" : "2027.0.0-ballot.rc5",
  "name" : "MII_VS_PRO_PHQ9_AnswerList_LL3583",
  "title" : "MII VS PRO PHQ-9 Answer List LL358-3",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T10:21:48+00:00",
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
  "description" : "Patient Health Questionnaire (PHQ-9) Not at all/Several days/More than half the days/Nearly every day",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
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
        "code" : "LA6569-3",
        "display" : "Several days",
        "designation" : [{
          "language" : "de",
          "value" : "An einzelnen Tagen"
        }]
      },
      {
        "code" : "LA6570-1",
        "display" : "More than half the days",
        "designation" : [{
          "language" : "de",
          "value" : "An mehr als der Hälfte der Tage"
        }]
      },
      {
        "code" : "LA6571-9",
        "display" : "Nearly every day",
        "designation" : [{
          "language" : "de",
          "value" : "Beinahe jeden Tag"
        }]
      }]
    }]
  }
}

```
