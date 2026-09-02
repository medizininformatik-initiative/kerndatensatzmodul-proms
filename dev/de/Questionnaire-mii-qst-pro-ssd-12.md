# MII QST PRO SSD-12 - MII IG PRO v2026.7.0

## Questionnaire: MII QST PRO SSD-12 (Experimentell) 

 
SSD-12 — Somatic Symptom Disorder – B Criteria Scale (Toussaint et al. 2016/2017), 12-item German self-report scale 

*  [Baumansicht](#tabs-tree) 
*  [Beispielanzeige](#tabs-sample) 
*  [Formularlogik](#tabs-logic) 

### Diesen Fragebogen testen

### Antworten zu diesem Fragebogen

* [null](QuestionnaireResponse-mii-exa-pro-ssd-12-response.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-qst-pro-ssd-12",
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
      "name" : "ssd12Sum",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^ssd12-q(0[1-9]|1[0-2])$')).answer.value.ordinal().sum()"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-ssd-12",
  "version" : "2026.7.0",
  "title" : "MII QST PRO SSD-12",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-02T07:20:32+00:00",
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
  "description" : "SSD-12 — Somatic Symptom Disorder – B Criteria Scale (Toussaint et al. 2016/2017), 12-item German self-report scale",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "copyright" : "SSD-12 © Toussaint, Löwe et al. Freely available for research and clinical use. Lizenz-Status: frei verfügbar (Tier A).",
  "code" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
    "code" : "ssd-12",
    "display" : "SSD-12 (Somatic Symptom Disorder - B Criteria Scale, Toussaint et al.)"
  }],
  "item" : [{
    "linkId" : "ssd12-intro",
    "text" : "Wie sehr wurden Sie in den letzten 7 Tagen durch folgende Beschwerden beeinträchtigt?",
    "type" : "display"
  },
  {
    "linkId" : "ssd12-q01",
    "prefix" : "1",
    "text" : "Ich denke, dass meine körperlichen Beschwerden Anzeichen einer ernsthaften Erkrankung sind.",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-ssd-12-answers"
  },
  {
    "linkId" : "ssd12-q02",
    "prefix" : "2",
    "text" : "Ich mache mir große Sorgen um meine Gesundheit.",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-ssd-12-answers"
  },
  {
    "linkId" : "ssd12-q03",
    "prefix" : "3",
    "text" : "Meine gesundheitlichen Sorgen behindern mich im Alltag.",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-ssd-12-answers"
  },
  {
    "linkId" : "ssd12-q04",
    "prefix" : "4",
    "text" : "Ich bin von der Ernsthaftigkeit meiner körperlichen Beschwerden überzeugt.",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-ssd-12-answers"
  },
  {
    "linkId" : "ssd12-q05",
    "prefix" : "5",
    "text" : "Meine körperlichen Beschwerden machen mir Angst.",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-ssd-12-answers"
  },
  {
    "linkId" : "ssd12-q06",
    "prefix" : "6",
    "text" : "Meine körperlichen Beschwerden beschäftigen mich den größten Teil des Tages.",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-ssd-12-answers"
  },
  {
    "linkId" : "ssd12-q07",
    "prefix" : "7",
    "text" : "Andere sagen mir, dass meine körperlichen Beschwerden nicht schlimm sind.",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-ssd-12-answers"
  },
  {
    "linkId" : "ssd12-q08",
    "prefix" : "8",
    "text" : "Ich mache mir Sorgen, dass meine körperlichen Beschwerden niemals aufhören werden.",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-ssd-12-answers"
  },
  {
    "linkId" : "ssd12-q09",
    "prefix" : "9",
    "text" : "Die Sorgen um meine Gesundheit rauben mir Energie.",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-ssd-12-answers"
  },
  {
    "linkId" : "ssd12-q10",
    "prefix" : "10",
    "text" : "Ich denke, dass die Ärzte meine körperlichen Beschwerden nicht ernst nehmen.",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-ssd-12-answers"
  },
  {
    "linkId" : "ssd12-q11",
    "prefix" : "11",
    "text" : "Ich mache mir Sorgen auch in Zukunft durch meine körperlichen Beschwerden beeinträchtigt zu bleiben.",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-ssd-12-answers"
  },
  {
    "linkId" : "ssd12-q12",
    "prefix" : "12",
    "text" : "Durch meine körperlichen Beschwerden kann ich mich schlecht auf andere Dinge konzentrieren.",
    "type" : "choice",
    "answerValueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-ssd-12-answers"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "name" : "Scoreberechnung",
        "language" : "text/fhirpath",
        "expression" : "%ssd12Sum"
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
    "linkId" : "ssd12-score-total",
    "code" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "ssd-12-total",
      "display" : "SSD-12 Total Score"
    }],
    "prefix" : "Score",
    "text" : "SSD-12 Summenwert (0-48)",
    "type" : "decimal",
    "readOnly" : true
  }]
}

```
