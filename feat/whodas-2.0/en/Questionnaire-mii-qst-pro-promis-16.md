# MII QST PRO PROMIS-16 (Adults) - MII IG PRO v2026.4.1

## Questionnaire: MII QST PRO PROMIS-16 (Adults) (Experimental) 

 
PROMIS-16 Profile v1.0 - Ultra-short 16-item HRQoL Profile across 8 domains (Edelen et al. 2024, doi:10.1007/s11136-023-03597-6). T-score calculation per Supplement S4 is delegated to a CQL Library (see roadmap 2027). 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

There are currently no QuestionnaireResponse instances for this Questionnaire defined in this IG.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qst-pro-promis-16",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2026.4.1"]
  },
  "language" : "en",
  "extension" : [{
    "extension" : [{
      "url" : "displayable",
      "valueBoolean" : true
    },
    {
      "url" : "collectable",
      "valueBoolean" : true
    },
    {
      "url" : "calculatable",
      "valueBoolean" : false
    },
    {
      "url" : "extractable",
      "valueBoolean" : true
    },
    {
      "url" : "domainAligned",
      "valueBoolean" : true
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16",
  "version" : "2026.4.1",
  "title" : "MII QST PRO PROMIS-16 (Adults)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-07T06:56:22+00:00",
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
  "description" : "PROMIS-16 Profile v1.0 - Ultra-short 16-item HRQoL Profile across 8 domains (Edelen et al. 2024, doi:10.1007/s11136-023-03597-6). T-score calculation per Supplement S4 is delegated to a CQL Library (see roadmap 2027).",
  "useContext" : [{
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "focus"
    },
    "valueReference" : {
      "reference" : "https://www.healthmeasures.net/explore-measurement-systems/promis",
      "display" : "PROMIS (Patient-Reported Outcomes Measurement Information System)"
    }
  },
  {
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "focus"
    },
    "valueReference" : {
      "reference" : "https://cpcor.charite.de/promis_national_center_deutschland",
      "display" : "PROMIS National Center Deutschland (CPCOR Charité) — Curator of the official German translations provided by PCOR-MII"
    }
  },
  {
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "focus"
    },
    "valueReference" : {
      "reference" : "https://doi.org/10.1007/s11136-023-03597-6",
      "display" : "PROMIS-16 Profile (Edelen et al. 2024, Qual Life Res)"
    }
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "copyright" : "The FHIR Questionnaire resource (linkIds, extensions, score calculation logic, observation extraction definitions) is part of the MII PRO Module and is licensed under CC-BY 4.0.\n\nThe PROMIS items contained herein (item text, response options, scoring algorithms, IRT parameters) are © 2008–2024 PROMIS Health Organization and PROMIS Cooperative Group. PROMIS® is a registered trademark. See https://www.healthmeasures.net for the upstream license.\n\nThe official German translations are provided by PCOR-MII (Patient-Centered Outcomes Research within the Medizininformatik-Initiative) and curated by the PROMIS National Center Germany (CPCOR, Charité – Universitätsmedizin Berlin; head: Felix Fischer).\n\nInstitutional use outside the PCOR-MII / MII context requires a usage request to CPCOR: https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen\n\nLOINC® codes are © Regenstrief Institute, Inc. and used under the LOINC license: https://loinc.org/license/",
  "code" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "promis-promis16",
    "display" : "PROMIS-16 Profile Questionnaire (ultra-short 8-domain profile)"
  }],
  "item" : [{
    "linkId" : "PROMIS-16.PhysicalFunction",
    "text" : "Physical Function",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Körperliche Funktion"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "group",
    "item" : [{
      "linkId" : "promis-pfa21",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "62826-3",
        "display" : "Are you able to go up and down stairs at a normal pace [PROMIS]"
      }],
      "text" : "Are you able to go up and down stairs at a normal pace?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Können Sie mit normaler Geschwindigkeit Treppen hoch- und runtergehen?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale"
    },
    {
      "linkId" : "promis-pfa23",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "62827-1",
        "display" : "Are you able to go for a walk of at least 15 minutes [PROMIS]"
      }],
      "text" : "Are you able to go for a walk of at least 15 minutes?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Können Sie mindestens 15 Minuten lang spazieren gehen?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale"
    }]
  },
  {
    "linkId" : "PROMIS-16.Anxiety",
    "text" : "Emotional Distress — Anxiety",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Emotionale Belastung — Angst"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "group",
    "item" : [{
      "linkId" : "promis-edanx40",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "61941-1",
        "display" : "I found it hard to focus on anything other than my anxiety in past 7 days"
      }],
      "text" : "I found it hard to focus on anything other than my anxiety.",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"
    },
    {
      "linkId" : "promis-edanx41",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "61942-9",
        "display" : "My worries overwhelmed me in past 7 days"
      }],
      "text" : "My worries overwhelmed me.",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Meine Sorgen haben mich überwältigt."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"
    }]
  },
  {
    "linkId" : "PROMIS-16.Depression",
    "text" : "Emotional Distress — Depression",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Emotionale Belastung — Depressivität"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "group",
    "item" : [{
      "linkId" : "promis-eddep29",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "61967-6",
        "display" : "I felt depressed in past 7 days [PROMIS]"
      }],
      "text" : "I felt depressed.",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Ich fühlte mich niedergeschlagen."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"
    },
    {
      "linkId" : "promis-eddep41",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "61973-4",
        "display" : "I felt hopeless in past 7 days [PROMIS]"
      }],
      "text" : "I felt hopeless.",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Ich fühlte mich hoffnungslos."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"
    }]
  },
  {
    "linkId" : "PROMIS-16.Fatigue",
    "text" : "Fatigue",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Erschöpfung"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "group",
    "item" : [{
      "linkId" : "promis-hi7",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "61878-5",
        "display" : "I feel fatigued during the past 7 days [PROMIS]"
      }],
      "text" : "I feel fatigued.",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Ich bin erschöpft."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale"
    },
    {
      "linkId" : "promis-an3",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "61882-7",
        "display" : "I had trouble starting things because I was tired in past 7 days [PROMIS]"
      }],
      "text" : "I had trouble starting things because I was tired.",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Es fällt mir schwer, etwas anzufangen, weil ich müde bin."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale"
    }]
  },
  {
    "linkId" : "PROMIS-16.Sleep",
    "text" : "Sleep-related Impairment / Sleep Disturbance",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Schlafbezogene Beeinträchtigungen / Schlafbeeinträchtigung"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "group",
    "item" : [{
      "linkId" : "promis-sleep25",
      "text" : "I had problems during the day because of poor sleep.",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Ich hatte tagsüber Probleme, weil ich schlecht geschlafen habe."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale"
    },
    {
      "linkId" : "promis-sleep90",
      "text" : "I had trouble sleeping.",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Es fiel mir schwer zu schlafen."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"
    }]
  },
  {
    "linkId" : "PROMIS-16.SocialRoles",
    "text" : "Ability to Participate in Social Roles and Activities",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Teilhabe an sozialen Rollen und Aktivitäten"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "group",
    "item" : [{
      "linkId" : "promis-srpper31-caps",
      "text" : "I have trouble taking care of my regular personal responsibilities.",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Es fällt mir schwer, mich um meine regelmäßigen persönlichen Verpflichtungen zu kümmern."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"
    },
    {
      "linkId" : "promis-srpper46-caps",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "76712-9",
        "display" : "I have trouble doing all of the activities with friends that I want to do [PROMIS]"
      }],
      "text" : "I have trouble doing all of the activities with friends that I want to do.",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"
    }]
  },
  {
    "linkId" : "PROMIS-16.PainInterference",
    "text" : "Pain Interference",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Beeinträchtigung durch Schmerzen"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "group",
    "item" : [{
      "linkId" : "promis-painin9",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "61758-9",
        "display" : "How much did pain interfere with your day to day activities in past 7 days [PROMIS]"
      }],
      "text" : "How much did pain interfere with your day-to-day activities?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Wie sehr beeinträchtigen Schmerzen Ihre Alltagsaktivitäten?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale"
    },
    {
      "linkId" : "promis-painin31",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "61773-8",
        "display" : "How much did pain interfere with your ability to participate in social activities in past 7 days [PROMIS]"
      }],
      "text" : "How much did pain interfere with your ability to participate in social activities?",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Wie sehr beeinträchtigen Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen?"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale"
    }]
  },
  {
    "linkId" : "PROMIS-16.Cognition",
    "text" : "Cognitive Function — Abilities",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Kognitive Funktionen — Fähigkeiten"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "group",
    "item" : [{
      "linkId" : "promis-pc27r",
      "text" : "I have been able to remember to do things, like take medicine or buy something I needed.",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Ich bin fähig gewesen, mich an Dinge zu erinnern, die ich tun musste, wie z.B. Medikamente einnehmen oder etwas kaufen, das ich benötigte."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale"
    },
    {
      "linkId" : "promis-pc-caps3r",
      "text" : "I have been able to think clearly without extra effort.",
      "_text" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Ich bin fähig gewesen, klar zu denken, ohne mich extra anzustrengen."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-intensity-response-scale"
    }]
  }]
}

```
