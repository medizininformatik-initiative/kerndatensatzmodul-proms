### Overview

The **EORTC QLQ-C30** (European Organisation for Research and Treatment of Cancer Quality of Life Questionnaire - Core 30) is a standardized, internationally recognized instrument for assessing health-related quality of life in cancer patients.

#### Key Properties

- **30 questions** in English (primary language) with German translations
- **Multidimensional assessment** of quality of life across 15 subscales
- **Standardized 0-100 point scale** after linear transformation
- **Validated** for oncological patients in various treatment phases
- **Modularly extensible** through disease-specific add-on modules

### Questionnaire Structure

#### Function Scales (5 Scales)
**Rating: Higher values = Better function/quality of life**

| Scale | Items | Description |
|-------|-------|-------------|
| **Physical Functioning** (PF) | Q1-5 | Difficulty with physical activities |
| **Role Functioning** (RF) | Q6-7 | Limitations in work/daily activities |
| **Emotional Functioning** (EF) | Q21-24 | Emotional distress and mood |
| **Cognitive Functioning** (CF) | Q20, Q25 | Concentration and memory |
| **Social Functioning** (SF) | Q26-27 | Social withdrawal and family activities |

#### Symptom Scales (3 Scales)
**Rating: Higher values = Greater symptom burden**

| Scale | Items | Description |
|-------|-------|-------------|
| **Fatigue** (FA) | Q10, Q12, Q18 | Tiredness and exhaustion |
| **Nausea/Vomiting** (NV) | Q14-15 | Gastrointestinal symptoms |
| **Pain** (PA) | Q9, Q19 | Pain intensity and interference |

#### Single Symptoms (6 Items)
**Rating: Higher values = Greater symptom burden**

| Item | Question | Symptom |
|------|----------|---------|
| **Dyspnoea** (DY) | Q8 | Breathing difficulties |
| **Insomnia** (SL) | Q11 | Sleep disturbance |
| **Appetite Loss** (AP) | Q13 | Decreased appetite |
| **Constipation** (CO) | Q16 | Constipation |
| **Diarrhoea** (DI) | Q17 | Diarrhoea |
| **Financial Difficulties** (FI) | Q28 | Economic burden |

#### Global Health/Quality of Life (1 Scale)
**Rating: Higher values = Better quality of life**

| Scale | Items | Description | Response Scale |
|-------|-------|-------------|----------------|
| **Global Quality of Life** (QL) | Q29-30 | Overall assessment of health and quality of life | 7-point scale (1-7) |

### Response Scales

#### Standard 4-Point Scale (Q1-28)
1. **"Not at all"** / *"Uberhaupt nicht"*
2. **"A little"** / *"Wenig"*
3. **"Quite a bit"** / *"Massig"*
4. **"Very much"** / *"Sehr"*

#### 7-Point Scale (Q29-30)
1. **"Very poor"** / *"Sehr schlecht"*
2. **"Poor"** / *"Schlecht"*
3. **"Fair"** / *"Mittelmassig"*
4. **"Good"** / *"Gut"*
5. **"Very good"** / *"Sehr gut"*
6. **"Excellent"** / *"Ausgezeichnet"*
7. **"Perfect"** / *"Vollkommen"*

### Score Calculation

#### Step 1: Raw Score Calculation
For each scale, the mean of the associated items is calculated:

```
RawScore = (Sum of item values) / Number of items
```

#### Step 2: Linear Transformation (0-100 Scale)

##### Function Scales (Inversion Required)
```
Function Score = (1 - (RawScore - 1) / (max - 1)) x 100
```

**For 4-point scale:**
```
Function Score = (1 - (RawScore - 1) / 3) x 100
```

##### Symptom Scales and Single Symptoms
```
Symptom Score = ((RawScore - 1) / (max - 1)) x 100
```

**For 4-point scale:**
```
Symptom Score = ((RawScore - 1) / 3) x 100
```

##### Global Quality of Life
```
QL Score = ((RawScore - 1) / 6) x 100
```

#### Score Interpretation

| Score Range | Function Scales | Symptom Scales |
|-------------|-----------------|----------------|
| **0-25** | Severe functional impairment | No/mild symptom burden |
| **26-50** | Moderate functional impairment | Mild symptom burden |
| **51-75** | Mild functional impairment | Moderate symptom burden |
| **76-100** | No/mild functional impairment | Severe symptom burden |

### FHIR Implementation

#### Questionnaire Resource
- **URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-eortc-qlq-c30`
- **Primary Language**: English (`language = #en`)
- **Translations**: German translations via CodeSystem designations
- **Answer Options**: MII CodeSystems with `ordinalValue` properties for scoring

#### CodeSystem & ValueSets
- **CodeSystem**: `mii-cs-pro-eortc-qlq-c30` -- CodeSystem for response spectra in English with German translation
- **ValueSets**:
  - `mii-vs-pro-eortc-qlq-c30-scale-4pt` -- Standard 4-point scale
  - `mii-vs-pro-eortc-qlq-c30-scale-7pt` -- Global QoL 7-point scale
  - `mii-vs-pro-eortc-qlq-c30-scale-role` -- Role functioning scale

#### Scoring Implementation
Automatic score calculation via SDC `calculatedExpression`:

```
// FHIRPath
// Example: Physical Functioning (Q1-5, inverted)
(1 - (%resource.item.where(linkId.matches('^qlq-c30-q0[1-5]$')).answer.value.weight().sum()/5 - 1) / 3) * 100

// Example: Fatigue (Q10, Q12, Q18, standard)
((%resource.item.where(linkId in ('qlq-c30-q10'|'qlq-c30-q12'|'qlq-c30-q18')).answer.value.weight().sum()/3 - 1) / 3) * 100
```

#### ObservationDefinition Resources
A separate ObservationDefinition exists for each subscale:
- Function scales: `mii-obsdef-pro-eortc-qlq-c30-pf`, `mii-obsdef-pro-eortc-qlq-c30-rf`, etc.
- Symptom scales: `mii-obsdef-pro-eortc-qlq-c30-fa`, `mii-obsdef-pro-eortc-qlq-c30-nv`, etc.
- Single symptoms: `mii-obsdef-pro-eortc-qlq-c30-dy`, `mii-obsdef-pro-eortc-qlq-c30-sl`, etc.
- Global QoL: `mii-obsdef-pro-eortc-qlq-c30-ql`

### Missing Data

#### EORTC Guidelines
- **At least 50% of items** in a scale must be answered
- **Replacement** of missing values with the mean of the available items in the scale
- **Exclusion** of the scale if more than 50% of values are missing

#### FHIR Implementation
Missing data handling via FHIRPath expressions:

```
// Check for sufficient responses (example PF scale)
%resource.item.where(linkId.matches('^qlq-c30-q0[1-5]$')).where(answer.exists()).count() >= 3
```

### References

1. **Aaronson NK, et al.** (1993)
   *The European Organization for Research and Treatment of Cancer QLQ-C30: a quality-of-life instrument for use in international clinical trials in oncology*
   J Natl Cancer Inst. 85(5):365-76

2. **Fayers PM, et al.** (2001)
   *The EORTC QLQ-C30 Scoring Manual (3rd Edition)*
   European Organisation for Research and Treatment of Cancer, Brussels
   [https://www.eortc.org/app/uploads/sites/2/2018/02/SCmanual.pdf](https://www.eortc.org/app/uploads/sites/2/2018/02/SCmanual.pdf)

### Usage in the MII Context

The EORTC QLQ-C30 serves as a reference instrument within the **MII PRO Module** for:
- **Oncological quality of life measurement** in clinical and research settings
- **Cross-domain harmonization** with other PRO instruments, particularly mapping to PROMIS scales
- **Population-based scoring** and normative value comparisons
- **Modularly extended assessments** through disease-specific EORTC modules

---

*This implementation follows the MII terminology strategies and uses MII CodeSystems for score calculations.*
