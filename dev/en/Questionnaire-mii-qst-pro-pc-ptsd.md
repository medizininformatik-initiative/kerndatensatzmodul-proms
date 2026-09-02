# MII QST PRO PC-PTSD - MII IG PRO v2026.7.0

## Questionnaire: MII QST PRO PC-PTSD (Experimental) 

 
PC-PTSD — Primary Care PTSD Screen, four-item screening questionnaire for posttraumatic stress disorder (Prins et al. 2003; German: Schäfer & Schulze 2010) 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

* [null](QuestionnaireResponse-mii-exa-pro-pc-ptsd-response.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qst-pro-pc-ptsd",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2026.7.0"]
  },
  "language" : "de",
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
      "valueBoolean" : true
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
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/variable",
    "valueExpression" : {
      "name" : "pcPtsdSum",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^pc-ptsd-q0[1-4]$')).answer.value.ordinal().sum()"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-pc-ptsd",
  "version" : "2026.7.0",
  "title" : "MII QST PRO PC-PTSD",
  "status" : "active",
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
  "description" : "PC-PTSD — Primary Care PTSD Screen, four-item screening questionnaire for posttraumatic stress disorder (Prins et al. 2003; German: Schäfer & Schulze 2010)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "copyright" : "PC-PTSD © Prins A, et al. 2003; deutsche Fassung Schäfer I, Schulze C, 2010. Freely available — Lizenz-Status: frei verfügbar (Tier A).",
  "code" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "pc-ptsd",
    "display" : "PC-PTSD (Primary Care PTSD Screen)"
  }],
  "item" : [{
    "linkId" : "pc-ptsd-intro",
    "text" : "Haben Sie jemals in Ihrem Leben etwas so Beängstigendes, Schreckliches oder Erschütterndes erlebt, dass Sie in den letzten 4 Wochen …",
    "type" : "display"
  },
  {
    "linkId" : "pc-ptsd-q01",
    "prefix" : "1",
    "text" : "… Albträume davon hatten oder daran dachten, obwohl Sie es nicht wollten?",
    "type" : "choice",
    "answerOption" : [{
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 0
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    },
    {
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 1
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }]
  },
  {
    "linkId" : "pc-ptsd-q02",
    "prefix" : "2",
    "text" : "… sich stark bemüht haben, nicht daran zu denken oder Situationen zu vermeiden, die Sie daran erinnern?",
    "type" : "choice",
    "answerOption" : [{
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 0
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    },
    {
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 1
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }]
  },
  {
    "linkId" : "pc-ptsd-q03",
    "prefix" : "3",
    "text" : "...ständig auf der Hut, wachsam oder schreckhaft waren?",
    "type" : "choice",
    "answerOption" : [{
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 0
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    },
    {
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 1
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }]
  },
  {
    "linkId" : "pc-ptsd-q04",
    "prefix" : "4",
    "text" : "...sich abgestumpft und teilnahmslos gegenüber anderen, bei ihren Aktivitäten oder in Ihrem Umfeld fühlten?",
    "type" : "choice",
    "answerOption" : [{
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 0
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    },
    {
      "valueCoding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal" : 1
        }],
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "name" : "Scoreberechnung",
        "language" : "text/fhirpath",
        "expression" : "%pcPtsdSum"
      }
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract",
      "valueBoolean" : true
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
      "valueCoding" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      }
    },
    {
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observation-extract-category",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      }
    }],
    "linkId" : "pc-ptsd-score-total",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "pc-ptsd-total",
      "display" : "PC-PTSD Total Score (0-4)"
    }],
    "prefix" : "Score",
    "text" : "PC-PTSD Summenwert (0-4)",
    "type" : "decimal",
    "readOnly" : true
  }]
}

```
