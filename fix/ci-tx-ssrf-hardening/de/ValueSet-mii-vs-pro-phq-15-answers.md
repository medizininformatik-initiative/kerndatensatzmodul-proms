# MII VS PRO PHQ-15 Answers - MII IG PRO v2026.6.0

## ValueSet: MII VS PRO PHQ-15 Answers 

 
PHQ-15 somatic symptom bother severity answer options (0 = Nicht beeinträchtigt, 1 = Wenig beeinträchtigt, 2 = Stark beeinträchtigt). MII-controlled for reliable ordinal() score calculation. 

 **References** 

* [MII QST PRO PHQ-15](Questionnaire-mii-qst-pro-phq-15.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-phq-15-answers",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers",
  "version" : "2026.6.0",
  "name" : "MII_VS_PRO_PHQ_15_Answers",
  "title" : "MII VS PRO PHQ-15 Answers",
  "status" : "active",
  "date" : "2026-09-02T06:36:46+00:00",
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
  "description" : "PHQ-15 somatic symptom bother severity answer options (0 = Nicht beeinträchtigt, 1 = Wenig beeinträchtigt, 2 = Stark beeinträchtigt). MII-controlled for reliable ordinal() score calculation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-phq-15-answers"
    }]
  }
}

```
