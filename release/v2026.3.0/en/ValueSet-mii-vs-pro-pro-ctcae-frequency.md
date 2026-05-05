# MII VS PRO PRO-CTCAE Frequency Scale - MII IG PRO v2026.2.0

## ValueSet: MII VS PRO PRO-CTCAE Frequency Scale (Experimental) 

 
5-point frequency response scale for PRO-CTCAE items (0=Never, 4=Almost constantly) 

 **References** 

* [PRO-CTCAE Deutsches Brustkrebszentrum-Subset (21 Symptome)](Questionnaire-mii-qst-pro-pro-ctcae-breast-de.md)

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
  "version" : "2026.2.0",
  "name" : "MII_VS_PRO_PRO_CTCAE_Frequency",
  "title" : "MII VS PRO PRO-CTCAE Frequency Scale",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-05-05T20:04:21+00:00",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
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
