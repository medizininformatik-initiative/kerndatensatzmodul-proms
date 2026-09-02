# MII CS PRO MIDOS2 Items and Response Scales - MII IG PRO v2026.7.0

## CodeSystem: MII CS PRO MIDOS2 Items and Response Scales (Experimental) 

 
CodeSystem for the Minimal Documentation System v2 (MIDOS2) — German palliative care symptom screening instrument. Contains item codes, DGP-4-stufige Severity-Skala, and 4-stufige Wohlbefinden-Skala. German primary language, English translations as designations. 

This Code system is referenced in the definition of the following value sets:

* [MII VS PRO MIDOS2 DGP-Severity-Skala](ValueSet-mii-vs-pro-midos2-severity.md)
* [MII VS PRO MIDOS2 Wohlbefinden-Skala](ValueSet-mii-vs-pro-midos2-wellbeing.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-pro-midos2",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2",
  "version" : "2026.7.0",
  "name" : "MII_CS_PRO_MIDOS2",
  "title" : "MII CS PRO MIDOS2 Items and Response Scales",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-02T06:47:03+00:00",
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
  "description" : "CodeSystem for the Minimal Documentation System v2 (MIDOS2) — German palliative care symptom screening instrument. Contains item codes, DGP-4-stufige Severity-Skala, and 4-stufige Wohlbefinden-Skala. German primary language, English translations as designations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "copyright" : "MIDOS2 ist ein Instrument der Deutschen Gesellschaft für Palliativmedizin (DGP), frei verwendbar für klinische und Forschungszwecke.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 21,
  "property" : [{
    "code" : "snomed",
    "description" : "SNOMED CT Equivalent für externe Interoperabilität",
    "type" : "code"
  }],
  "concept" : [{
    "code" : "midos2-severity-0",
    "display" : "keine",
    "designation" : [{
      "language" : "en",
      "value" : "none"
    }]
  },
  {
    "code" : "midos2-severity-1",
    "display" : "leichte",
    "designation" : [{
      "language" : "en",
      "value" : "mild"
    }]
  },
  {
    "code" : "midos2-severity-2",
    "display" : "mittlere",
    "designation" : [{
      "language" : "en",
      "value" : "moderate"
    }]
  },
  {
    "code" : "midos2-severity-3",
    "display" : "starke",
    "designation" : [{
      "language" : "en",
      "value" : "severe"
    }]
  },
  {
    "code" : "midos2-wellbeing-0",
    "display" : "sehr gut",
    "designation" : [{
      "language" : "en",
      "value" : "very good"
    }]
  },
  {
    "code" : "midos2-wellbeing-1",
    "display" : "eher gut",
    "designation" : [{
      "language" : "en",
      "value" : "rather good"
    }]
  },
  {
    "code" : "midos2-wellbeing-2",
    "display" : "eher schlecht",
    "designation" : [{
      "language" : "en",
      "value" : "rather poor"
    }]
  },
  {
    "code" : "midos2-wellbeing-3",
    "display" : "sehr schlecht",
    "designation" : [{
      "language" : "en",
      "value" : "very poor"
    }]
  },
  {
    "code" : "midos2-q01-schmerz",
    "display" : "Schmerz",
    "designation" : [{
      "language" : "en",
      "value" : "Pain"
    }],
    "property" : [{
      "code" : "snomed",
      "valueCode" : "22253000"
    }]
  },
  {
    "code" : "midos2-q02-uebelkeit",
    "display" : "Übelkeit",
    "designation" : [{
      "language" : "en",
      "value" : "Nausea"
    }],
    "property" : [{
      "code" : "snomed",
      "valueCode" : "422587007"
    }]
  },
  {
    "code" : "midos2-q03-erbrechen",
    "display" : "Erbrechen",
    "designation" : [{
      "language" : "en",
      "value" : "Vomiting"
    }],
    "property" : [{
      "code" : "snomed",
      "valueCode" : "422400008"
    }]
  },
  {
    "code" : "midos2-q04-luftnot",
    "display" : "Luftnot",
    "designation" : [{
      "language" : "en",
      "value" : "Shortness of breath"
    }],
    "property" : [{
      "code" : "snomed",
      "valueCode" : "267036007"
    }]
  },
  {
    "code" : "midos2-q05-verstopfung",
    "display" : "Verstopfung",
    "designation" : [{
      "language" : "en",
      "value" : "Constipation"
    }],
    "property" : [{
      "code" : "snomed",
      "valueCode" : "14760008"
    }]
  },
  {
    "code" : "midos2-q06-schwaeche",
    "display" : "Schwäche",
    "designation" : [{
      "language" : "en",
      "value" : "Weakness"
    }]
  },
  {
    "code" : "midos2-q07-muedigkeit",
    "display" : "Müdigkeit",
    "designation" : [{
      "language" : "en",
      "value" : "Tiredness"
    }],
    "property" : [{
      "code" : "snomed",
      "valueCode" : "84229001"
    }]
  },
  {
    "code" : "midos2-q08-appetitmangel",
    "display" : "Appetitmangel",
    "designation" : [{
      "language" : "en",
      "value" : "Loss of appetite"
    }],
    "property" : [{
      "code" : "snomed",
      "valueCode" : "79890006"
    }]
  },
  {
    "code" : "midos2-q09-depressivitaet",
    "display" : "Depressivität",
    "designation" : [{
      "language" : "en",
      "value" : "Depression"
    }],
    "property" : [{
      "code" : "snomed",
      "valueCode" : "35489007"
    }]
  },
  {
    "code" : "midos2-q10-angst",
    "display" : "Angst",
    "designation" : [{
      "language" : "en",
      "value" : "Anxiety"
    }],
    "property" : [{
      "code" : "snomed",
      "valueCode" : "48694002"
    }]
  },
  {
    "code" : "midos2-q11-anspannung",
    "display" : "Anspannung",
    "designation" : [{
      "language" : "en",
      "value" : "Tension"
    }]
  },
  {
    "code" : "midos2-q12-wohlbefinden",
    "display" : "Wohlbefinden",
    "designation" : [{
      "language" : "en",
      "value" : "Overall wellbeing"
    }]
  },
  {
    "code" : "midos2-q13-sonstiges",
    "display" : "Andere Beschwerden",
    "designation" : [{
      "language" : "en",
      "value" : "Other complaints"
    }]
  }]
}

```
