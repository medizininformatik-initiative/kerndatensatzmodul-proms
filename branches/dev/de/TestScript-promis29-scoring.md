# PROMIS-29 Scoring — Validierung und Persistenz - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PROMIS-29 Scoring — Validierung und Persistenz**

## TestScript: PROMIS-29 Scoring — Validierung und Persistenz (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/TestScript/promis29-scoring | *Version*:2027.0.0-ballot.1 |
| Draft Stand: 2026-10-14 | *Maschinenlesbarer Name*:PROMIS29ScoringTestScript |

 
Je Szenario: QuestionnaireResponse serverseitig validieren ($validate) und anlegen. Die Fixtures sind die IG-Beispiele promis29-*. Voraussetzung am Ziel: PROMIS-29-Questionnaire geladen. Die $extract-Prüfungen synthetisiert scripts/assemble-testscript-rundir.mjs für den CI-Lauf. 

-------

**German**

-------

**Artifact Version Algorithm**: [Version Algorithm: natural](http://hl7.org/fhir/R5/codesystem-version-algorithm.html#version-algorithm-natural) (Natural)

**url**: [TestScript PROMIS-29 Scoring — Validierung und Persistenz](TestScript-promis29-scoring.md)

**version**: 2027.0.0-ballot.1

**name**: PROMIS29ScoringTestScript

**title**: PROMIS-29 Scoring — Validierung und Persistenz

**status**: Draft

**experimental**: true

**date**: 2026-10-14 08:51:14+0000

**publisher**: Medizininformatik-Initiative

**contact**: Medizininformatik-Initiative: [https://www.medizininformatik-initiative.de](https://www.medizininformatik-initiative.de),[office@medizininformatik-initiative.de](mailto:office@medizininformatik-initiative.de)

**description**: 

Je Szenario: QuestionnaireResponse serverseitig validieren ($validate) und anlegen. Die Fixtures sind die IG-Beispiele promis29-*. Voraussetzung am Ziel: PROMIS-29-Questionnaire geladen. Die $extract-Prüfungen synthetisiert scripts/assemble-testscript-rundir.mjs für den CI-Lauf.

**jurisdiction**: Germany

> **metadata**

### Capabilities

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Required** | **Validated** | **Description** | **Capabilities** |
| * | true | false | FHIR R4 Server, PROMIS-29-Questionnaire geladen | [http://hl7.org/fhir/CapabilityStatement/base](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://hl7.org/fhir/CapabilityStatement/base) |


> **fixture**
> **id**qr-physical-function-floor
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-physical-function-floor.md)

> **fixture**
> **id**qr-physical-function-ceil
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-physical-function-ceil.md)

> **fixture**
> **id**qr-physical-function-asym
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-physical-function-asym.md)

> **fixture**
> **id**qr-anxiety-floor
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-anxiety-floor.md)

> **fixture**
> **id**qr-anxiety-ceil
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-anxiety-ceil.md)

> **fixture**
> **id**qr-anxiety-asym
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-anxiety-asym.md)

> **fixture**
> **id**qr-depression-floor
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-depression-floor.md)

> **fixture**
> **id**qr-depression-ceil
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-depression-ceil.md)

> **fixture**
> **id**qr-depression-asym
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-depression-asym.md)

> **fixture**
> **id**qr-fatigue-floor
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-fatigue-floor.md)

> **fixture**
> **id**qr-fatigue-ceil
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-fatigue-ceil.md)

> **fixture**
> **id**qr-fatigue-asym
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-fatigue-asym.md)

> **fixture**
> **id**qr-sleep-floor
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-sleep-floor.md)

> **fixture**
> **id**qr-sleep-ceil
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-sleep-ceil.md)

> **fixture**
> **id**qr-sleep-asym
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-sleep-asym.md)

> **fixture**
> **id**qr-social-floor
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-social-floor.md)

> **fixture**
> **id**qr-social-ceil
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-social-ceil.md)

> **fixture**
> **id**qr-social-asym
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-social-asym.md)

> **fixture**
> **id**qr-pain-interference-floor
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-pain-interference-floor.md)

> **fixture**
> **id**qr-pain-interference-ceil
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-pain-interference-ceil.md)

> **fixture**
> **id**qr-pain-interference-asym
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-pain-interference-asym.md)

> **fixture**
> **id**qr-social-teilantwort-guard
**autocreate**: false**autodelete**: false**resource**: [Response to Questionnaire '->MII QST PRO PROMIS-29 (Adults)' about '->Max Mustermann Male, DoB: 1980-05-15 ( http://identifiers.org/patient-ids#12345)'](QuestionnaireResponse-promis29-social-teilantwort-guard.md)

> **test****name**: case-physical-function-floor**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-physical-function-floor | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-physical-function-floor |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-physical-function-ceil**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-physical-function-ceil | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-physical-function-ceil |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-physical-function-asym**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-physical-function-asym | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-physical-function-asym |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-anxiety-floor**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-anxiety-floor | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-anxiety-floor |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-anxiety-ceil**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-anxiety-ceil | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-anxiety-ceil |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-anxiety-asym**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-anxiety-asym | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-anxiety-asym |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-depression-floor**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-depression-floor | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-depression-floor |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-depression-ceil**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-depression-ceil | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-depression-ceil |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-depression-asym**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-depression-asym | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-depression-asym |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-fatigue-floor**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-fatigue-floor | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-fatigue-floor |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-fatigue-ceil**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-fatigue-ceil | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-fatigue-ceil |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-fatigue-asym**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-fatigue-asym | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-fatigue-asym |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-sleep-floor**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-sleep-floor | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-sleep-floor |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-sleep-ceil**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-sleep-ceil | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-sleep-ceil |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-sleep-asym**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-sleep-asym | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-sleep-asym |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-social-floor**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-social-floor | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-social-floor |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-social-ceil**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-social-ceil | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-social-ceil |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-social-asym**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-social-asym | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-social-asym |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-pain-interference-floor**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-pain-interference-floor | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-pain-interference-floor |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-pain-interference-ceil**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-pain-interference-ceil | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-pain-interference-ceil |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-pain-interference-asym**description**: Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-pain-interference-asym | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-pain-interference-asym |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |



> **test****name**: case-social-teilantwort-guard**description**: Count-Guard: T-Tabellen gelten nur bei vollstaendig beantworteter Short Form
> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **EncodeRequestUrl** | **Method** | **SourceId** | **Url** |
| * | true | POST | qr-social-teilantwort-guard | /QuestionnaireResponse/$validate |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Expression** | **Operator** | **WarningOnly** |
| * | keine Validierungsfehler | OperationOutcome.issue.where(severity = 'error') | empty | false |


> **action**

### Operations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **EncodeRequestUrl** | **SourceId** |
| * | [Test script operation code: create](http://terminology.hl7.org/7.3.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create)(Create) | QuestionnaireResponse | true | qr-social-teilantwort-guard |


> **action**

### Asserts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Response** | **WarningOnly** |
| * | angelegt | created | false |





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
  "version" : "2027.0.0-ballot.1",
  "name" : "PROMIS29ScoringTestScript",
  "title" : "PROMIS-29 Scoring — Validierung und Persistenz",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-14T08:51:14+00:00",
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
