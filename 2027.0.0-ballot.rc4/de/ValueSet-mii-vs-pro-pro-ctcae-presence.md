# MII VS PRO PRO-CTCAE Presence Scale - MII IG PRO v2027.0.0-ballot.rc4

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS PRO PRO-CTCAE Presence Scale**

## ValueSet: MII VS PRO PRO-CTCAE Presence Scale (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-presence | *Version*:2027.0.0-ballot.rc4 |
| Active Stand: 2026-09-08 | *Maschinenlesbarer Name*:MII_VS_PRO_PRO_CTCAE_Presence |

 
Binary presence/absence response scale for PRO-CTCAE items 

 **References** 

* [PRO-CTCAE Deutsches Brustkrebszentrum-Subset (21 Symptome)](Questionnaire-mii-qst-pro-pro-ctcae-breast-de.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-pro-pro-ctcae-presence",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-presence",
  "version" : "2027.0.0-ballot.rc4",
  "name" : "MII_VS_PRO_PRO_CTCAE_Presence",
  "title" : "MII VS PRO PRO-CTCAE Presence Scale",
  "status" : "active",
  "experimental" : true,
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
  "description" : "Binary presence/absence response scale for PRO-CTCAE items",
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
        "code" : "proctcae-presence-1"
      },
      {
        "code" : "proctcae-presence-0"
      }]
    }]
  }
}

```
