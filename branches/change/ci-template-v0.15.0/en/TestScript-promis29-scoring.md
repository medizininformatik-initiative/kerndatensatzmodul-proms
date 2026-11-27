# PROMIS-29 Scoring — Validierung und Persistenz - MII IG PRO v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PROMIS-29 Scoring — Validierung und Persistenz**

## TestScript: PROMIS-29 Scoring — Validierung und Persistenz (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/TestScript/promis29-scoring | *Version*:2027.0.0-ballot.2 |
| Draft as of 2026-11-27 | *Computable Name*:PROMIS29ScoringTestScript |

 
Je Szenario: QuestionnaireResponse serverseitig validieren ($validate) und anlegen. Die Fixtures sind die IG-Beispiele promis29-*. Voraussetzung am Ziel: PROMIS-29-Questionnaire geladen. Die $extract-Prüfungen synthetisiert scripts/assemble-testscript-rundir.mjs für den CI-Lauf. 



## Resource Content

```json
{
  "resourceType" : "TestScript",
  "id" : "promis29-scoring",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "natural",
      "display" : "Natural"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/TestScript/promis29-scoring",
  "version" : "2027.0.0-ballot.2",
  "name" : "PROMIS29ScoringTestScript",
  "title" : "PROMIS-29 Scoring — Validierung und Persistenz",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-27T14:16:34+00:00",
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
  "description" : "Je Szenario: QuestionnaireResponse serverseitig validieren ($validate) und anlegen. Die Fixtures sind die IG-Beispiele promis29-*. Voraussetzung am Ziel: PROMIS-29-Questionnaire geladen. Die $extract-Prüfungen synthetisiert scripts/assemble-testscript-rundir.mjs für den CI-Lauf.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "metadata" : {
    "capability" : [{
      "required" : true,
      "validated" : false,
      "description" : "FHIR R4 Server, PROMIS-29-Questionnaire geladen",
      "capabilities" : "http://hl7.org/fhir/CapabilityStatement/base"
    }]
  },
  "fixture" : [{
    "id" : "qr-physical-function-floor",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-physical-function-floor"
    }
  },
  {
    "id" : "qr-physical-function-ceil",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-physical-function-ceil"
    }
  },
  {
    "id" : "qr-physical-function-asym",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-physical-function-asym"
    }
  },
  {
    "id" : "qr-anxiety-floor",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-anxiety-floor"
    }
  },
  {
    "id" : "qr-anxiety-ceil",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-anxiety-ceil"
    }
  },
  {
    "id" : "qr-anxiety-asym",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-anxiety-asym"
    }
  },
  {
    "id" : "qr-depression-floor",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-depression-floor"
    }
  },
  {
    "id" : "qr-depression-ceil",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-depression-ceil"
    }
  },
  {
    "id" : "qr-depression-asym",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-depression-asym"
    }
  },
  {
    "id" : "qr-fatigue-floor",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-fatigue-floor"
    }
  },
  {
    "id" : "qr-fatigue-ceil",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-fatigue-ceil"
    }
  },
  {
    "id" : "qr-fatigue-asym",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-fatigue-asym"
    }
  },
  {
    "id" : "qr-sleep-floor",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-sleep-floor"
    }
  },
  {
    "id" : "qr-sleep-ceil",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-sleep-ceil"
    }
  },
  {
    "id" : "qr-sleep-asym",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-sleep-asym"
    }
  },
  {
    "id" : "qr-social-floor",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-social-floor"
    }
  },
  {
    "id" : "qr-social-ceil",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-social-ceil"
    }
  },
  {
    "id" : "qr-social-asym",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-social-asym"
    }
  },
  {
    "id" : "qr-pain-interference-floor",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-pain-interference-floor"
    }
  },
  {
    "id" : "qr-pain-interference-ceil",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-pain-interference-ceil"
    }
  },
  {
    "id" : "qr-pain-interference-asym",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-pain-interference-asym"
    }
  },
  {
    "id" : "qr-social-teilantwort-guard",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "QuestionnaireResponse/promis29-social-teilantwort-guard"
    }
  }],
  "test" : [{
    "name" : "case-physical-function-floor",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-physical-function-floor",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-physical-function-floor"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-physical-function-ceil",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-physical-function-ceil",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-physical-function-ceil"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-physical-function-asym",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-physical-function-asym",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-physical-function-asym"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-anxiety-floor",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-anxiety-floor",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-anxiety-floor"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-anxiety-ceil",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-anxiety-ceil",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-anxiety-ceil"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-anxiety-asym",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-anxiety-asym",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-anxiety-asym"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-depression-floor",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-depression-floor",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-depression-floor"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-depression-ceil",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-depression-ceil",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-depression-ceil"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-depression-asym",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-depression-asym",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-depression-asym"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-fatigue-floor",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-fatigue-floor",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-fatigue-floor"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-fatigue-ceil",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-fatigue-ceil",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-fatigue-ceil"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-fatigue-asym",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-fatigue-asym",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-fatigue-asym"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-sleep-floor",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-sleep-floor",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-sleep-floor"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-sleep-ceil",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-sleep-ceil",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-sleep-ceil"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-sleep-asym",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-sleep-asym",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-sleep-asym"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-social-floor",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-social-floor",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-social-floor"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-social-ceil",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-social-ceil",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-social-ceil"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-social-asym",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-social-asym",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-social-asym"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-pain-interference-floor",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-pain-interference-floor",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-pain-interference-floor"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-pain-interference-ceil",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-pain-interference-ceil",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-pain-interference-ceil"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-pain-interference-asym",
    "description" : "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-pain-interference-asym",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-pain-interference-asym"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  },
  {
    "name" : "case-social-teilantwort-guard",
    "description" : "Count-Guard: T-Tabellen gelten nur bei vollstaendig beantworteter Short Form",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "method" : "post",
        "sourceId" : "qr-social-teilantwort-guard",
        "url" : "/QuestionnaireResponse/$validate"
      }
    },
    {
      "assert" : {
        "description" : "keine Validierungsfehler",
        "expression" : "OperationOutcome.issue.where(severity = 'error')",
        "_expression" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/4.0/StructureDefinition/extension-Expression.language",
            "valueCode" : "text/fhirpath"
          }]
        },
        "operator" : "empty",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "QuestionnaireResponse",
        "encodeRequestUrl" : true,
        "sourceId" : "qr-social-teilantwort-guard"
      }
    },
    {
      "assert" : {
        "description" : "angelegt",
        "response" : "created",
        "warningOnly" : false
      }
    }]
  }]
}

```
