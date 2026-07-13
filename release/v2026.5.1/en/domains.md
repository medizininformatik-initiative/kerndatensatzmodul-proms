# Domains - MII IG PRO v2026.5.1

## Domains

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Overview of Health Domains

Health domains are fundamental constructs that represent different aspects of health and well-being. In the context of Patient-Reported Outcomes (PROs), domains enable the systematic capture and comparability of health states across different measurement instruments.

**Related pages:**

* [Domain-Based Scoring](domain-based-scoring.md) – Methodological implementation
* [Cross-Instrument Mappings](cross-instrument-mappings.md) – Practical translation between instruments
* [PRO Library](pro-library.md) – Overview of all implemented instruments

### Definition and Significance

A **health domain** is a specific, theoretically grounded aspect of health that can be captured by various measurement instruments. The domain-based structuring of PROs offers several advantages:

* **Interoperability**: Different questionnaires measuring the same construct become comparable
* **Flexibility**: Institutions can choose the instrument that best fits their needs
* **Continuity**: Comparability is maintained even when instruments are changed
* **Norming**: Uniform reference values across instruments

### PROMIS Framework: The 8+1 Core Domains

The MII PRO Module follows the **PROMIS (Patient-Reported Outcomes Measurement Information System)** framework, which defines 8 scientifically validated core domains. These domains form the conceptual foundation for systematic PRO capture and have been operationalized in the PROMIS-29 Profile v2.1:

1. **Physical Function**– 4 items
1. **Anxiety**– 4 items
1. **Depression**– 4 items
1. **Fatigue**– 4 items
1. **Sleep Disturbance**– 4 items
1. **Ability to Participate in Social Roles and Activities**– 4 items
1. **Pain Interference**– 4 items
1. **Pain Intensity**– 1 item

**Additional important PROMIS domain in the MII PRO Module:**

1. **Cognitive Function**– captured by the PROMIS Cognitive Function 4a Short Form

These 9 domains represent the most important aspects of self-reported health and have been validated through extensive psychometric research. The PROMIS-29 instrument (29 items) captures the first 8 domains, while Cognitive Function is supplemented by separate Short Forms.

**Comparable multi-domain instruments:**

* **SF-36 (Short Form 36)**: 8 domains of health-related quality of life
* **WHOQOL-BREF**: WHO instrument with 4 main domains (physical, psychological, social, environment)
* **EQ-5D**: 5 dimensions (mobility, self-care, usual activities, pain, anxiety/depression)

### Core Domains in the MII PRO Module

The implementation in the MII PRO Module follows the PROMIS structure and extends it with additional established instruments:

#### 1. Depression Domain (PROMIS Core Domain)

**Status**: Fully implemented (2025) **LOINC Code**: 77861-3 "PROMIS Depression T-score" **Supported instruments**:

* PHQ-9 (Patient Health Questionnaire-9) – [Details](phq-9.md)
* BDI-II (Beck Depression Inventory II) – [Details](bdi-ii.md)
* PROMIS Depression Short Forms – [Details](promis.md)
* HADS-D (Hospital Anxiety and Depression Scale - Depression)
* EPDS (Edinburgh Postnatal Depression Scale)
* CES-D (Center for Epidemiologic Studies Depression Scale)

**Characteristics**:

* Captures symptoms of depressive mood, dejection, hopelessness
* T-Score normalization (Mean=50, SD=10)
* Population norms based on EHIS Wave 3 (n=287,530)
* Validated cross-walking tables between instruments – [see Mappings](cross-instrument-mappings.md)

#### 2. Anxiety Domain (PROMIS Core Domain: Anxiety)

**Status**: Planned (2026) **Planned instruments**:

* GAD-7 (Generalized Anxiety Disorder-7)
* PROMIS Anxiety
* HADS-A (Hospital Anxiety and Depression Scale - Anxiety)
* BAI (Beck Anxiety Inventory)

**Characteristics**:

* Captures worry, nervousness, tension, anxiousness
* Differentiation between state and trait anxiety
* Somatic vs. cognitive anxiety components

#### 3. Physical Function (PROMIS Core Domain: Physical Function)

**Status**: Partially implemented (PROMIS-29, EQ-5D) **Implemented instruments**:

* PROMIS Physical Function – [Details](promis.md)
* EQ-5D Mobility Dimension – [Details](eq-5d-5l.md)
* Planned: HAQ, WHODAS, SF-36 PF

**Characteristics**:

* Mobility, self-care, everyday activities
* Differentiation by severity of limitation
* Age- and sex-specific norms
* Item banking for adaptive measurement – [see figure](domain-based-scoring.md#item-banking-and-adaptive-measurement)

#### 4. Pain Domain (PROMIS Core Domains: Pain Interference and Pain Intensity)

**Status**: Partially implemented (PROMIS-29, EORTC) **Components**:

* **Pain Intensity**: Numeric Rating Scale (0-10)
* **Pain Interference**: Impact of pain on functioning
* **Pain Quality**: Nature and characteristics of pain

**Implemented instruments**:

* PROMIS Pain Intensity
* PROMIS Pain Interference
* EORTC QLQ-C30 Pain Scale – [Details](eortc-qlq-c30.md)

#### 5. Fatigue (PROMIS Core Domain: Fatigue)

**Status**: Partially implemented (PROMIS-29, EORTC) **Instruments**:

* PROMIS Fatigue
* EORTC QLQ-C30 Fatigue Scale
* Planned: FSS, FACIT-F

**Characteristics**:

* Physical and mental exhaustion
* Impact on daily activities
* Differentiation from depression

#### 6. Sleep Disturbance (PROMIS Core Domain: Sleep Disturbance)

**Status**: Partially implemented (PROMIS-29) **Instruments**:

* PROMIS Sleep Disturbance
* Planned: PSQI, ISI

**Characteristics**:

* Sleep quality, difficulty falling and staying asleep
* Daytime sleepiness as a consequence
* Circadian rhythm disturbances

#### 7. Social Function (PROMIS Core Domain: Ability to Participate in Social Roles)

**Status**: Partially implemented (PROMIS-29, EORTC) **Instruments**:

* PROMIS Ability to Participate in Social Roles
* EORTC QLQ-C30 Social Functioning
* Planned: SPS, F-SozU

**Characteristics**:

* Social participation and role function
* Quality of social relationships
* Isolation and loneliness

#### 8. Cognitive Function (PROMIS Cognitive Function 4a)

**Status**: In implementation (2025) **Instruments**:

* PROMIS Cognitive Function 4a Short Form
* EORTC QLQ-C30 Cognitive Functioning (already implemented)

**Characteristics**:

* Concentration and memory
* Cognitive clarity and mental acuity
* Subjective cognitive abilities

### Specialized Domains

#### Oncology-Specific Domains: EORTC QLQ-C30 Framework

![](qlq-domaenen.png)

**Figure 1:** **Conceptual model of the EORTC QLQ-C30 – From physiological variables to quality of life**

The EORTC QLQ-C30 framework illustrates the relationship between different domain levels:

* **Physiological variables** influence **symptoms**
* **Symptoms** affect **functioning**
* **Functioning** shapes **health perception**
* All factors culminate in **overall quality of life**

Implemented through the EORTC QLQ-C30:

* **Nausea and vomiting**
* **Appetite loss**
* **Dyspnoea** (shortness of breath)
* **Constipation**
* **Diarrhoea**
* **Financial difficulties** due to illness

Details see [EORTC QLQ-C30 in the PRO Library](eortc-qlq-c30.md).

#### Quality of Life Domains

* **Global Quality of Life** (EORTC, EQ-5D VAS)
* **Health-Related Quality of Life** (EQ-5D Index)
* **Role Function** (EORTC)
* **Emotional Function** (EORTC)

### Domain Hierarchy and Relationships

```
Health (overarching)
+-- Physical Health
|   +-- Physical Function
|   +-- Pain
|   +-- Fatigue
|   +-- Symptom Burden
+-- Mental Health
|   +-- Depression
|   +-- Anxiety
|   +-- Cognitive Function
|   +-- Emotional Well-Being
+-- Social Health
|   +-- Social Function
|   +-- Social Support
|   +-- Role Function
+-- Global Health
    +-- Quality of Life
    +-- General Health Status

```

### Domain Alignment and Questionnaire Capabilities

The MII PRO Module defines the "domain-alignment" capability for each instrument:

```
* extension[questionnaire-capabilities].extension[domain-aligned].valueBoolean = true

```

This means that an instrument:

1. Is unambiguously assigned to one or more domains
1. Produces scores that can be mapped to domain T-Scores
1. Is comparable with other instruments of the same domain

Details on the technical implementation see Questionnaire Capabilities.

### Methodological Foundations

#### Item Response Theory (IRT)

* Modern psychometric method for precise domain measurement
* Enables adaptive testing and item banking
* Basis for PROMIS T-Score calculation
* [Detailed explanation with visualization](domain-based-scoring.md#mapping-strategies)

#### Classical Test Theory (CTT)

* Traditional method, used by PHQ-9, BDI-II
* Sum scores with linear transformation
* Simpler to implement, less precise

#### Cross-Walking and Harmonization

* Equipercentile linking between instruments
* Regression-based prediction models
* IRT-based calibration onto a common metric
* [Practical examples and mapping tables](cross-instrument-mappings.md)

### Practical Application of Domains

#### Clinical Decision Support

Domain-based thresholds for:

* **Screening**: Identification of patients requiring treatment
* **Monitoring**: Progress tracking and therapy adjustment
* **Outcome assessment**: Treatment success and remission

#### Research and Care Quality

* **Meta-analyses**: Pooling of studies with different instruments
* **Registry studies**: Harmonized outcomes across sites
* **Quality indicators**: Fair comparisons despite different assessments

#### Personalized Medicine

* **Precision medicine**: Domain profiles for therapy selection
* **Adaptive care pathways**: Domain-based algorithms
* **Patient-centered care**: Focus on relevant domains

### Implementation Notes

#### FHIR Resources per Domain

1. **ObservationDefinition**: Defines domain score with reference ranges
1. **ConceptMap**: Mapping from instrument scores to domain scores
1. **Observation**: Instances of domain scores with provenance
1. **Library**(CQL): Calculation logic for complex transformations

#### Best Practices

* Always document the source instrument (`derivedFrom`)
* Specify the mapping method (`method`)
* Consider confidence intervals
* Use population-specific norms

### Future Developments

#### Short-Term (2025-2026)

* Complete implementation of all PROMIS-29 domains
* Cross-walking tables for PHQ-9 to PROMIS Depression
* Validation studies for the German population

#### Medium-Term (2026-2027)

* Item-based domain scores
* Computer Adaptive Testing (CAT) integration
* Extended domains (spirituality, resilience)

#### Long-Term (2027+)

* AI-based domain prediction
* Multimodal integration (PROs + biomarkers)
* Real-time domain monitoring

### Summary

The domain-based structuring of PROs in the MII Module enables a future-proof, flexible, and interoperable capture of health states. By consistently mapping different instruments onto shared domains, the vision of harmonized, patient-centered care becomes a reality. The depression domain already demonstrates the practical feasibility of this concept today, while additional domains will follow successively.

**Next steps:**

* Understand [domain-based scoring](domain-based-scoring.md) in detail
* Explore [cross-instrument mappings](cross-instrument-mappings.md) for practical applications

