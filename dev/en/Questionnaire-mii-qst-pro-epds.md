# MII QST PRO EPDS - MII IG PRO v2026.4.0

## Questionnaire: Edinburgh Postnatal Depression Scale (EPDS) (Experimental) 

 
Edinburgh Postnatal Depression Scale (EPDS) - Metadata-only reference implementation 

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
  "id" : "mii-qst-pro-epds",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2026.4.0"]
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-epds",
  "version" : "2026.4.0",
  "title" : "Edinburgh Postnatal Depression Scale (EPDS)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-06-14T20:00:22+00:00",
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
  "description" : "Edinburgh Postnatal Depression Scale (EPDS) - Metadata-only reference implementation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "code" : [{
    "system" : "http://snomed.info/sct",
    "code" : "273441006",
    "display" : "Edinburgh postnatal depression scale (assessment scale)"
  },
  {
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "epds",
    "display" : "Edinburgh Postnatal Depression Scale"
  }],
  "item" : [{
    "linkId" : "EPDS.Notice",
    "text" : "This questionnaire requires proper licensing from the copyright holders. Please contact the EPDS rights holders for implementation permissions.",
    "type" : "display"
  }]
}

```
