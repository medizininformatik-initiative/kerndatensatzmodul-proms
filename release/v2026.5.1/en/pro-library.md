# PRO Library - MII IG PRO v2026.5.1

## PRO Library

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

The PRO Library of the MII PRO Module comprises a structured collection of Patient-Reported Outcome Measures (PROMs) standardized for use in the German healthcare system. Each questionnaire is equipped with specific capabilities that define its applicability in different clinical and research contexts.

### Overview of Implemented Questionnaires

#### Fully Implemented Questionnaires

| | | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **PHQ-9** | Complete | Depression | 9+1 | DE/EN | Y | Y | Y | Y | Y | Y |
| **EQ-5D-5L** | Complete | Quality of Life | 5+VAS | DE/EN | Y | Y | Y | Y | Y | Y |
| **BDI-II** | Data and Scoring | Depression | 21 | DE | - | - | Y | Y | Y | Y |
| **PROMIS-29** | Complete | Multi-Domain | 29 | DE/EN | Y | Y | Y | Y | Y | Y |
| **PROMIS Depression SF 4a** | Complete | Depression | 4 | DE/EN | Y | Y | Y | Y | Y | Y |
| **PROMIS Cognitive Function SF 4a** | Complete | Cognition | 4 | DE/EN | Y | Y | Y | Y | Y | Y |
| **EORTC QLQ-C30** | Complete | Oncology | 30 | DE/EN | Y | Y | Y | Y | - | - |
| **DASS-21** | Complete | Depression/Anxiety/Stress | 21 | DE/EN | Y | Y | Y | Y | - | Y |

#### Metadata-Only Reference Questionnaires

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **HADS** | Metadata | Anxiety/Depression | Licensed | Calculatable, Extractable |
| **EPDS** | Metadata | Postnatal Depression | Licensed | Metadata only |
| **CES-D** | Metadata | Depression | Licensed | Metadata only |
| **K6** | Metadata | Psychological Distress | Licensed | Metadata only |

### Capabilities Legend

| | | |
| :--- | :--- | :--- |
| **D** | Displayable | Can be rendered visually |
| **C** | Collectable | Can be completed by patients |
| **Cal** | Calculatable | Automatic score calculation supported |
| **E** | Extractable | Data can be extracted into Observations |
| **P** | Populatable | Can be pre-populated with existing data |
| **DA** | Domain-aligned | Domain-specific alignment available |

### Implementation Status

#### Fully Implemented

* **PHQ-9 (Patient Health Questionnaire-9)** 
* Depression screening tool with 9 questions + functional impairment
* PROMIS Depression T-Score mapping via PROsetta Stone
* SDC-based automatic score calculation
* Full German and English translations
 
* **EQ-5D-5L (EuroQol 5 Dimensions 5 Levels)** 
* Generic quality of life instrument
* 3 variants: Minimal, Displayable, Collectable
* Index, VAS, and Profile scores
* CQL libraries for calculations
 
* **EORTC QLQ-C30** 
* Oncology-specific quality of life instrument with 30 questions
* Full implementation of all 15 subscales with automatic score calculations
* MII terminology with German and English translations
* Comprehensive scoring methodology with linear transformation (0-100 scale)
* ObservationDefinitions for all function and symptom scales
 
* **PROMIS-29 Profile v2.1** 
* 7 domains: Physical Function, Anxiety, Depression, Fatigue, Sleep, Social Function, Pain
* Variable-based score calculations
* Raw scores and T-scores for all domains
 
* **PROMIS Short Forms** 
* Depression SF 4a and Cognitive Function SF 4a
* Full implementation with automatic score calculation
* Prepared for item-based architecture
 
* **DASS-21 (Depression Anxiety Stress Scales - 21 Items)** 
* Simultaneous assessment of depression, anxiety, and stress with 21 items
* 3 subscales with raw scores and DASS-42 equivalents (6 scores)
* Public domain – freely available without license fees
* German validation by Nilges & Essau (2015)
 

#### Data and Scoring Implemented

* **BDI-II (Beck Depression Inventory II)** 
* Comprehensive depression inventory with 21 items
* Category-based score calculation functional
* MII terminology with scoring weights
* Display and collection capabilities still required for full usage
 

### Technical Highlights

#### SDC Integration

All fully implemented questionnaires use extended SDC capabilities:

* **Calculated Expressions**: Automatic score calculation with FHIRPath
* **Conditional Display**: Dynamic visibility based on responses
* **Initial Values**: Context-dependent pre-population of fields
* **Observation Extraction**: Direct conversion to FHIR Observations

#### Terminology Strategy

* **MII ValueSets** with scoring weights for reliable calculations
* **Multilingual support** via FHIR Translation Extensions
* **LOINC integration** where available, with German translations

#### Questionnaire Variants

Flexible architecture with different capability combinations:

* **Displayable**: Pure display of results
* **Collectable**: Interactive data collection
* **Populatable**: Pre-population from existing data
* **Calculatable**: Server-side score calculation

### Usage in Practice

The implemented questionnaires can be used in various scenarios:

1. **Direct Patient Survey**(Collectable + Displayable)
1. **Automated Score Calculation**(Calculatable + Extractable)
1. **Longitudinal Display**(Populatable + Displayable)
1. **Research Data Collection**(All Capabilities)

### Further Information

Detailed information on individual questionnaires can be found on the respective sub-pages:

* [PHQ-9](phq-9.md)
* [EQ-5D-5L](eq-5d-5l.md)
* [BDI-II](bdi-ii.md)
* [PROMIS](promis.md)
* [EORTC QLQ-C30](eortc-qlq-c30.md)
* [DASS-21](dass-21.md)
* [Minimal Reference Questionnaires](minimal-reference-questionnaires.md)

