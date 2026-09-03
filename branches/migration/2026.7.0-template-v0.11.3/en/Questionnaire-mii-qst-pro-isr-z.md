# MII QST PRO ISR-Z - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII QST PRO ISR-Z**

## Questionnaire: MII QST PRO ISR-Z (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-isr-z | *Version*:2026.7.0 |
| Active as of 2026-09-03 | *Computable Name*: |
| **Copyright/Legal**: ICD-10-Symptom-Rating (ISR) © Tritt, von Heymann, Zaudig, Zacharias, Söllner & Loew 2008. Freely available — no permission required for reproduction, translation, display or use. Lizenz-Status: frei verfügbar (Tier A). | |

 
ISR-Z — Subskala Zwang (3 Items) des ICD-10-Symptom-Rating (Tritt et al. 2008); Skalenwert als Mittelwert, nicht Summe 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

* [null](QuestionnaireResponse-mii-exa-pro-isr-z-response.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qst-pro-isr-z",
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
      "name" : "isrZMean",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^isr-z-q0[1-3]$')).answer.value.ordinal().avg()"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-isr-z",
  "version" : "2026.7.0",
  "title" : "MII QST PRO ISR-Z",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-03T19:45:41+00:00",
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
  "description" : "ISR-Z — Subskala Zwang (3 Items) des ICD-10-Symptom-Rating (Tritt et al. 2008); Skalenwert als Mittelwert, nicht Summe",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "copyright" : "ICD-10-Symptom-Rating (ISR) © Tritt, von Heymann, Zaudig, Zacharias, Söllner & Loew 2008. Freely available — no permission required for reproduction, translation, display or use. Lizenz-Status: frei verfügbar (Tier A).",
  "code" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "isr-z",
    "display" : "ISR-Z (ICD-10-Symptom-Rating, Subskala Zwang, Tritt et al. 2008)"
  }],
  "item" : [{
    "linkId" : "isr-z-intro",
    "text" : "Bitte geben Sie jetzt an, ob eine der nachfolgenden Beschwerden in den letzten zwei Wochen auf Sie selbst zutrifft:",
    "type" : "display"
  },
  {
    "linkId" : "isr-z-q01",
    "prefix" : "1",
    "text" : "Ich leide unter meinen ständig wiederkehrenden, sinnlosen Gedanken oder Handlungen, gegen die ich mich aber nicht wehren kann (z.B. Hände waschen).",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-isr-z-answers"
  },
  {
    "linkId" : "isr-z-q02",
    "prefix" : "2",
    "text" : "Ich leiste Widerstand gegen immer wiederkehrende, unsinnige Gedanken oder Handlungen, auch wenn mir das nicht immer gelingt.",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-isr-z-answers"
  },
  {
    "linkId" : "isr-z-q03",
    "prefix" : "3",
    "text" : "Ich leide unter quälenden, sinnlosen Gedanken oder Handlungen, die mein normales Leben beeinträchtigen.",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-isr-z-answers"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "name" : "Scoreberechnung",
        "language" : "text/fhirpath",
        "expression" : "%isrZMean"
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
    "linkId" : "isr-z-score-mean",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "isr-z-mean",
      "display" : "ISR-Z Skalenwert (Mittelwert 0-4)"
    }],
    "prefix" : "Skalenwert",
    "text" : "ISR-Z Skalenwert (Mittelwert der 3 Zwang-Items, Bereich 0-4)",
    "type" : "decimal",
    "readOnly" : true
  }]
}

```
