# Domain-Based Scoring - MII IG PRO v2026.7.0

## Domain-Based Scoring

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Overview

Domain-based scoring enables comparability across different PRO instruments by mapping them onto shared health domains. Rather than treating questionnaire scores in isolation, measurements are transformed into standardized domain metrics – primarily PROMIS T-Scores (Mean=50, SD=10).

This approach addresses a central challenge in modern health services research: the harmonization of patient-reported outcomes collected with heterogeneous instruments across clinical sites, studies, and care settings.

### Current Scientific Evidence for Domain-Based Harmonization

Two recent 2025 publications provide empirical evidence for the methodological validity of the domain-based harmonization approach:

**Intra-Domain Harmonization (Riazy et al., 2025)**

Riazy et al. present population-based reference data for six established depression instruments (PHQ-9, PHQ-8, CES-D 8, PROMIS Depression SF 4a/8a, WHO-5) from 29 European countries (n=287,530) based on the EHIS Wave 3 survey. The study demonstrates the feasibility of harmonizing different instruments within a single health domain and supports the domain-specific score transformation approach pursued in the MII PRO Module.

Reference: Riazy L, Grote M, Liegl G, Rose M, Fischer F. Cross-Sectional Reference Data From 29 European Countries for 6 Frequently Used Depression Measures. **JAMA Netw Open**. 2025;8(6):e2517394.

**Cross-Domain Harmonization (Oerlemans et al., 2025)**

Oerlemans et al. developed and validated crosswalks between the multidimensional EORTC QLQ-C30 and domain-specific PROMIS instruments. The achieved correlations (r = 0.65-0.85) across seven health domains demonstrate the practicability of transforming multi-domain assessments into domain-specific metrics. This methodology enables the integration of established comprehensive instruments into a domain-based architecture.

Reference: Oerlemans S, et al. Crosswalks between EORTC QLQ-C30 and PROMIS measures: Harmonizing patient-reported outcomes across cancer trials. **J Clin Epidemiol**. 2025. DOI: 10.1016/j.jclinepi.2025.111705.

**Implications for the MII PRO Implementation**

These publications provide important empirical foundations for the conceptual direction of the MII PRO Module:

* The methodological validity of harmonization across different instruments has been demonstrated
* Both intra-domain and cross-domain transformations show acceptable psychometric properties
* The international research community is moving toward harmonized, domain-based PRO systems

The temporal proximity of these publications to the balloting process prevented their full integration into the current version; however, they confirm the chosen architecture and inform future developments.

**Related pages:**

* [Health Domains](domains.md) – Definition of the 9 PROMIS Core Domains
* [Cross-Instrument Mappings](cross-instrument-mappings.md) – Concrete mapping tables
* [Scoring Methodology](scoring.md) – Technical details

### Core Concept

#### From Instruments to Domains

Different questionnaires often measure the same construct:

* **Depression**: PHQ-9, BDI-II, PROMIS Depression, HADS-D
* **Anxiety**: GAD-7, PROMIS Anxiety, HADS-A
* **Physical Function**: PROMIS PF, SF-36 PF, HAQ

Domain-based scoring enables comparability through transformation onto a common metric (T-Scores with Mean=50, SD=10).

### Implementation: Depression Domain

The depression domain serves as the first fully implemented domain, demonstrating the approach:

#### FHIR Architecture

```
ObservationDefinition: mii-obsdef-pro-depression-t-score
+-- Code: LOINC#77861-3 "PROMIS Depression T-score"
+-- Reference Ranges: EHIS Wave 3 (n=287,530)
+-- Population Norms: DE, EU, age-stratified

Observation: Depression T-Score Instance
+-- instantiates: ObservationDefinition
+-- derivedFrom: QuestionnaireResponse or Raw Score
+-- method: IRT calculation or Cross-Walking

```

#### European Reference Data for Depression

Riazy et al. (2025) provide comprehensive reference data from 29 European countries for 6 frequently used depression instruments ([JAMA Netw Open 2025](https://doi.org/10.1001/jamanetworkopen.2025.17394)):

**Instruments with normative data:**

* PHQ-9 (Patient Health Questionnaire-9)
* PHQ-8 (without suicidality item)
* CES-D 8 (Center for Epidemiologic Studies Depression Scale)
* PROMIS Depression SF 4a and SF 8a
* WHO-5 Well-Being Index

**Sample:**

* N = 287,530 participants from EHIS Wave 3
* Representative of 29 EU countries
* Stratified by age, sex, and country

**Application for MII PRO:**

* Population-specific reference ranges for Germany
* Enables fair benchmarking across institutions
* Basis for age-stratified cut-offs
* Supports cross-walking between instruments

#### Mapping Strategies

**1. Item Response Theory (IRT)**

![](IRT-Antwortwahrscheinlichkeiten.png)

**Figure 1:** **Item Response Theory – Response probabilities as a function of trait level**

The figure shows the characteristic curves of Item Response Theory:

* At low trait levels (e.g., low depression), the probability of "Never" is highest
* With increasing trait levels, probabilities shift toward "Rarely", "Often", and finally "Always"
* The overlap regions indicate uncertainty zones where different responses are equally probable

IRT advantages:

* Direct calculation from item responses
* Precise, but computationally intensive to implement
* Ideal for PROMIS instruments

**2. Cross-Walking Tables**

* Empirically validated conversion tables
* PHQ-9 (0-27) to T-Score (40-85)
* BDI-II (0-63) to T-Score (40-85)
* EORTC QLQ-C30 to PROMIS T-Scores (see Oerlemans et al. 2025)
* Based on equipercentile matching

**Newly validated crosswalks (2025):** Oerlemans et al. developed comprehensive crosswalks between EORTC QLQ-C30 and PROMIS ([J Clin Epidemiol 2025](https://www.jclinepi.com/article/S0895-4356(25)00186-6/fulltext)):

* Physical Functioning to PROMIS Physical Function (r > 0.80)
* Fatigue to PROMIS Fatigue (r > 0.85)
* Emotional Functioning to PROMIS Anxiety/Depression (r > 0.75)
* Pain to PROMIS Pain Interference (r > 0.80)
* Social Functioning to PROMIS Social Function (r > 0.70)
* Cognitive Functioning to PROMIS Cognitive Function (r = 0.65)
* Global Health/QoL to PROMIS Global Health (r > 0.75)

#### Mapping Limitations

The following limitations should be considered when applying cross-walking:

1. **Range violations**: Extreme values may exceed theoretical boundaries
1. **Discretization**: Continuous distributions are mapped to discrete values
1. **Precision loss**: Especially with short instruments (e.g., 4-item to full domain)
1. **Validation requirements**: Mappings require population-specific validation

**Recommendation**: For clinical decisions, mapping confidence intervals should be considered. For research purposes, use with transparent documentation of mapping error is acceptable.

### The PRO Trade-Off

![](PRO-Spannungsfeld.png)

**Figure 2:** **The trade-off between number of items, measurement range, and precision**

This figure illustrates a fundamental dilemma in PRO instrument selection:

* **PROM A** (top): Fewer items, but restricted measurement range or precision
* **PROM B** (bottom): Broad measurement range and high precision, but more items required

Domain-based scoring resolves this dilemma through:

* **Flexible instrument selection** depending on context
* **Item banking** for adaptive testing
* **Harmonized scores** despite different instruments

### Item Banking and Adaptive Measurement

![](itembanking.png)

**Figure 3:** **Item banking for the Physical Function domain**

The item banking concept enables:

* **Population-specific item selection**: Different items for clinical samples vs. the general population
* **Adaptive measurement**: Items are selected based on estimated ability
* **Examples in the figure**: 
* Easy items (left): "dress yourself?", "get up from a chair?", "brush your teeth?"
* Medium items (center): "take a short walk?", "carry a shopping bag?"
* Difficult items (right): "run 5 km?", "climb over an obstacle?", "participate in a triathlon?"
 

This adaptive strategy enables precise measurement across the full ability spectrum with minimal patient burden.

### Practical Applications

#### Use Case 1: Longitudinal Monitoring

A patient starts with PHQ-9 in a primary care practice, then switches to PROMIS Depression in a hospital setting:

* Both scores are mapped to a Depression T-Score
* Continuous trajectory despite instrument change
* Reliable Change Index calculable across instruments

#### Use Case 2: Multi-Site Studies

Different centers use different instruments:

* Center A: BDI-II
* Center B: PHQ-9
* Center C: PROMIS Depression

All data become comparable through domain T-Scores.

#### Use Case 3: Quality Assurance

Benchmarking across institutions:

* Uniform outcome metrics despite different assessment strategies
* Population-adjusted comparisons possible
* Fair quality indicators

### Technical Implementation

#### ConceptMaps for Mapping

```
// FSH
Instance: PHQ9-to-PROMIS-Depression
InstanceOf: ConceptMap
* sourceCanonical = "Questionnaire/phq-9"
* targetCanonical = "ObservationDefinition/depression-t-score"
* group.element[+]
  * code = #score-range-0-4
  * target.code = #t-score-40-45
  * target.equivalence = #equivalent

```

#### CQL for Complex Calculations (from 2026)

```
// CQL
define "Depression T-Score from PHQ-9":
  case
    when PHQ9Score between 0 and 4 then 42.5
    when PHQ9Score between 5 and 9 then 50.0
    when PHQ9Score between 10 and 14 then 60.0
    when PHQ9Score between 15 and 19 then 70.0
    when PHQ9Score >= 20 then 77.5
    else null
  end

```

### Implementation Status

**Fully implemented:**

* Depression domain with mappings between PHQ-9, BDI-II, PROMIS Depression, and additional instruments
* ObservationDefinitions with population-specific reference ranges

**In development:**

* PROMIS-29 domains (Physical Function, Anxiety, Fatigue, Sleep Disturbance, Social Function, Pain)
* PROMIS Cognitive Function 4a
* Automated score transformation via CQL

**Planned (2026+):**

* Extended domain mappings for anxiety, fatigue, physical function
* Item-based score calculation
* Computer Adaptive Testing (CAT) integration

### FHIR Architecture Overview

Domain scores are represented as FHIR Observations with specific ObservationDefinitions:

```
// Structure
ObservationDefinition
+-- code: LOINC code for domain score (e.g., 77861-3 for PROMIS Depression)
+-- method: Calculation method (IRT, cross-walking, equipercentile)
+-- qualifiedInterval: Population-specific reference ranges
+-- preferredReportName: Standardized designation

Observation
+-- code: Reference to ObservationDefinition
+-- valueQuantity: T-Score (Mean=50, SD=10)
+-- derivedFrom: Source QuestionnaireResponse or Observation
+-- method: Mapping method used

```

### Use Cases

**Clinical Care:**

* Continuous trajectory monitoring during instrument changes
* Uniform thresholds for clinical decisions

**Research:**

* Meta-analyses across studies using different instruments
* Harmonization of registry data

**Quality Assurance:**

* Cross-institutional outcome comparisons
* Population-normed benchmarks

### Future Extensions

#### Planned Domains (2026-2027)

* **Anxiety Domain**: GAD-7, PROMIS Anxiety, HADS-A
* **Pain Domain**: BPI, PROMIS Pain, NRS
* **Physical Function**: PROMIS PF, HAQ, WHODAS

#### Extended Functionality

* **Composite Scores**: Weighted aggregation of multiple instruments
* **Adaptive Thresholds**: Population-specific cut-offs
* **Measurement Error Propagation**: Uncertainty quantification

### Benefits for Practice

1. **Continuity**: Instrument changes without data loss
1. **Comparability**: Cross-institutional benchmarks
1. **Flexibility**: Free instrument choice while maintaining comparability
1. **Scalability**: New instruments can be integrated without system redesign

### ObservationDefinition Catalog

Since ObservationDefinitions in FHIR R4 do not support canonical URLs and cannot be rendered directly in the IG, the following overview provides structured access to all defined score definitions:

#### Depression and Mood

| Instrument | Score Type | LOINC Code | Range | ObservationDefinition | Observation Profile | |————|———–|————|———|———————-|———————| | PHQ-9 | Total Score | 44261-6 | 0-27 | mii-obsdef-pro-phq-9-total-score | MII_PR_PRO_PHQ9_Score | | BDI-II | Total Score | 89209-1 | 0-63 | mii-obsdef-pro-score-bdi-ii | MII_PR_PRO_BDI_II_Score | | PROMIS Depression | T-Score | 77861-3 | 20-80 | mii-obsdef-pro-depression-t-score | MII_PR_PRO_Depression_TScore | | PROMIS-29 Depression | T-Score | 71958-6 | 20-80 | mii-obsdef-pro-promis-29-depression-tscore | MII_PR_PRO_PROMIS_29_Depression_TScore | | PROMIS Cognitive Function SF4a | Raw Score | 81533-2 | 4-20 | mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score | MII_PR_PRO_PROMIS_Cognitive_Function_SF4a_Raw_Score | | PROMIS Cognitive Function SF4a | T-Score | 81538-1 | 20-80 | mii-obsdef-pro-promis-cognitive-function-sf4a-tscore | MII_PR_PRO_PROMIS_Cognitive_Function_SF4a_TScore |

#### Anxiety and Stress

| Instrument | Score Type | LOINC Code | Range | ObservationDefinition | Observation Profile | |————|———–|————|———|———————-|———————| | PROMIS-29 Anxiety | T-Score | 71953-7 | 20-80 | mii-obsdef-pro-promis-29-anxiety-tscore | MII_PR_PRO_PROMIS_29_Anxiety_TScore |

#### Physical Function

| Instrument | Score Type | LOINC Code | Range | ObservationDefinition | Observation Profile | |————|———–|————|———|———————-|———————| | PROMIS-29 Physical Function | T-Score | 71962-8 | 20-80 | mii-obsdef-pro-promis-29-physical-function-tscore | MII_PR_PRO_PROMIS_29_Physical_Function_TScore |

#### Quality of Life (Multi-Domain)

| Instrument | Score Type | LOINC Code | Range | ObservationDefinition | Observation Profile | |————|———–|————|———|———————-|———————| | EQ-5D-5L | Index Score | 91382-2 | -0.661 to 1.0 | mii-obsdef-pro-score-eq5d5l-index | MII_PR_PRO_Observation_EQ5D5L_Index | | EQ-5D-5L | VAS | 91383-0 | 0-100 | mii-obsdef-pro-score-eq5d5l-vas | MII_PR_PRO_Observation_EQ5D5L_VAS | | EQ-5D-5L | Profile | 91381-4 | 11111-55555 | mii-obsdef-pro-score-eq5d5l-profile | MII_PR_PRO_Observation_EQ5D5L_Profile |

#### Fatigue and Sleep

| Instrument | Score Type | LOINC Code | Range | ObservationDefinition | Observation Profile | |————|———–|————|———|———————-|———————| | PROMIS-29 Fatigue | T-Score | 71959-4 | 20-80 | mii-obsdef-pro-promis-29-fatigue-tscore | MII_PR_PRO_PROMIS_29_Fatigue_TScore | | PROMIS-29 Sleep Disturbance | T-Score | 71964-4 | 20-80 | mii-obsdef-pro-promis-29-sleep-disturbance-tscore | MII_PR_PRO_PROMIS_29_Sleep_Disturbance_TScore |

#### Pain

| Instrument | Score Type | LOINC Code | Range | ObservationDefinition | Observation Profile | |————|———–|————|———|———————-|———————| | PROMIS-29 Pain Intensity | 0-10 Scale | 71965-1 | 0-10 | mii-obsdef-pro-promis-29-pain-intensity | MII_PR_PRO_PROMIS_29_Pain_Intensity | | PROMIS-29 Pain Interference | T-Score | 71961-0 | 20-80 | mii-obsdef-pro-promis-29-pain-interference-tscore | MII_PR_PRO_PROMIS_29_Pain_Interference_TScore |

#### Social Function

| Instrument | Score Type | LOINC Code | Range | ObservationDefinition | Observation Profile | |————|———–|————|———|———————-|———————| | PROMIS-29 Social Function | T-Score | 71966-9 | 20-80 | mii-obsdef-pro-promis-29-social-function-tscore | MII_PR_PRO_PROMIS_29_Social_Function_TScore |

#### Technical Notes

**ObservationDefinition Properties:**

* **instantiatesCanonical**: All Observation Profiles reference their ObservationDefinition via the instantiatesCanonical extension
* **ScoreHealthCorrelation**: Defines whether higher values indicate better or worse health
* **T-Score Metric**: PROMIS T-Scores use Mean=50, SD=10 as the normative scale
* **Population Norms**: Reference ranges are based on German or European normative samples

**Usage in Practice:**

```
// FSH
Observation
+-- code: LOINC code from ObservationDefinition
+-- valueQuantity: Calculated score
+-- extension[instantiatesCanonical]: Reference to ObservationDefinition
+-- derivedFrom: QuestionnaireResponse or other Observation

```

### Summary

Domain-based scoring is essential for the harmonization of PRO data in the German healthcare system. The depression domain demonstrates practical feasibility and provides the foundation for additional domains. Despite methodological challenges in cross-walking, the benefits for clinical care and research clearly outweigh the limitations.

**Further information:**

* [Health Domains](domains.md) – Detailed description of all 9 PROMIS domains
* [Cross-Instrument Mappings](cross-instrument-mappings.md) – Concrete conversion tables for depression
* [PHQ-9 Implementation](phq-9.md) – Reference implementation

