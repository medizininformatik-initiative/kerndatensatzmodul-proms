# UML Diagrams - MII IG PRO v2026.4.0

## UML Diagrams

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

* [Information Model Overview](#information-model-overview)
* [Component: Questionnaire Template](#component-questionnaire-template)
* [Component: Completed Questionnaire](#component-completed-questionnaire)
* [Component: Scores](#component-scores)
* [Component: Domains](#component-domains)
* [Implementation Notes](#implementation-notes)

### Information Model Overview

The information model consists of four main components that interact to represent the complete lifecycle of Patient-Reported Outcomes:

The complete information model can be viewed in the [GitHub repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/dev/input/Images/out/input/Images/Logical_Model_UML_complete/MII_PRO_Informationsmodell_Complete.svg).

**Legend**

The UML diagrams use the following notation:

* **Classes**: Rectangles with attributes and methods
* **Relationships**: 
* Solid line with diamond: Composition (part-whole relationship)
* Solid line with arrow: Association
* Dashed line with arrow: Dependency
 
* **Multiplicities**: 
* `1` = exactly one
* `0..1` = optional (zero or one)
* `1..*` = at least one
* `0..*` or `*` = any number
 

-------

### Component: Questionnaire Template

The questionnaire template defines the structure and content of a PRO instrument. It contains all necessary information for the display, collection, and evaluation of questions.

**FHIR Mapping**: The questionnaire template maps to the FHIR resource `Questionnaire`. The hierarchical structure of questions is represented through `Questionnaire.item`, while answer options are defined in `answerOption`.

-------

### Component: Completed Questionnaire

The completed questionnaire captures the concrete answers of a patient at a specific point in time. It references the underlying questionnaire template and stores the given answers in a structured manner.

**FHIR Mapping**: The completed questionnaire maps to `QuestionnaireResponse`. The individual answers are stored in `QuestionnaireResponse.item.answer`, supporting various data types.

-------

### Component: Scores

The score component encompasses both the definition of calculation algorithms (score template) and the concrete calculated values (score instance). It supports various calculation types and enables mappings between different scoring systems.

**Distinction between Score Types**:

* **Score_Fragebogen_Score**: Calculation is based on a complete filled-out questionnaire
* **Score_Itembasierter_Score**: Calculation is based on individual items from potentially different questionnaires

**FHIR Mapping**:

* Score templates map to `ObservationDefinition`
* Calculated scores are stored as `Observation`
* The connection to the data source is established via `Observation.derivedFrom`

-------

### Component: Domains

Domains classify PRO scores by health areas and enable their classification into overarching concepts. They define scaling and reference values for the interpretation of scores.

**FHIR Mapping**: Domains are primarily represented through terminology resources (`CodeSystem`, `ValueSet`) and metadata in the score definitions.

-------

### Implementation Notes

The UML diagrams show the conceptual structure of the information model. The concrete FHIR implementation differs in some details:

1. **Naming convention**: The implementation uses camelCase instead of underscores
1. **FHIR mappings**: Not all UML attributes have direct FHIR equivalents
1. **Extensions**: Additional FHIR extensions for special requirements

Details on the FHIR implementation can be found in the [Technical Implementation](technical-implementation.md) section.

