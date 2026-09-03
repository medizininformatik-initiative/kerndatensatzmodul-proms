# MII VS PRO PRO-CTCAE Interference Scale - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS PRO PRO-CTCAE Interference Scale**

## ValueSet: MII VS PRO PRO-CTCAE Interference Scale (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference | *Version*:2026.7.0 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_VS_PRO_PRO_CTCAE_Interference |

 
5-point interference response scale for PRO-CTCAE items (0=Not at all, 4=Very much) 

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
  "id" : "mii-vs-pro-pro-ctcae-interference",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference",
  "version" : "2026.7.0",
  "name" : "MII_VS_PRO_PRO_CTCAE_Interference",
  "title" : "MII VS PRO PRO-CTCAE Interference Scale",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-03T19:26:10+00:00",
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
  "description" : "5-point interference response scale for PRO-CTCAE items (0=Not at all, 4=Very much)",
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
        "code" : "proctcae-interference-0"
      },
      {
        "code" : "proctcae-interference-1"
      },
      {
        "code" : "proctcae-interference-2"
      },
      {
        "code" : "proctcae-interference-3"
      },
      {
        "code" : "proctcae-interference-4"
      }]
    }]
  }
}

```
