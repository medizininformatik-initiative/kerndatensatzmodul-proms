# Module Description - MII IG PRO v2026.5.2

## Module Description

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

The "PROs, PROMs, and Derived Metrics" module of the Medical Informatics Initiative standardizes the collection and analysis of patient-reported health data (Patient-Reported Outcomes) through FHIR-based specifications. It provides guidance on questionnaire design for various application areas (display, data collection, calculation, conversion of questionnaire content into other FHIR resources). Furthermore, frequently used validated questionnaires such as PHQ-9, PROMIS-29, EQ-5D-5L, and EORTC QLQ-C30 are provided centrally for data collection or as a common harmonization mapping, along with strategies for instrument-independent secondary data use.

### Current Implementation (Commenting Version 2026)

#### Implemented PRO Instruments

* **PHQ-9** – Full implementation with scoring and populatable capability
* **EQ-5D-5L** – Multiple variants (minimal, displayable, collectable, coded) with full score calculation
* **PROMIS-29** – Basic structure implemented, multi-domain scoring in progress
* **PROMIS Depression SF 4a** – Basic implementation available
* **PROMIS Cognitive Function SF 4a** – Basic implementation available
* **EORTC QLQ-C30** – Scoring methodology and terminology implemented
* **BDI-II** – Not displayable due to licensing, but scoring with ordinalValue (SDC STU3) is functional

#### Metadata-Only References (Licensing Restrictions)

* **HADS** – Hospital Anxiety and Depression Scale (not displayable)
* **EPDS** – Edinburgh Postnatal Depression Scale (metadata only)
* **CES-D** – Center for Epidemiologic Studies Depression Scale (metadata only)
* **K6** – Kessler Psychological Distress Scale (metadata only)

### Future Developments

#### 2026 – Phase 1: CQL Integration and Derived Metrics

##### CQL-Based Score Calculation

* Migration from FHIRPath to CQL for complex calculations
* Individual and population-based score evaluation
* Measure/MeasureReport resources for quality indicators

##### Derived Metrics

* **Clinical cut-offs**: Severity categorization (mild, moderate, severe)
* **MID/MCID**: Minimal Important Difference / Minimal Clinically Important Difference
* **Reliable Change Index (RCI)**: Statistical significance of changes
* **Population norms**: Age- and gender-specific references
* **Percentile ranks**: Contextualization within the population

##### Cross-Instrument Score Mapping

* PHQ-9 to PROMIS Depression T-Score conversion
* BDI-II to PROMIS Depression mapping
* Validated FHIR-compliant conversion algorithms

#### 2026 – Phase 2: SDC STU4 Features (Post-Balloting)

##### Migration to SDC STU4

* Migration from ordinalValue to itemWeight after STU4 finalization
* FHIRPath `.weight()` function instead of `.ordinal()`
* Utilization of extended SDC features 
* e.g., Questionnaire.version plus versionAlgorithm
 

#### 2027 – Phase 3: Item-Based Architecture

##### Item Bank Management

* MII-defined item catalogs with consistent linkIds
* Cross-item score calculation
* Flexible questionnaire composition from item pools

##### Advanced SDC Capabilities

* **Adaptive Questionnaires**: Computer Adaptive Testing (CAT) support
* **Form Assembly**: Dynamic questionnaire assembly
* **Advanced Rendering**: Extended UI features
* **Data Extraction**: Improved extraction patterns

##### Modular Questionnaire Design

* Reusable item groups
* Cross-domain item sharing
* Version management at the item level

##### Computer Adaptive Testing (CAT)

* Adaptive item selection based on responses
* Item Response Theory (IRT) integration
* Optimized test length with equivalent precision

### Prerequisites for Development

#### For Each New PRO Instrument

1. **Relevant publications**
* Development publication
* Validation publications (German population)
* Translation publications
* Modification publications

1. **License clarification**
* Displayable rights
* Commercial use
* Modification rights
* Translation rights

1. **Technical documentation**
* Scoring algorithms
* Normative values (population-specific)
* Interpretation guidelines
* Minimal Important Differences

