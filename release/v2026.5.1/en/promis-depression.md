# PROMIS Depression SF4a - MII IG PRO v2026.5.1

## PROMIS Depression SF4a

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### PROMIS Depression Short Form 4a – Technical Documentation

See the [Questionnaire definition](Questionnaire-mii-qst-pro-promis-depression-sf4a.md) for the full resource.

#### Background and Concept

The PROMIS Depression Short Form 4a represents a modern approach to precise measurement of depression symptoms using Item Response Theory (IRT). As part of the Patient-Reported Outcomes Measurement Information System (PROMIS), this instrument was developed by the US National Institutes of Health (NIH) and has been internationally validated.

The four items were selected from a comprehensive item bank of over 30 depression items to achieve maximum measurement precision with minimal test length. The IRT-based calibration enables conversion of raw scores to standardized T-Scores that are comparable with the US general population (Mean=50, SD=10).

#### Psychometric Properties

**Reliability**: Internal consistency (Cronbach's alpha) typically ranges between 0.85-0.92 across different populations. Test-retest reliability over 2-4 weeks is r=0.80-0.88.

**Validity**: Convergent validity with established depression scales such as PHQ-9 (r=0.75-0.85) and BDI-II (r=0.78-0.88). Discriminant validity against other PROMIS domains such as anxiety (r=0.65) and physical function (r=-0.45).

**Cultural Adaptation**: Comprehensive psychometric validation for German-speaking populations by the Charite Universitaetsmedizin Berlin team. Differential Item Functioning (DIF) analyses confirm cultural equivalence between US and German populations.

#### Technical FHIR Implementation

**Questionnaire Architecture**

The Questionnaire follows the SDC (Structured Data Capture) standard and implements extended capabilities for automated score calculation. The implementation uses FHIR variables to avoid circular dependencies between items and calculated scores.

```
// FSH
Instance: mii-qst-pro-promis-depression-sf4a
InstanceOf: MII_PR_PRO_Questionnaire
Usage: #definition

* status = #active
* name = "MII_Questionnaire_PROMIS_Depression_SF4a"
* title = "PROMIS Depression Short Form 4a"
* code = $LNC#77823-3

```

**Item Structure and Scoring**

Each of the four items references the official PROMIS Item Bank nomenclature:

* promis-eddep04: "I felt worthless"
* promis-eddep06: "I felt helpless"
* promis-eddep29: "I felt depressed"
* promis-eddep05: "I felt like a failure"

The answer options follow the standardized 5-level PROMIS scale with numeric values 1-5, which are recoded to 0-4 for score calculations.

**Variable-Based Score Calculation**

```
// FSH
* item[+].linkId = "rawScore"
* item[=].type = #decimal
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression =
  "%promis-eddep04.answer.value + %promis-eddep06.answer.value +
   %promis-eddep29.answer.value + %promis-eddep05.answer.value"

```

The T-Score conversion is performed via a lookup-based FHIRPath expression implementing the IRT-calibrated transformation tables:

```
// FSH
* item[+].linkId = "depression-tscore"
* item[=].type = #decimal
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[=].valueExpression.expression =
  "iif(%rawScore = 4, 32.2,
   iif(%rawScore = 5, 37.0,
   iif(%rawScore = 6, 40.3,
   iif(%rawScore = 7, 42.9, ...))))"

```

#### Observation Profiles and Data Extraction

**Raw Score Observation Profile**

The `MII_PR_PRO_PROMIS_Depression_SF4a_Raw_Score` profile defines the structure for raw score Observations with a value range of 4-20 points. The Observation is extracted directly from the QuestionnaireResponse and references it via the derivedFrom element.

```
// FSH
Profile: MII_PR_PRO_PROMIS_Depression_SF4a_Raw_Score
* code = $LNC#77821-7 "PROMIS short form - emotional distress - depression 4a - version 1.0 raw score"
* valueQuantity.value MS
* valueQuantity.unit = "score"
* referenceRange.low.value = 4
* referenceRange.high.value = 20

```

**T-Score Observation Profile**

The generic `MII_PR_PRO_Depression_T_Score` profile is used for all depression-related T-Scores, enabling a consistent data structure across different depression instruments.

#### ObservationDefinition and Reference Data

**European Population Norms**

The ObservationDefinition `mii-obsdef-pro-depression-t-score` integrates comprehensive European reference data from the European Health Interview Survey (EHIS) Wave 3 study with 287,530 participants from 29 European countries.

**German Population (n=22,996)**:

* Mean: 46.5 (SD: 7.7)
* Median: 45.5
* IQR: 41.8-51.5

These values show that the German population on average exhibits lower depression scores than the US norm (Mean=50), which must be considered in clinical interpretation.

**Sex-Specific Differences**:

* Males (Median): 44.11 (IQR: 38.06-50.40)
* Females (Median): 46.37 (IQR: 40.00-52.76)

#### Clinical Interpretation and Cut-off Values

**Severity Levels Based on T-Scores**:

* Normal: T-Score <55 (within 0.5 SD of the US norm)
* Mild: T-Score 55-59.9 (0.5-1.0 SD above norm)
* Moderate: T-Score 60-69.9 (1.0-2.0 SD above norm)
* Severe: T-Score 70 and above (>2.0 SD above norm)

**European Contextualization**: Due to the lower European baseline values, cut-offs should be adjusted accordingly. A T-Score of 55 corresponds to approximately the 75th percentile of the German population.

#### MII Terminology Integration

**Controlled Vocabulary Strategy**

The implementation uses MII ValueSets to ensure reliable score calculations. Standard LOINC Answer Lists do not contain numeric scoring weights, which prevents automated FHIRPath calculations.

```
// FSH
* answerValueSet = "http://mii.de/fhir/pro/ValueSet/promis-depression-5point-scale"
// Alternative: Direct answerOptions with scoring extensions
* answerOption[0].valueCoding.extension[itemWeight].valueDecimal = 0
* answerOption[1].valueCoding.extension[itemWeight].valueDecimal = 1

```

**LOINC Mapping for Interoperability**

In parallel with MII terminology, official LOINC codes are used to ensure international interoperability. ConceptMaps connect MII ValueSets with LOINC Answer Lists for bidirectional translation.

#### Quality Assurance and Validation

**Automated Consistency Checks**

The SDC implementation enables real-time validation during data collection:

* Completeness check of all four items
* Plausibility checks for calculated scores
* Consistency validation between raw score and T-Score

**Retrospective Score Recalculation**

For quality assurance, historical QuestionnaireResponses can be validated against the current Questionnaire definition to identify calculation errors or implementation inconsistencies.

#### Integration into Clinical Workflows

**Screening and Monitoring**

The PROMIS Depression SF 4a is suitable for both initial screening and longitudinal monitoring of treatment courses. The short test length (approximately 1-2 minutes) enables frequent measurements without patient burden.

**Interoperability with Other Instruments**

Cross-walking tables enable conversion between PROMIS Depression T-Scores and other established depression scales such as PHQ-9 or BDI-II, making historical data comparable.

#### Implementation Recommendations

**For Clinical Use**:

* Use European reference ranges instead of US norms
* Integrate into electronic health records via FHIR Observations
* Longitudinal trajectory documentation for therapy monitoring

**For Research Use**:

* Standardized T-Score metrics for multi-site studies
* Compatibility with international PROMIS implementations
* Potential for adaptive testing extensions

This comprehensive implementation positions the PROMIS Depression SF 4a as a reference example for modern, IRT-based PRO instruments in the German healthcare system and demonstrates the advanced capabilities of the MII PRO Module.

