# MII VS PRO PHQ-15 Answers - MII IG PRO v2027.0.0-ballot.rc4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS PRO PHQ-15 Answers**

## ValueSet: MII VS PRO PHQ-15 Answers 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers | *Version*:2027.0.0-ballot.rc4 |
| Active as of 2026-09-08 | *Computable Name*:MII_VS_PRO_PHQ_15_Answers |

 
PHQ-15 somatic symptom bother severity answer options (0 = Nicht beeinträchtigt, 1 = Wenig beeinträchtigt, 2 = Stark beeinträchtigt). MII-controlled for reliable ordinal() score calculation. 

 **References** 

* [MII QST PRO PHQ-15](Questionnaire-mii-qst-pro-phq-15.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-phq-15-answers",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-phq-15-answers",
  "version" : "2027.0.0-ballot.rc4",
  "name" : "MII_VS_PRO_PHQ_15_Answers",
  "title" : "MII VS PRO PHQ-15 Answers",
  "status" : "active",
  "date" : "2026-09-08T17:23:26+00:00",
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
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-phq-15-answers"
    }]
  }
}

```
