# Cross-Instrument Mappings - MII IG PRO v2026.5.2-rc.1

## Cross-Instrument Mappings

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Overview

Cross-instrument mapping enables the translation of scores between different PRO instruments that measure the same construct. This is essential for harmonizing data from different sources and ensuring comparability of study results.

**Related pages:**

* [Health Domains](domains.md) – Overview of health domains
* [Domain-Based Scoring](domain-based-scoring.md) – Methodological foundations
* [Scoring](scoring.md) – FHIR profiles and ConceptMaps

### Mapping Methods

#### 1. Equipercentile Linking

The most common method is based on the assumption that persons with the same percentile rank on different instruments exhibit the same level of the measured construct.

#### 2. IRT-Based Calibration

Item Response Theory enables the placement of different instruments on a common metric through co-calibration. Details on IRT methodology see [Domain-Based Scoring](domain-based-scoring.md#mapping-strategies).

#### 3. Regression-Based Prediction

Linear or non-linear regression models for predicting scores of one instrument based on another.

### Depression Domain: Comprehensive Mapping Table

The following figure shows validated mappings between PROMIS Depression T-Scores and eight other established depression scales:

![](Mapping-depression-scales.png)

**Figure 1:** **Translations of PROMIS T-Scores to other scales – Comprehensive mapping table for the depression domain**

#### Interpretation Guide for the Mapping Table

The table shows for each PROMIS T-Score (horizontal axis, 30-90):

* **Upper row**: Corresponding raw score of the respective instrument
* **Lower row (in parentheses)**: 95% confidence interval

**Example reading:**

* A PROMIS T-Score of 60 corresponds to: 
* PHQ-9: Score of 10 (95% CI: 7.55-8.91)
* BDI-II: Score of 20 (95% CI: 21.22-26.01)
* HADS: Score of 15 (95% CI: 14.74-15.75)
 

#### Supported Instruments in the Depression Mapping

1. **BDI-II**(Beck Depression Inventory-II)
* Range: 0-63
* Cut-offs: Minimal (0-13), Mild (14-19), Moderate (20-28), Severe (29-63)
* See also: [BDI-II in PRO Library](bdi-ii.md)

1. **CES-D**(Center for Epidemiologic Studies Depression Scale)
* Range: 0-60
* Clinical cut-off: >=16
* See also: [Minimal Reference Questionnaires](minimal-reference-questionnaires.md)

1. **EPDS**(Edinburgh Postnatal Depression Scale)
* Range: 0-30
* Clinical cut-off: >=10
* See also: [Minimal Reference Questionnaires](minimal-reference-questionnaires.md)

1. **HADS**(Hospital Anxiety and Depression Scale - Depression Subscale)
* Range: 0-21
* Cut-offs: Normal (0-7), Mild (8-10), Moderate (11-14), Severe (15-21)
* See also: [Minimal Reference Questionnaires](minimal-reference-questionnaires.md)

1. **K6**(Kessler Psychological Distress Scale)
* Range: 6-30
* Serious mental illness indicator: >=13
* See also: [Minimal Reference Questionnaires](minimal-reference-questionnaires.md)

1. **PHQ-2**(Patient Health Questionnaire-2)
* Range: 0-6
* Screening cut-off: >=3

1. **PHQ-8**(Patient Health Questionnaire-8)
* Range: 0-24
* Cut-offs similar to PHQ-9

1. **PHQ-9**(Patient Health Questionnaire-9)
* Range: 0-27
* Cut-offs: Minimal (0-4), Mild (5-9), Moderate (10-14), Moderately Severe (15-19), Severe (20-27)
* See also: [PHQ-9 in PRO Library](phq-9.md)

### Practical Application

#### Use Case 1: Study Harmonization

A multi-center study uses different instruments:

* Center A: PHQ-9
* Center B: BDI-II
* Center C: HADS

Solution: All scores are mapped to PROMIS T-Scores for unified analysis.

#### Use Case 2: Instrument Change in Longitudinal Studies

A patient was initially assessed with BDI-II (Score: 25), follow-up with PHQ-9:

1. BDI-II Score 25 maps to PROMIS T-Score ~62
1. Expected PHQ-9 score at the same severity level: ~11-12

#### Use Case 3: Meta-Analyses

Systematic reviews can compare effect sizes across studies using different instruments through transformation to a common PROMIS metric.

### Important Limitations

#### 1. Consider Confidence Intervals

Confidence intervals indicate the uncertainty of mappings. For critical clinical decisions, these intervals should be taken into account.

#### 2. Population Specificity

Mappings were developed and validated in specific populations. Generalizability to other populations (e.g., different cultures, age groups) should be verified.

#### 3. Conceptual Differences

Despite measuring the same construct, instruments may emphasize different aspects:

* PHQ-9: DSM-5 criteria-based
* BDI-II: Emphasizes cognitive symptoms
* HADS: Excludes somatic symptoms

#### 4. Floor and Ceiling Effects

At the extremes of the scales, mapping accuracy may decrease, especially with:

* Very low scores (floor effect)
* Very high scores (ceiling effect)

### FHIR Implementation

#### Observation with Mapping Documentation

```
// FSH
Instance: Depression-Score-Mapped
InstanceOf: Observation
* code = LOINC#77861-3 "PROMIS Depression T-score"
* valueQuantity = 60 '[T-score]'
* derivedFrom = Reference(PHQ9-Response)
* method = SCT#702663005 "Equipercentile equating"
* note.text = "Mapped from PHQ-9 raw score of 10 (95% CI: 7.55-8.91)"

```

### Quality Assurance

#### Validation Requirements

1. **Concurrent Validity**: Correlation between mapped scores >=0.8
1. **Classification Accuracy**: Agreement of severity categories >=85%
1. **Test-Retest Reliability**: ICC >=0.75 for mapped scores

#### Documentation Standards

For every mapping, document:

* Source instrument and raw score
* Target score and confidence interval
* Mapping method and version
* Population reference

### Future Developments

#### Planned Mappings (2026-2027)

* **Anxiety Domain**: GAD-7 to/from PROMIS Anxiety to/from HADS-A
* **Fatigue Domain**: FACIT-F to/from PROMIS Fatigue to/from FSS
* **Pain Domain**: BPI to/from PROMIS Pain to/from NRS

#### Methodological Improvements

* Machine learning-based mappings
* Individual precision estimates
* Dynamic, population-specific mappings
* Real-time mapping updates based on new data

### Resources and Tools

#### Online Calculators

* [PROMIS Score Converter](https://www.healthmeasures.net/score-and-interpret/calculate-scores)
* PROsetta Stone (NIH-funded mapping initiative)

#### Scientific Publications

* Choi et al. (2014): "Establishing a common metric for depressive symptoms"
* Schalet et al. (2015): "Linking scores with patient-reported health outcome instruments"

#### Related Documentation

* [Scoring Methodology](scoring.md)
* [Terminology Strategies](terminology-strategies.md)

### Summary

Cross-instrument mappings are a powerful tool for harmonizing PRO data. The depression domain exemplifies how various established instruments can be mapped onto a common PROMIS metric. Despite inherent limitations, these mappings enable better data integration, comparability, and continuous patient care across different settings.

