# MII QST PRO CES-D - MII IG PRO v2026.4.1

## Questionnaire: Center for Epidemiologic Studies Depression Scale (CES-D) (Experimental) 

 
Center for Epidemiologic Studies Depression Scale (CES-D) - Metadata-only reference implementation 

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
  "id" : "mii-qst-pro-ces-d",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-ces-d",
  "version" : "2026.4.1",
  "title" : "Center for Epidemiologic Studies Depression Scale (CES-D)",
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
