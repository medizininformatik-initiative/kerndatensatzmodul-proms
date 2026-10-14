# PROMIS-29 Scoring — Terminologie der Antwortoptionen - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PROMIS-29 Scoring — Terminologie der Antwortoptionen**

## TestScript: PROMIS-29 Scoring — Terminologie der Antwortoptionen (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/TestScript/promis29-terminology | *Version*:2027.0.0-ballot.1 |
| Draft Stand: 2026-10-14 | *Maschinenlesbarer Name*:PROMIS29TerminologyTestScript |

 
Validiert jedes in den Szenarien verwendete Coding nativ per CodeSystem/$validate-code (Code UND Display) gegen LOINC. Voraussetzung am Ziel: LOINC-fähige Terminologie. displayLanguage=de folgt mit dem geplanten CodeSystem-Supplement (HDB-1008). 

-------

**German**

-------

**Artifact Version Algorithm**: [Version Algorithm: natural](http://hl7.org/fhir/R5/codesystem-version-algorithm.html#version-algorithm-natural) (Natural)

**url**: [TestScript PROMIS-29 Scoring — Terminologie der Antwortoptionen](TestScript-promis29-terminology.md)

**version**: 2027.0.0-ballot.1

**name**: PROMIS29TerminologyTestScript

**title**: PROMIS-29 Scoring — Terminologie der Antwortoptionen

**status**: Draft

**experimental**: true

**date**: 2026-10-14 07:05:42+0000

**publisher**: Medizininformatik-Initiative

**contact**: Medizininformatik-Initiative: [https://www.medizininformatik-initiative.de](https://www.medizininformatik-initiative.de),[office@medizininformatik-initiative.de](mailto:office@medizininformatik-initiative.de)

**description**: 

Validiert jedes in den Szenarien verwendete Coding nativ per CodeSystem/$validate-code (Code UND Display) gegen LOINC. Voraussetzung am Ziel: LOINC-fähige Terminologie. displayLanguage=de folgt mit dem geplanten CodeSystem-Supplement (HDB-1008).

**jurisdiction**: Germany

> **metadata**

### Capabilities

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Required** | **Validated** | **Description** | **Capabilities** |
| * | true | false | FHIR R4 Terminologieserver mit LOINC | [http://hl7.org/fhir/CapabilityStatement/base](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://hl7.org/fhir/CapabilityStatement/base) |


> **test****name**: terminology-displays**description**: Antwort-Codings (Code+Display) gegen LOINC
> **action**

### Operations

| | | |
| :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Url** |
| * | true | /CodeSystem/$validate-code?url=http://loinc.org&code=LA13912-3&display=Unable to do |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **WarningOnly** |
| * | LA13912-3 (Unable to do) gültig | Parameters.parameter.where(name = 'result').value = true | false |


> **action**

### Operations

| | | |
| :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Url** |
| * | true | /CodeSystem/$validate-code?url=http://loinc.org&code=LA13921-4&display=Without any difficulty |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **WarningOnly** |
| * | LA13921-4 (Without any difficulty) gültig | Parameters.parameter.where(name = 'result').value = true | false |


> **action**

### Operations

| | | |
| :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Url** |
| * | true | /CodeSystem/$validate-code?url=http://loinc.org&code=LA13920-6&display=With some difficulty |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **WarningOnly** |
| * | LA13920-6 (With some difficulty) gültig | Parameters.parameter.where(name = 'result').value = true | false |


> **action**

### Operations

| | | |
| :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Url** |
| * | true | /CodeSystem/$validate-code?url=http://loinc.org&code=LA13919-8&display=With much difficulty |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **WarningOnly** |
| * | LA13919-8 (With much difficulty) gültig | Parameters.parameter.where(name = 'result').value = true | false |


> **action**

### Operations

| | | |
| :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Url** |
| * | true | /CodeSystem/$validate-code?url=http://loinc.org&code=LA6270-8&display=Never |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **WarningOnly** |
| * | LA6270-8 (Never) gültig | Parameters.parameter.where(name = 'result').value = true | false |


> **action**

### Operations

| | | |
| :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Url** |
| * | true | /CodeSystem/$validate-code?url=http://loinc.org&code=LA9933-8&display=Always |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **WarningOnly** |
| * | LA9933-8 (Always) gültig | Parameters.parameter.where(name = 'result').value = true | false |


> **action**

### Operations

| | | |
| :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Url** |
| * | true | /CodeSystem/$validate-code?url=http://loinc.org&code=LA10082-8&display=Sometimes |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **WarningOnly** |
| * | LA10082-8 (Sometimes) gültig | Parameters.parameter.where(name = 'result').value = true | false |


> **action**

### Operations

| | | |
| :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Url** |
| * | true | /CodeSystem/$validate-code?url=http://loinc.org&code=LA10066-1&display=Rarely |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **WarningOnly** |
| * | LA10066-1 (Rarely) gültig | Parameters.parameter.where(name = 'result').value = true | false |


> **action**

### Operations

| | | |
| :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Url** |
| * | true | /CodeSystem/$validate-code?url=http://loinc.org&code=LA6568-5&display=Not at all |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **WarningOnly** |
| * | LA6568-5 (Not at all) gültig | Parameters.parameter.where(name = 'result').value = true | false |


> **action**

### Operations

| | | |
| :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Url** |
| * | true | /CodeSystem/$validate-code?url=http://loinc.org&code=LA13914-9&display=Very much |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **WarningOnly** |
| * | LA13914-9 (Very much) gültig | Parameters.parameter.where(name = 'result').value = true | false |


> **action**

### Operations

| | | |
| :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Url** |
| * | true | /CodeSystem/$validate-code?url=http://loinc.org&code=LA13909-9&display=Somewhat |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **WarningOnly** |
| * | LA13909-9 (Somewhat) gültig | Parameters.parameter.where(name = 'result').value = true | false |


> **action**

### Operations

| | | |
| :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Url** |
| * | true | /CodeSystem/$validate-code?url=http://loinc.org&code=LA13863-8&display=A little bit |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **WarningOnly** |
| * | LA13863-8 (A little bit) gültig | Parameters.parameter.where(name = 'result').value = true | false |


> **action**

### Operations

| | | |
| :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Url** |
| * | true | /CodeSystem/$validate-code?url=http://loinc.org&code=LA13913-1&display=Very Good |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **WarningOnly** |
| * | LA13913-1 (Very Good) gültig | Parameters.parameter.where(name = 'result').value = true | false |


> **action**

### Operations

| | | |
| :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Url** |
| * | true | /CodeSystem/$validate-code?url=http://loinc.org&code=LA9615-1&display=Very poor |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **WarningOnly** |
| * | LA9615-1 (Very poor) gültig | Parameters.parameter.where(name = 'result').value = true | false |





## Resource Content

```json
{
  "resourceType" : "TestScript",
  "id" : "promis29-terminology",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "natural",
      "display" : "Natural"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/TestScript/promis29-terminology",
  "version" : "2027.0.0-ballot.1",
  "name" : "PROMIS29TerminologyTestScript",
  "title" : "PROMIS-29 Scoring — Terminologie der Antwortoptionen",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-14T07:05:42+00:00",
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
  "description" : "Validiert jedes in den Szenarien verwendete Coding nativ per CodeSystem/$validate-code (Code UND Display) gegen LOINC. Voraussetzung am Ziel: LOINC-fähige Terminologie. displayLanguage=de folgt mit dem geplanten CodeSystem-Supplement (HDB-1008).",
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
      "description" : "FHIR R4 Terminologieserver mit LOINC",
      "capabilities" : "http://hl7.org/fhir/CapabilityStatement/base"
    }]
  },
  "test" : [{
    "name" : "terminology-displays",
    "description" : "Antwort-Codings (Code+Display) gegen LOINC",
    "action" : [{
      "operation" : {
        "encodeRequestUrl" : true,
        "url" : "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13912-3&display=Unable to do"
      }
    },
    {
      "assert" : {
        "description" : "LA13912-3 (Unable to do) gültig",
        "expression" : "Parameters.parameter.where(name = 'result').value = true",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "encodeRequestUrl" : true,
        "url" : "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13921-4&display=Without any difficulty"
      }
    },
    {
      "assert" : {
        "description" : "LA13921-4 (Without any difficulty) gültig",
        "expression" : "Parameters.parameter.where(name = 'result').value = true",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "encodeRequestUrl" : true,
        "url" : "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13920-6&display=With some difficulty"
      }
    },
    {
      "assert" : {
        "description" : "LA13920-6 (With some difficulty) gültig",
        "expression" : "Parameters.parameter.where(name = 'result').value = true",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "encodeRequestUrl" : true,
        "url" : "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13919-8&display=With much difficulty"
      }
    },
    {
      "assert" : {
        "description" : "LA13919-8 (With much difficulty) gültig",
        "expression" : "Parameters.parameter.where(name = 'result').value = true",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "encodeRequestUrl" : true,
        "url" : "/CodeSystem/$validate-code?url=http://loinc.org&code=LA6270-8&display=Never"
      }
    },
    {
      "assert" : {
        "description" : "LA6270-8 (Never) gültig",
        "expression" : "Parameters.parameter.where(name = 'result').value = true",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "encodeRequestUrl" : true,
        "url" : "/CodeSystem/$validate-code?url=http://loinc.org&code=LA9933-8&display=Always"
      }
    },
    {
      "assert" : {
        "description" : "LA9933-8 (Always) gültig",
        "expression" : "Parameters.parameter.where(name = 'result').value = true",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "encodeRequestUrl" : true,
        "url" : "/CodeSystem/$validate-code?url=http://loinc.org&code=LA10082-8&display=Sometimes"
      }
    },
    {
      "assert" : {
        "description" : "LA10082-8 (Sometimes) gültig",
        "expression" : "Parameters.parameter.where(name = 'result').value = true",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "encodeRequestUrl" : true,
        "url" : "/CodeSystem/$validate-code?url=http://loinc.org&code=LA10066-1&display=Rarely"
      }
    },
    {
      "assert" : {
        "description" : "LA10066-1 (Rarely) gültig",
        "expression" : "Parameters.parameter.where(name = 'result').value = true",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "encodeRequestUrl" : true,
        "url" : "/CodeSystem/$validate-code?url=http://loinc.org&code=LA6568-5&display=Not at all"
      }
    },
    {
      "assert" : {
        "description" : "LA6568-5 (Not at all) gültig",
        "expression" : "Parameters.parameter.where(name = 'result').value = true",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "encodeRequestUrl" : true,
        "url" : "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13914-9&display=Very much"
      }
    },
    {
      "assert" : {
        "description" : "LA13914-9 (Very much) gültig",
        "expression" : "Parameters.parameter.where(name = 'result').value = true",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "encodeRequestUrl" : true,
        "url" : "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13909-9&display=Somewhat"
      }
    },
    {
      "assert" : {
        "description" : "LA13909-9 (Somewhat) gültig",
        "expression" : "Parameters.parameter.where(name = 'result').value = true",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "encodeRequestUrl" : true,
        "url" : "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13863-8&display=A little bit"
      }
    },
    {
      "assert" : {
        "description" : "LA13863-8 (A little bit) gültig",
        "expression" : "Parameters.parameter.where(name = 'result').value = true",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "encodeRequestUrl" : true,
        "url" : "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13913-1&display=Very Good"
      }
    },
    {
      "assert" : {
        "description" : "LA13913-1 (Very Good) gültig",
        "expression" : "Parameters.parameter.where(name = 'result').value = true",
        "warningOnly" : false
      }
    },
    {
      "operation" : {
        "encodeRequestUrl" : true,
        "url" : "/CodeSystem/$validate-code?url=http://loinc.org&code=LA9615-1&display=Very poor"
      }
    },
    {
      "assert" : {
        "description" : "LA9615-1 (Very poor) gültig",
        "expression" : "Parameters.parameter.where(name = 'result').value = true",
        "warningOnly" : false
      }
    }]
  }]
}

```
