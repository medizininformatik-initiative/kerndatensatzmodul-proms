# DASS-21 - MII IG PRO v2026.5.1

## DASS-21

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Overview

The **Depression Anxiety Stress Scales - Short Form (DASS-21)** is a validated self-report instrument for the simultaneous assessment of **depression**, **anxiety**, and **stress**. The instrument was developed by Lovibond & Lovibond (1995) at the University of New South Wales (UNSW) and is designed as the short form of the 42-item full version (DASS-42).

**Key Properties:**

* **21 items** on a 4-point Likert scale (0-3)
* **3 subscales** with 7 items each: Depression, Anxiety, Stress
* **Time frame**: Past week
* **License**: Public domain – freely available without license fees
* **German Validation**: Nilges & Essau (2015)
* **Administration**: 5-10 minutes

### Questionnaire Structure

#### Response Scale (4-Point Likert)

| | | |
| :--- | :--- | :--- |
| 0 | Did not apply to me at all | Traf gar nicht auf mich zu |
| 1 | Applied to me to some degree | Traf bis zu einem gewissen Grad auf mich zu |
| 2 | Applied to me to a considerable degree | Traf in betrachtlichem Masse auf mich zu |
| 3 | Applied to me very much | Traf sehr stark auf mich zu |

#### Subscales and Item Assignment

| | | |
| :--- | :--- | :--- |
| **Depression** | 3, 5, 10, 13, 16, 17, 21 | Dysphoria, hopelessness, devaluation of life, self-deprecation, lack of interest/engagement, anhedonia, inertia |
| **Anxiety** | 2, 4, 7, 9, 15, 19, 20 | Autonomic arousal, skeletal muscle effects, situational anxiety, subjective anxiety experience |
| **Stress** | 1, 6, 8, 11, 12, 14, 18 | Difficulty relaxing, nervous arousal, easy irritability, impatience |

### Score Calculation

#### Raw Scores (DASS-21)

For each subscale, the sum of the 7 associated items is calculated:

```
Raw Score = Sum of 7 item responses (Range: 0-21)

```

#### DASS-42 Equivalents

Since the published severity cut-offs are based on the DASS-42 full version, the DASS-21 raw scores are multiplied by 2:

```
DASS-42 Equivalent = DASS-21 Raw Score x 2 (Range: 0-42)

```

#### Severity Cut-offs (DASS-42 Equivalents)

| | | | |
| :--- | :--- | :--- | :--- |
| **Normal** | 0-9 | 0-7 | 0-14 |
| **Mild** | 10-13 | 8-9 | 15-18 |
| **Moderate** | 14-20 | 10-14 | 19-25 |
| **Severe** | 21-27 | 15-19 | 26-33 |
| **Extremely Severe** | 28+ | 20+ | 34+ |

#### Severity Cut-offs (DASS-21 Raw Scores)

| | | | |
| :--- | :--- | :--- | :--- |
| **Normal** | 0-4 | 0-3 | 0-7 |
| **Mild** | 5-6 | 4-5 | 8-9 |
| **Moderate** | 7-10 | 6-7 | 10-12 |
| **Severe** | 11-13 | 8-9 | 13-16 |
| **Extremely Severe** | 14+ | 10+ | 17+ |

### FHIR Implementation

> **Language Strategy:** The DASS-21 is implemented with English as the primary language, as the original version of the instrument was written in English. German translations according to Nilges & Essau (2015) are provided as Translation extensions.

> **Terminology Strategy:** The DASS-21 implementation uses **MII-controlled terminology** (no LOINC codes), as LOINC currently does not provide complete DASS-21 codings. The SNOMED CT codes `416954004 |Depression anxiety stress scales depression score|` and `416767005 |Depression anxiety stress scales stress score|` are used for score coding.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-dass-dass21`

**Implemented Capabilities:**

* Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Key Features:**

* Automatic score calculation via FHIR variables and FHIRPath
* 6 calculated score items: 3 raw scores + 3 DASS-42 equivalents
* MII CodeSystem with ordinalValue extensions for scoring

See the [Questionnaire definition](Questionnaire-mii-qst-pro-dass-dass21.md) for the full resource.

#### CodeSystem and ValueSet

**CodeSystem:** `mii-cs-pro-dass-21` – Item codes and response scale with English primary texts and German translations (Nilges & Essau 2015)

See the [CodeSystem definition](CodeSystem-mii-cs-pro-dass-21.md) for the full resource.

**ValueSet:** `mii-vs-pro-dass-21-answer-list` – 4-point Likert response scale (0-3)

See the [ValueSet definition](ValueSet-mii-vs-pro-dass-21-answer-list.md) for the full resource.

#### Score Representation

The DASS-21 generates 6 scores at two levels:

**Raw Scores (DASS-21, Range 0-21):**

* **Depression Raw Score** (`mii-obsdef-pro-score-dass21-depression-raw`) – SNOMED: 416954004
* **Anxiety Raw Score** (`mii-obsdef-pro-score-dass21-anxiety-raw`)
* **Stress Raw Score** (`mii-obsdef-pro-score-dass21-stress-raw`) – SNOMED: 416767005

**DASS-42 Equivalents (Raw Score x 2, Range 0-42):**

* **Depression Equivalent** (`mii-obsdef-pro-score-dass21-depression-equiv`) – SNOMED: 416954004
* **Anxiety Equivalent** (`mii-obsdef-pro-score-dass21-anxiety-equiv`)
* **Stress Equivalent** (`mii-obsdef-pro-score-dass21-stress-equiv`) – SNOMED: 416767005

#### Scoring Implementation

Automatic score calculation via FHIR variables and SDC `calculatedExpression`:

```
// FHIRPath - Variable: depressionRaw
%resource.item.where(linkId.matches('^dass-dass21-q(03|05|10|13|16|17|21)$')).answer.value.ordinal().sum()

// FHIRPath - Variable: anxietyRaw
%resource.item.where(linkId.matches('^dass-dass21-q(02|04|07|09|15|19|20)$')).answer.value.ordinal().sum()

// FHIRPath - Variable: stressRaw
%resource.item.where(linkId.matches('^dass-dass21-q(01|06|08|11|12|14|18)$')).answer.value.ordinal().sum()

// DASS-42 Equivalent (Example Depression)
%depressionRaw * 2

```

### Psychometric Properties

#### Internal Consistency

* **Depression**: Cronbach's alpha = 0.88 (German version, Nilges & Essau 2015)
* **Anxiety**: Cronbach's alpha = 0.76
* **Stress**: Cronbach's alpha = 0.86

#### Factor Structure

* Confirmatory **3-factor model** with good fit
* Clear assignment of items to Depression, Anxiety, and Stress
* Discriminant validity between the three subscales

#### Clinical Use

* **Screening**: Simultaneous assessment of depression, anxiety, and stress
* **Progress Monitoring**: Sensitivity to change over time
* **Differential Diagnostics**: Differentiation between affective and anxiety disorders
* **Research**: Broad application in clinical and epidemiological studies

### Domain Alignment

The DASS-21 subscales are assigned to the following health domains:

| | | |
| :--- | :--- | :--- |
| Depression | Depression | PHQ-9, BDI-II, PROMIS Depression |
| Anxiety | Anxiety | GAD-7, PROMIS Anxiety |
| Stress | Psychological Distress | K6, PSS-10 |

### References

1. **Lovibond SH, Lovibond PF.** (1995) **Manual for the Depression Anxiety Stress Scales (2nd ed.)** Sydney: Psychology Foundation of Australia
1. **Nilges P, Essau C.** (2015) **Die Depressions-Angst-Stress-Skalen: Der DASS – ein Screeninginstrument nicht nur fur Schmerzpatienten** Schmerz. 29(6):649-57
1. **Bibi A, Lin M, Zhang XC, Margraf J.** (2020) **Psychometric properties and measurement invariance of Depression, Anxiety and Stress Scales (DASS-21) across cultures** International Journal of Psychology. 55(6):916-925

-------

**This implementation follows the MII terminology strategies and uses MII CodeSystems for score calculations. The DASS-21 is public domain and can be used without license fees.**

