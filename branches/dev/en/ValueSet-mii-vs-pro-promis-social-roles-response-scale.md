# MII VS PRO PROMIS Social Roles Response Scale - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS PRO PROMIS Social Roles Response Scale**

## ValueSet: MII VS PRO PROMIS Social Roles Response Scale 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-social-roles-response-scale | *Version*:2027.0.0-ballot.1 |
| Active as of 2026-11-05 | *Computable Name*:MII_VS_PRO_PROMIS_Social_Roles_Response_Scale |

 
Response scale of the PROMIS Ability to Participate in Social Roles and Activities items (LOINC answer list LL3003-2): Never, Rarely, Sometimes, Usually, Always. Reverse-scored (Never = 5 … Always = 1). 

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
  "id" : "mii-vs-pro-promis-social-roles-response-scale",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-social-roles-response-scale",
  "version" : "2027.0.0-ballot.1",
  "name" : "MII_VS_PRO_PROMIS_Social_Roles_Response_Scale",
  "title" : "MII VS PRO PROMIS Social Roles Response Scale",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-05T08:33:52+00:00",
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
  "description" : "Response scale of the PROMIS Ability to Participate in Social Roles and Activities items (LOINC answer list LL3003-2): Never, Rarely, Sometimes, Usually, Always. Reverse-scored (Never = 5 ... Always = 1).",
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
        "code" : "LA6270-8",
        "display" : "Never",
        "designation" : [{
          "language" : "de",
          "value" : "Nie"
        }]
      },
      {
        "code" : "LA10066-1",
        "display" : "Rarely",
        "designation" : [{
          "language" : "de",
          "value" : "Selten"
        }]
      },
      {
        "code" : "LA10082-8",
        "display" : "Sometimes",
        "designation" : [{
          "language" : "de",
          "value" : "Manchmal"
        }]
      },
      {
        "code" : "LA14747-2",
        "display" : "Usually",
        "designation" : [{
          "language" : "de",
          "value" : "Meistens"
        }]
      },
      {
        "code" : "LA9933-8",
        "display" : "Always",
        "designation" : [{
          "language" : "de",
          "value" : "Immer"
        }]
      }]
    }]
  }
}

```
