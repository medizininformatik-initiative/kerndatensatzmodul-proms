# EQ-5D-5L Scores - MII IG PRO v2026.4.0

## EQ-5D-5L Scores

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

The EQ-5D-5L generates three different score types that capture different aspects of health-related quality of life. These scores are specified through ObservationDefinitions and can be extracted from QuestionnaireResponse data.

### Score Types

#### 1. EQ-5D-5L Index Score

The Index Score is a single value representing the health state on a scale from -0.661 to 1, where 1 represents perfect health.

**ObservationDefinition: mii-obsdef-pro-score-eq5d5l-index**

| | |
| :--- | :--- |
| **Title** | MII ObsDef PRO Score EQ-5D-5L Index |
| **SNOMED CT Code** | 736534008 - EuroQol five dimension five level index value (observable entity) |
| **MII Code** | euroqol-eq5d5l-index |
| **Data Type** | Quantity |
| **Unit** | 1 (UCUM) |
| **Value Range** | -0.661 to 1.000 |
| **Decimal Places** | 3 |
| **Interpretation** | Higher values indicate better health status |

#### 2. EQ-5D-5L VAS Score

The Visual Analog Scale (VAS) captures self-rated health on a scale from 0 (worst imaginable health state) to 100 (best imaginable health state).

**ObservationDefinition: mii-obsdef-pro-score-eq5d5l-vas**

| | |
| :--- | :--- |
| **Title** | MII ObsDef PRO Score EQ-5D-5L VAS |
| **SNOMED CT Code** | 736535009 - EuroQol visual analogue score (observable entity) |
| **MII Code** | euroqol-eq5d5l-vas |
| **Data Type** | Quantity |
| **Unit** | 1 (UCUM) |
| **Value Range** | 0 to 100 |
| **Decimal Places** | 0 |
| **Interpretation** | Higher values indicate better health status |

#### 3. EQ-5D-5L Profile

The Profile is a five-digit numeric combination (e.g., 21234) that represents the health state across all five dimensions. Each digit represents the response level (1-5) for one dimension.

**ObservationDefinition: mii-obsdef-pro-score-eq5d5l-profile**

| | |
| :--- | :--- |
| **Title** | MII ObsDef PRO Score EQ-5D-5L Profile |
| **MII Code** | euroqol-eq5d5l-profile |
| **Data Type** | String |
| **Format** | 5-digit number (e.g., "21234") |
| **Interpretation** | Each digit (1-5) represents severity in one dimension |

### Calculation Methodology

All three scores are based on the method:

* **SNOMED CT**: 73041000052103 - EuroQoL five dimension five level questionnaire (assessment scale)

Calculation is performed either:

1. **Client-side**: Directly in the Questionnaire through SDC calculated expressions
1. **Server-side**: Through extraction and transformation of QuestionnaireResponse data

### References

The score definitions are based on the publication:

* [https://doi.org/10.1016/j.jad.2017.08.060](https://doi.org/10.1016/j.jad.2017.08.060)

-------

### Observation Profiles

#### EQ-5D-5L Index Score

See the [profile definition](StructureDefinition-mii-pr-pro-observation-eq5d5l-index.md) for the full element tree.

-------

#### EQ-5D-5L VAS Score

See the [profile definition](StructureDefinition-mii-pr-pro-observation-eq5d5l-vas.md) for the full element tree.

-------

#### EQ-5D-5L Profile

See the [profile definition](StructureDefinition-mii-pr-pro-observation-eq5d5l-profile.md) for the full element tree.

-------

### ObservationDefinition Instances

The ObservationDefinition resources specify the measurement methodology and reference ranges for the EQ-5D-5L scores. These instances are based on the MII_PR_PRO_Score_Blueprint profile.

#### Implemented ObservationDefinitions:

* **EQ-5D-5L Index**: `mii-obsdef-pro-score-eq5d5l-index` 
* SNOMED: 736534008 "EuroQol five dimension five level index value"
* Value range: -0.661 to 1.000
 
* **EQ-5D-5L VAS**: `mii-obsdef-pro-score-eq5d5l-vas` 
* SNOMED: 736535009 "EuroQol visual analogue score"
* Value range: 0 to 100
 
* **EQ-5D-5L Profile**: `mii-obsdef-pro-score-eq5d5l-profile` 
* Format: 5-digit number (e.g., "21234")
 

These ObservationDefinitions are referenced by the Observation profiles via the `instantiates` element.

**Technical Limitation**: ObservationDefinition instances in FHIR R4 do not have canonical URLs, which means they cannot be directly rendered by some IG publishing tools.

