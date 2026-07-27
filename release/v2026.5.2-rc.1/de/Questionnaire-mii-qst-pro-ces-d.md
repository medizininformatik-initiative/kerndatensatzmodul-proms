# MII QST PRO CES-D - MII IG PRO v2026.5.2-rc.1

## Questionnaire: Center for Epidemiologic Studies Depression Scale (CES-D) (Experimentell) 

 
Center for Epidemiologic Studies Depression Scale (CES-D) - Metadata-only reference implementation 

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
  "id" : "mii-qst-pro-ces-d",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2026.5.2-rc.1"]
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-ces-d",
  "version" : "2026.5.2-rc.1",
  "title" : "Center for Epidemiologic Studies Depression Scale (CES-D)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-27T19:52:52+00:00",
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
  "description" : "Center for Epidemiologic Studies Depression Scale (CES-D) - Metadata-only reference implementation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "code" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "ces-d",
    "display" : "Center for Epidemiologic Studies Depression Scale"
  }],
  "item" : [{
    "linkId" : "CES-D.Notice",
    "text" : "This questionnaire requires proper licensing from the copyright holders. Please contact the CES-D rights holders for implementation permissions.",
    "type" : "display"
  }]
}

```
