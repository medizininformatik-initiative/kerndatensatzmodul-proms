# MII QST PRO HADS - MII IG PRO v2027.0.0-ballot.rc3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII QST PRO HADS**

## Questionnaire: Hospital Anxiety and Depression Scale (HADS) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-hads | *Version*:2027.0.0-ballot.rc3 |
| Active as of 2026-09-08 | *Computable Name*: |

 
Hospital Anxiety and Depression Scale (HADS) - Metadata-only reference implementation 

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
  "id" : "mii-qst-pro-hads",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2027.0.0-ballot.rc3"]
  },
  "language" : "en",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "natural",
      "display" : "Natural"
    }
  },
  {
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
      "valueBoolean" : true
    },
    {
      "url" : "domainAligned",
      "valueBoolean" : true
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-hads",
  "version" : "2027.0.0-ballot.rc3",
  "title" : "Hospital Anxiety and Depression Scale (HADS)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-08T15:57:39+00:00",
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
  "description" : "Hospital Anxiety and Depression Scale (HADS) - Metadata-only reference implementation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : [{
    "system" : "http://snomed.info/sct",
    "code" : "273524006",
    "display" : "Hospital anxiety and depression scale (assessment scale)"
  },
  {
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "hads",
    "display" : "Hospital Anxiety and Depression Scale"
  }],
  "item" : [{
    "linkId" : "HADS.Notice",
    "text" : "This questionnaire requires proper licensing from the copyright holders. Please contact the HADS rights holders for implementation permissions.",
    "type" : "display"
  }]
}

```
