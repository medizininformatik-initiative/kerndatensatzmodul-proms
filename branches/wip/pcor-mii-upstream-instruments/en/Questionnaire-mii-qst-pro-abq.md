# MII QST PRO ABQ - MII IG PRO v2027.0.0-rc.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII QST PRO ABQ**

## Questionnaire: ABQ (metadata-only) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-abq | *Version*:2027.0.0-rc.1 |
| Active as of 2026-11-05 | *Computable Name*: |
| **Copyright/Legal**: ABQ © Müller S, Kohlmann T, Wilke T 2015 (Adherence Barriers Questionnaire). Lizenz-Status: Tier B (metadata-only). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt. Wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. | |

 
ABQ — Adherence Barriers Questionnaire (Müller, Kohlmann, Wilke 2015). Metadata-only (Tier B): Struktur ohne Item-Wortlaut. 

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
  "id" : "mii-qst-pro-abq",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire|2027.0.0-rc.1"]
  },
  "language" : "de",
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
      "valueBoolean" : true
    },
    {
      "url" : "extractable",
      "valueBoolean" : true
    },
    {
      "url" : "domainAligned",
      "valueBoolean" : false
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/variable",
    "valueExpression" : {
      "name" : "abqSum",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^abq-q(0[1-9]|1[0-6])$')).answer.value.weight().sum()"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-abq",
  "version" : "2027.0.0-rc.1",
  "title" : "ABQ (metadata-only)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-11-05T08:15:37+00:00",
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
  "description" : "ABQ — Adherence Barriers Questionnaire (Müller, Kohlmann, Wilke 2015). Metadata-only (Tier B): Struktur ohne Item-Wortlaut.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "ABQ © Müller S, Kohlmann T, Wilke T 2015 (Adherence Barriers Questionnaire). Lizenz-Status: Tier B (metadata-only). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt. Wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung.",
  "code" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "abq",
    "display" : "ABQ (Adherence Barriers Questionnaire)"
  }],
  "item" : [{
    "linkId" : "abq-q01",
    "text" : "ABQ Item 01 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q02",
    "text" : "ABQ Item 02 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q03",
    "text" : "ABQ Item 03 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q04",
    "text" : "ABQ Item 04 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q05",
    "text" : "ABQ Item 05 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q06",
    "text" : "ABQ Item 06 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q07",
    "text" : "ABQ Item 07 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q08",
    "text" : "ABQ Item 08 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q09",
    "text" : "ABQ Item 09 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q10",
    "text" : "ABQ Item 10 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q11",
    "text" : "ABQ Item 11 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q12",
    "text" : "ABQ Item 12 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q13",
    "text" : "ABQ Item 13 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q14",
    "text" : "ABQ Item 14 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q15",
    "text" : "ABQ Item 15 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "linkId" : "abq-q16",
    "text" : "ABQ Item 16 (Stufe 1-4)",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-abq-answers"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "name" : "Scoreberechnung",
        "language" : "text/fhirpath",
        "expression" : "%abqSum"
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
    "linkId" : "abq-score-total",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "abq-total",
      "display" : "ABQ Total Score (16-64)"
    }],
    "prefix" : "Score",
    "text" : "ABQ Summenwert (16-64)",
    "type" : "decimal",
    "readOnly" : true
  }]
}

```
