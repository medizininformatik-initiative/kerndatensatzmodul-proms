# MII CS PRO LOINC Supplement (validated answer wordings) - MII IG PRO v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS PRO LOINC Supplement (validated answer wordings)**

## CodeSystem: MII CS PRO LOINC Supplement (validated answer wordings) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-loinc-supplement | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_CS_PRO_LOINC_Supplement |

 
Supplement to LOINC adding the validated German answer wordings (PHQ-D; PROMIS German via PHO/CPCOR; EQ-VAS anchors) as designations on the LOINC answer codes used by this module, plus two full PROMIS item wordings in English. Enables display validation of the instrument-validated wordings; claims no translation authority over LOINC. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* This CodeSystem Supplement is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-pro-loinc-supplement",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-loinc-supplement",
  "version" : "2027.0.0-ballot",
  "name" : "MII_CS_PRO_LOINC_Supplement",
  "title" : "MII CS PRO LOINC Supplement (validated answer wordings)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T13:28:57+00:00",
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
  "description" : "Supplement to LOINC adding the validated German answer wordings (PHQ-D; PROMIS German via PHO/CPCOR; EQ-VAS anchors) as designations on the LOINC answer codes used by this module, plus two full PROMIS item wordings in English. Enables display validation of the instrument-validated wordings; claims no translation authority over LOINC.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "content" : "supplement",
  "supplements" : "http://loinc.org",
  "concept" : [{
    "code" : "LA6568-5",
    "designation" : [{
      "language" : "de",
      "value" : "Überhaupt nicht"
    }]
  },
  {
    "code" : "LA6569-3",
    "designation" : [{
      "language" : "de",
      "value" : "An einzelnen Tagen"
    }]
  },
  {
    "code" : "LA6570-1",
    "designation" : [{
      "language" : "de",
      "value" : "An mehr als der Hälfte der Tage"
    }]
  },
  {
    "code" : "LA6270-8",
    "designation" : [{
      "language" : "de",
      "value" : "Nie"
    }]
  },
  {
    "code" : "LA10066-1",
    "designation" : [{
      "language" : "de",
      "value" : "Selten"
    }]
  },
  {
    "code" : "LA10082-8",
    "designation" : [{
      "language" : "de",
      "value" : "Manchmal"
    }]
  },
  {
    "code" : "LA10044-8",
    "designation" : [{
      "language" : "de",
      "value" : "Oft"
    }]
  },
  {
    "code" : "LA9933-8",
    "designation" : [{
      "language" : "de",
      "value" : "Immer"
    }]
  },
  {
    "code" : "LA13863-8",
    "designation" : [{
      "language" : "de",
      "value" : "Ein wenig"
    }]
  },
  {
    "code" : "LA13909-9",
    "designation" : [{
      "language" : "de",
      "value" : "Mäßig"
    }]
  },
  {
    "code" : "LA13902-4",
    "designation" : [{
      "language" : "de",
      "value" : "Ziemlich"
    }]
  },
  {
    "code" : "LA13914-9",
    "designation" : [{
      "language" : "de",
      "value" : "Sehr"
    }]
  },
  {
    "code" : "LA13921-4",
    "designation" : [{
      "language" : "de",
      "value" : "Ohne jede Schwierigkeiten"
    }]
  },
  {
    "code" : "LA13918-0",
    "designation" : [{
      "language" : "de",
      "value" : "Mit geringen Schwierigkeiten"
    }]
  },
  {
    "code" : "LA13920-6",
    "designation" : [{
      "language" : "de",
      "value" : "Mit einigen Schwierigkeiten"
    }]
  },
  {
    "code" : "LA13919-8",
    "designation" : [{
      "language" : "de",
      "value" : "Mit großen Schwierigkeiten"
    }]
  },
  {
    "code" : "LA13912-3",
    "designation" : [{
      "language" : "de",
      "value" : "Kann ich gar nicht"
    }]
  },
  {
    "code" : "LA13913-1",
    "designation" : [{
      "language" : "de",
      "value" : "Sehr gut"
    }]
  },
  {
    "code" : "LA8967-7",
    "designation" : [{
      "language" : "de",
      "value" : "Gut"
    }]
  },
  {
    "code" : "LA8968-5",
    "designation" : [{
      "language" : "de",
      "value" : "Mäßig"
    }]
  },
  {
    "code" : "LA8969-3",
    "designation" : [{
      "language" : "de",
      "value" : "Schlecht"
    }]
  },
  {
    "code" : "LA9615-1",
    "designation" : [{
      "language" : "de",
      "value" : "Sehr schlecht"
    }]
  },
  {
    "code" : "62826-3",
    "designation" : [{
      "language" : "en",
      "value" : "Are you able to go up and down stairs at a normal pace?"
    }]
  },
  {
    "code" : "62827-1",
    "designation" : [{
      "language" : "en",
      "value" : "Are you able to go for a walk of at least 15 minutes?"
    }]
  }]
}

```
