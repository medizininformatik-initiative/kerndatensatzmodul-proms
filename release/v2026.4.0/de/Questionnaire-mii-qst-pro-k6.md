# MII QST PRO K6 - MII IG PRO v2026.4.1

## Questionnaire: Kessler Psychological Distress Scale (K6) (Experimentell) 

 
Kessler Psychological Distress Scale (K6) - Metadata-only reference implementation 

*  [Baumansicht](#tabs-tree) 
*  [Beispielanzeige](#tabs-sample) 
*  [Formularlogik](#tabs-logic) 

### Diesen Fragebogen testen

### Antworten zu diesem Fragebogen

Es sind derzeit keine QuestionnaireResponse-Instanzen für diesen Fragebogen in diesem IG definiert.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qst-pro-k6",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2026.4.1"]
  },
  "language" : "en",
  "extension" : [{
    "extension" : [{
      "url" : "displayable",
      "valueBoolean" : false
    },
    {
      "url" : "collectable",
      "valueBoolean" : false
    },
    {
      "url" : "calculatable",
      "valueBoolean" : false
    },
    {
      "url" : "extractable",
      "valueBoolean" : false
    },
    {
      "url" : "domainAligned",
      "valueBoolean" : true
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-k6",
  "version" : "2026.4.1",
  "title" : "Kessler Psychological Distress Scale (K6)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-06-15T12:51:50+00:00",
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
  "description" : "Kessler Psychological Distress Scale (K6) - Metadata-only reference implementation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "code" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "k6",
    "display" : "Kessler Psychological Distress Scale"
  }],
  "item" : [{
    "linkId" : "K6.Notice",
    "text" : "This questionnaire requires proper licensing from the copyright holders. Please contact the K6 rights holders for implementation permissions.",
    "type" : "display"
  }]
}

```
