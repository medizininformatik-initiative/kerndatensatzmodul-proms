# Questionnaire Capabilities - MII IG PRO v2026.6.0

## Questionnaire Capabilities

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

## Questionnaire Variant Architecture: Separation of Concerns

### The Architectural Insight

The MII PRO module implements a sophisticated pattern for separation of concerns for questionnaires, where different variants of the same questionnaire serve different purposes within the healthcare data workflow. This architecture enables maximum flexibility while maintaining semantic consistency across different use cases.

#### Base Capabilities (Building Block Principle)

1. **Collectable**: How data is ENTERED by users
1. **Populatable**: How existing data is LOADED
1. **Calculatable**: How scores are CALCULATED from data
1. **Displayable**: How data/results are PRESENTED
1. **Extractable**: How data is TRANSFERRED from the questionnaire format into other FHIR resources

The crucial insight is that a concrete deployment often requires **neither single nor all capabilities, but combinations** that define specific use cases.

#### Use Case-Based Capability Combinations

##### Use Case 1: Interactive Data Collection with Real-Time Scoring

**Capabilities**: `[collectable, calculatable, displayable]`

* Patient enters data
* Scores are calculated in real time
* Results are displayed to the patient immediately
* **Example**: DiGA smartphone app with live score updates

##### Use Case 2: Mobile Data Collection -> Server-Side Calculation

**Capabilities Client**: `[collectable]` **Capabilities Server**: `[populatable, calculatable, extractable]`

* Mobile app only collects data
* Server loads QuestionnaireResponse
* Server calculates scores
* **Example**: Lightweight mobile PRO app

##### Use Case 3: Historical Data Recalculation

**Capabilities**: `[populatable, calculatable, extractable]`

* No user interaction
* Loads existing responses
* Applies new calculation logic
* **Example**: Migration to new scoring algorithms or data harmonization

##### Use Case 4: Clinical Results View

**Capabilities**: `[populatable, displayable]`

* Read-only access
* Displays existing data and scores
* No calculation or input
* **Example**: Physician dashboard in the HIS

##### Use Case 5: Pure Data Collection

**Capabilities**: `[collectable, extractable]`

* Collects data without calculation
* Extracts to QuestionnaireResponse
* Scoring performed externally
* **Example**: Paper-to-digital capture

### The Architectural Breakthrough

#### Pre-Population Workflow Pattern

```
Collectable Questionnaire -> QuestionnaireResponse -> Calculatable Questionnaire -> Calculated Scores -> Observation Resources

```

1. Patient completes the collectable questionnaire
1. QuestionnaireResponse is used for pre-population
1. Calculatable questionnaire generates scores
1. Scores are extracted as Observation resources

This pattern enables:

1. **Clean separation**: Collection logic separated from calculation logic
1. **Flexibility**: Different calculation strategies without impact on collection
1. **Reusability**: The same collected data can feed multiple calculation variants
1. **Evolution**: Calculation logic can evolve independently from collection

### Implementation Example: EQ-5D-5L

The EQ-5D-5L questionnaire demonstrates this architecture perfectly:

```
//FSH
// Base questionnaire with core structure
Instance: mii-qst-pro-euroqol-eq5d5l-base
* url = ".../mii-qst-pro-euroqol-eq5d5l-base"

// Displayable variant for viewing in the HIS
Instance: mii-qst-pro-euroqol-eq5d5l-displayable
* derivedFrom = ".../mii-qst-pro-euroqol-eq5d5l-base"
* extension[questionnaire-capabilities].valueCode = #displayable

// Collectable variant for patient data entry
Instance: mii-qst-pro-euroqol-eq5d5l-collectable
* derivedFrom = ".../mii-qst-pro-euroqol-eq5d5l-base"
* extension[questionnaire-capabilities].valueCode = #collectable
// Contains hidden "Missing value" options

// Calculatable variant with scoring logic
Instance: mii-qst-pro-euroqol-eq5d5l-calculatable
* derivedFrom = ".../mii-qst-pro-euroqol-eq5d5l-base"
* extension[questionnaire-capabilities].valueCode = #calculatable
// Contains FHIRPath expressions for index, VAS, profile scores

```

### Advanced Workflow Scenarios

#### Scenario 1: Mobile Collection -> Server-Side Calculation

1. Patient uses mobile app with**Collectable**variant
1. QuestionnaireResponse is sent to the server
1. Server uses**Calculatable**variant, pre-populated with response data
1. Calculated scores are stored as Observations
1. Clinician views results via**Displayable**variant

#### Scenario 2: Research Data Collection -> Multiple Scoring Algorithms

1. A single**Collectable**variant across all study centers
1. Multiple**Calculatable**variants for different scoring approaches:
* Standard scoring
* Population-specific scoring
* Research-specific algorithms

1. All calculations use the same source data

#### Scenario 3: Historical Data Migration

1. Legacy data imported as QuestionnaireResponses
1. **Calculatable**variants applied retrospectively
1. Standardized scores generated for historical comparisons

### Technical Implementation Details

#### Capability Extensions

The questionnaire capabilities are implemented as separate boolean sub-extensions:

```
//FSH
Extension: MII_PR_PRO_Questionnaire_Capabilities
* extension contains
    displayable 0..1 MS and
    collectable 0..1 MS and
    populatable 0..1 MS and
    extractable 0..1 MS and
    calculatable 0..1 MS and
    domainAligned 0..1 MS
* extension[displayable].value[x] only boolean
* extension[collectable].value[x] only boolean
* extension[populatable].value[x] only boolean
* extension[extractable].value[x] only boolean
* extension[calculatable].value[x] only boolean
* extension[domainAligned].value[x] only boolean

```

This boolean structure enables flexible capability combinations, as multiple capabilities can be active simultaneously.

#### Pre-Population Mechanism

Utilization of SDC pre-population capabilities:

```
* extension[sdc-questionnaire-sourceQueries].valueReference = Reference(QuestionnaireResponse/collected-data)
* extension[sdc-questionnaire-launchContext].extension[name].valueId = "sourceResponse"
* extension[sdc-questionnaire-launchContext].extension[type].valueCode = #QuestionnaireResponse

```

### Advantages of the Separation-of-Concerns Architecture

1. **Maintainability**: Changes to calculation logic do not affect collection
1. **Versioning**: Different versions of questionnaires and calculations can coexist
1. **Performance**: Calculations can be optimized separately from collection
1. **Compliance**: Different projects can have different presentation requirements
1. **Research**: New scoring algorithms can be tested without modifying collection
1. **Integration**: Systems can choose the variant appropriate to their capabilities

Additional advanced capabilities under consideration:

* Percentile ranks and Z-scores
* Age- and sex-adjusted norms

**Change Detection**:

* Automatic detection of significant changes
* Trend analyses across multiple time points
* Alert generation for critical changes

These advanced capabilities will further improve the integration of PROs into clinical decision-making processes and quality assurance.

### Conclusion

The separation of displayable, collectable, and calculatable questionnaire capabilities provides a structured approach for PRO implementation. This division into fundamentally different responsibilities, which can be combined as needed, supports the development of flexible and maintainable systems for Patient-Reported Outcomes and their instruments.

This architectural approach addresses the practical challenges of modern healthcare IT, where data collection, calculation, and presentation frequently occur in different systems, at different times, and for different purposes.

