# MII VS PRO PRO-CTCAE Frequency Scale - MII IG PRO v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS PRO PRO-CTCAE Frequency Scale**

## ValueSet: MII VS PRO PRO-CTCAE Frequency Scale (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency | *Version*:2027.0.0-ballot |
| Active as of 2026-09-06 | *Computable Name*:MII_VS_PRO_PRO_CTCAE_Frequency |

 
5-point frequency response scale for PRO-CTCAE items (0=Never, 4=Almost constantly) 

 **References** 

* [PRO-CTCAE Deutsches Brustkrebszentrum-Subset (21 Symptome)](Questionnaire-mii-qst-pro-pro-ctcae-breast-de.md)
* [MII QST PRO PRO-CTCAE Onkologisches Basisscreening](Questionnaire-mii-qst-pro-pro-ctcae-onkologisches-basisscreening.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-pro-ctcae-frequency",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_PRO_PRO_CTCAE_Frequency",
  "title" : "MII VS PRO PRO-CTCAE Frequency Scale",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-06T21:42:10+00:00",
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
  "description" : "5-point frequency response scale for PRO-CTCAE items (0=Never, 4=Almost constantly)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-pro-ctcae",
      "concept" : [{
        "code" : "proctcae-frequency-0"
      },
      {
        "code" : "proctcae-frequency-1"
      },
      {
        "code" : "proctcae-frequency-2"
      },
      {
        "code" : "proctcae-frequency-3"
      },
      {
        "code" : "proctcae-frequency-4"
      }]
    }]
  }
}

```
