# Scoring - MII IG PRO v2026.5.0

## Scoring

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Overview

The MII PRO module supports various scoring strategies along the **Questionnaire -> QuestionnaireResponse -> Observation** workflow. The choice of scoring method depends on organizational requirements, technical infrastructure, and use cases.

The scoring strategies can be divided into two fundamental categories:

* **Out-of-FHIR Scoring**: External calculation with FHIR as the transport layer
* **In-FHIR Scoring**: Native FHIR-based calculation logic

-------

### Out-of-FHIR Scoring Strategies

#### 1. No Calculation – Pure Data Collection

**Use case**: Structured data collection without score calculations

* Questionnaire with basic items
* QuestionnaireResponse for raw data
* No automatic Observation creation
* **Example**: Data collection for subsequent external analysis

#### 2. Pre-Calculated Scores (Import-Based)

**Use case**: Integration of external PRO systems (REDCap, clinical systems)

* Scores are calculated externally and imported as Observations
* FHIR serves as the interoperability layer
* `derivedFrom` references the original QuestionnaireResponse
* **Example**: REDCap-based studies with established scoring algorithms

#### 3. External API-Based Calculation

**Use case**: Specialized scoring services (R libraries, statistical packages)

* QuestionnaireResponse is transmitted to an external API
* Calculation is performed in an optimized environment
* Result Observations are stored back in FHIR
* **Example**: Complex psychometric calculations, IRT-based scores

-------

### In-FHIR Scoring Strategies

#### 4. FHIRPath-Based Inline Calculation

**Use case**: Real-time scoring with moderate complexity

**Implementation approach – variable-based (recommended)**:

```
// FSH
// PROMIS Depression SF 4a Example
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "rawScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^promis-eddep(04|06|29|41)$')).answer.value.ordinal().sum()"

// T-Score Conversion
* item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "iif(%rawScore=4, 41.0, iif(%rawScore=5, 49.0, ..., {})))))))))))))))))"

```

**Advantages**:

* Avoidance of circular dependencies
* Clear separation between raw score and transformed scores
* Better maintainability and debugging

#### 5. CQL-Based Calculation

**Use case**: Complex statistical calculations, population-based normalization

```
// CQL
library PHQ9Scoring version '1.0.0'

define "PHQ-9 Raw Score":
  Sum(QuestionnaireResponse.item.answer.value)

define "PHQ-9 Severity Category":
  case
    when "PHQ-9 Raw Score" between 0 and 4 then 'minimal'
    when "PHQ-9 Raw Score" between 5 and 9 then 'mild'
    when "PHQ-9 Raw Score" between 10 and 14 then 'moderate'
    when "PHQ-9 Raw Score" between 15 and 19 then 'moderately severe'
    else 'severe'
  end

```

#### 6. SDC Extraction-Based Methods

**6a. Observation-Based Extraction**

* Direct conversion of questionnaire items to Observations
* One Observation per calculated score
* Suitable for standard scores

**6b. Definition-Based Extraction**

* Mapping to various FHIR resource types
* Flexible target structures (Condition, DiagnosticReport, etc.)
* Suitable for complex clinical workflows

**6c. StructureMap-Based Extraction**

* FHIR Mapping Language for complex transformations
* Suitable for item-based architecture
* Supports component-based Observations

-------

### Multi-Score Questionnaires

Complex questionnaires often generate multiple scores. **Example EQ-5D-5L**:

```
// FSH
// Index Score (preference-based)
* item[score-index].code = SCT#736534008 "EuroQol EQ-5D-5L index value"

// VAS Score (self-assessment)
* item[score-vas].code = SCT#736535009 "EuroQol EQ-5D-5L visual analog scale"

// Profile Score (domain-specific)
* item[score-profile].code = MII#eq5d5l-profile "EQ-5D-5L Profile Score"

```

**ObservationDefinition Integration**:

* Separate ObservationDefinitions per score type
* Population-specific reference ranges
* Score-health-correlation extensions

-------

### Advanced Scoring Concepts

#### Score Mapping and Cross-Walking

**Use case**: Harmonization between different PRO instruments

```
// FSH
// PHQ-9 -> PROMIS Depression Mapping
* derivedFrom[0] = Reference(PHQ9-QuestionnaireResponse)
* code = LOINC#77861-3 "PROMIS Depression T-score"
* method.text = "PHQ-9 to PROMIS Depression conversion algorithm (Choi et al. 2014)"

```

#### Measure/MeasureReport-Based Analyses

**Use case**: Longitudinal analyses, population metrics

```
// CQL
library PRO_Population_Metrics version '1.0.0'

define "Depression Prevalence":
  Count(Observation where code = LOINC#44261-6 and value > 9) /
  Count(Observation where code = LOINC#44261-6)

```

-------

### Implementation Recommendations

#### For simple scores:

* **Out-of-FHIR**: Pre-calculated imports from established systems
* **In-FHIR**: Variable-based FHIRPath calculation

#### For complex scores:

* **Out-of-FHIR**: External API-based calculation
* **In-FHIR**: CQL libraries with Measure/MeasureReport

#### For multi-score questionnaires:

* Separate ObservationDefinitions per score
* Variable-based calculation for dependency avoidance
* Score-health-correlation extensions for clinical interpretation

#### For score harmonization:

* ConceptMaps for terminological mappings
* StructureMaps for complex data transformations
* CQL libraries for statistical conversions

-------

### Quality Assurance

**Score Validation**:

* Retrospective recalculation for consistency checking
* Comparison between different calculation methods
* Identification of rounding errors and implementation differences

**Reference Data**:

* Integration of European population norms (EHIS Wave 3)
* Age- and sex-specific reference ranges
* Culture-specific adaptations for German populations

