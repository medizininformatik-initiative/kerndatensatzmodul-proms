# Workflows - MII IG PRO v2026.4.1

## Workflows

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

* [Capabilities](#capabilities)
* [Workflow Patterns](#workflow-patterns) 
* [Standard Workflow](#standard-workflow)
* [Direct Collection with Real-Time Calculation](#workflow-pattern-1-direct-collection-with-real-time-calculation)
* [Mobile Collection with Server-Side Calculation](#workflow-pattern-2-mobile-collection-with-server-side-calculation)
* [Historical Recalculation](#workflow-pattern-3-historical-recalculation)
* [Clinical Results View](#workflow-pattern-4-clinical-results-view)
* [Pure Data Collection](#workflow-pattern-5-pure-data-collection)
 
* [Score Representation](#score-representation)
* [Implementation Patterns](#implementation-patterns) 
* [Calculated Expressions](#calculated-expressions)
* [Initial Expressions for Populatable](#initial-expressions-for-populatable)
* [Extraction to Observations](#extraction-to-observations)
 
* [Best Practices](#best-practices) 
* [Capability Selection](#capability-selection)
* [Performance Considerations](#performance-considerations)
* [Error Handling](#error-handling)
 

-------

Based on the use case scenarios and the requirements derived therein (see [Use Cases](use-cases.md)), implementation approaches can be identified. In the following, these implementation approaches are presented in the form of abstracted **workflows** that serve as reference solutions. The foundation for defining a workflow is formed by so-called **capabilities**.

### Capabilities

The use case scenarios make it clear that questionnaires can be collected, processed, and displayed in various ways and used for different purposes.

The module must therefore meet the overarching requirement of providing questionnaires as flexibly as possible for different purposes, while maintaining semantic consistency across different use cases. To meet this requirement, in addition to defining a standardized questionnaire, it must be specified for what purpose it should be used – more precisely, which capabilities need to be supported to fulfill the intended purpose.

Therefore, the following capabilities, which can be applied to the definition of a questionnaire and are freely combinable, have been established:

* `collectable`: How data is **entered** by users
* `populatable`: How existing data is **loaded**
* `calculatable`: How scores are **calculated** from data
* `displayable`: How data/results are **presented**
* `extractable`: How data is **transferred** from the questionnaire format into other FHIR resources

### Workflow Patterns

#### Standard Workflow

The standard workflow follows the FHIR core specification and the designated FHIR resources for defining questionnaires, representing response forms, and extracting collected answers as processable values.

**Process**:

1. Typically, a patient completes a questionnaire that is defined as a FHIR Questionnaire (Q) and displayed via a user interface (UI)
1. The entered answers are then saved as a FHIR QuestionnaireResponse (QR), and a score is determined if applicable

**Capabilities used**: displayable, collectable

**Example**: Assessment of symptom severity with EORTC-QLQ questionnaires accompanying and following radiotherapy/systemic therapy treatment in oncology

-------

#### Workflow Pattern 1: Direct Collection with Real-Time Calculation

This workflow pattern focuses on direct, i.e., non-delayed, completion of a questionnaire via a user interface (UI) and score calculation after the answers have been entered.

**Process**:

1. A patient completes a questionnaire via a UI by answering the contained questions
1. Based on the answers and the defined score calculation rules, the score is calculated in real time
1. Optionally, the answers and the calculated score are stored on a server, e.g., a FHIR server, for further processing
1. The calculated score is immediately displayed to the patient in the UI

**Capabilities used:** `[collectable, calculatable, displayable, extractable]`

**Example**: DiGA smartphone app with in-app score calculation

-------

#### Workflow Pattern 2: Mobile Collection with Server-Side Calculation

This workflow pattern focuses on the sole completion of a questionnaire via a user interface on the client side and subsequent score calculation and storage on the server side.

**Process**:

1. A patient completes a questionnaire, e.g., via a mobile app, by answering the contained questions
1. Subsequently, the answers and, if applicable, information about the completed questionnaire are sent to the server
1. The server calculates the score based on the defined score calculation rules and, where applicable, extracts relevant answers as independent data
1. The calculated and extracted data are stored, e.g., on a FHIR server

**Capabilities used:**

* Client (Mobile App): `[collectable]`
* Server: `[populatable, calculatable, extractable]`

**Example**: Lightweight mobile PRO app

-------

#### Workflow Pattern 3: Historical Recalculation

This workflow pattern describes the renewed, potentially automated, score calculation without further user interaction.

**Process**:

1. Previously collected answers to a questionnaire are provided to a service
1. The service loads the underlying questionnaire and the score calculation rules
1. The service calculates the score based on the new score calculation rules
1. The calculated and extracted data are stored, e.g., on a FHIR server

**Capabilities used:** `[populatable, calculatable, extractable]`

**Example**: Migration to new scoring algorithms or data harmonization

-------

#### Workflow Pattern 4: Clinical Results View

In the context of patient care or cohort data analysis, individual or aggregated datasets are viewed without recalculation.

**Process**:

1. An authorized user with read access selects data
1. The existing data, consisting of answers and associated stored scores, is displayed

**Capabilities used**: `[populatable, displayable]`

**Example**: Physician dashboard in the HIS

-------

#### Workflow Pattern 5: Pure Data Collection

In the context of patient care, pure data collection without calculations takes place, e.g., retrospective transcription.

**Process**:

1. An authorized user (e.g., healthcare professional) captures the answers to a questionnaire
1. Answers are stored in a FHIR-conformant target structure, e.g., as a FHIR QuestionnaireResponse
1. Optionally, downstream scoring is performed, e.g., by external services

**Capabilities used**: `[collectable, extractable]`

**Example**: Paper-to-digital capture

-------

### Score Representation

The various workflow patterns demonstrate that different forms of representation exist for displaying a score.

The fundamental representation form for a calculated score is its mapping as an independent item in a FHIR QuestionnaireResponse. If only the score and not the actual answers are relevant for further analyses, the calculated score can be extracted from the FHIR QuestionnaireResponse and represented as a FHIR Observation. A score extracted and stored in this way can, provided empirically validated rules for mapping to a domain-specific T-score exist and have been defined, be mapped to the domain-specific T-score.

In this way, an instrument-independent evaluation and a domain-specific comparison of the collected data can be performed.

-------

### Implementation Patterns

#### Calculated Expressions

Scores are calculated using FHIRPath expressions:

```
// Simple sum
%resource.item.answer.value.ordinal().sum()

// Weighted sum with selection
%resource.item.where(linkId.matches('^item-[1-9]$')).answer.value.ordinal().sum()

// With variables for complex calculations
%rawScore = %resource.item.answer.value.ordinal().sum()
iif(%rawScore < 5, 'minimal', iif(%rawScore < 10, 'mild', 'moderate'))

```

#### Initial Expressions for Populatable

Pre-population from existing data:

```
// Single item
iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='q1').answer.value, {})

// With fallback
%sourceResponse.item.where(linkId='q1').answer.value | {}

```

#### Extraction to Observations

Transformation is performed via SDC extraction extensions or server-side logic:

```
* item.extension[observationExtract] = true
* item.code = $LNC#44261-6 "PHQ-9 total score"

```

-------

### Best Practices

#### Capability Selection

The selection of capabilities should be guided by the use case:

* **Patient portals**: `[collectable, calculatable, displayable]`
* **Mobile apps**: Only `[collectable]` (minimal footprint)
* **Server systems**: `[populatable, calculatable, extractable]`
* **Reporting systems**: Only `[displayable]`

#### Performance Considerations

* UI-side calculations only for small questionnaires
* Server-side calculation for complex scores
* Caching of ObservationDefinitions
* Batch processing for historical data

#### Error Handling

* Validate all mandatory fields before score calculation
* Clear error messages for invalid values
* Fallback strategies for missing capabilities
* Logging of mapping errors

