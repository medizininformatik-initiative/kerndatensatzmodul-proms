# MII VS PRO PHQ-9 Answer List LL358-3 - MII IG PRO v2026.5.2

## ValueSet: MII VS PRO PHQ-9 Answer List LL358-3 

 
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
  "version" : "2026.5.2",
  "name" : "MII_VS_PRO_PHQ9_AnswerList_LL3583",
  "title" : "MII VS PRO PHQ-9 Answer List LL358-3",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-27T21:31:58+00:00",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 0
        }],
        "code" : "LA6568-5",
        "display" : "Not at all",
        "designation" : [{
          "language" : "de",
          "value" : "Überhaupt nicht"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 1
        }],
        "code" : "LA6569-3",
        "display" : "Several days",
        "designation" : [{
          "language" : "de",
          "value" : "An einzelnen Tagen"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 2
        }],
        "code" : "LA6570-1",
        "display" : "More than half the days",
        "designation" : [{
          "language" : "de",
          "value" : "An mehr als der Hälfte der Tage"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 3
        }],
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
