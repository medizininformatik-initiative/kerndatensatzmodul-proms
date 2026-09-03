# PRO-CTCAE - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **PRO-CTCAE**

## PRO-CTCAE

### Overview

**PRO-CTCAE** is a measurement system developed by the US National Cancer Institute (NCI) for the patient-reported assessment of symptomatic adverse events in oncological clinical trials. Unlike classic PRO instruments, PRO-CTCAE is not a single questionnaire instance but an **item library** from which study- and tumour-specific questionnaires are assembled.

### Key Properties

| | |
| :--- | :--- |
| **Instrument type** | Item library (not a fixed questionnaire) |
| **Items** | 124 items covering 78 adverse events |
| **Attributes** | Frequency, severity, interference |
| **Response scales** | 5-point Likert (0-4) for the three main attributes, binary (yes/no) for presence |
| **Languages** | 60+ validated translations including German (NCI-authorised) |
| **Recall period** | Past 7 days |
| **License** | Freely available (NCI, no copyright) |
| **SNOMED CT** | No dedicated code (MII-controlled terminology) |

### The Item Library Concept

PRO-CTCAE works as a **modular item bank**. Investigators select the adverse events relevant to their study and assemble a tumour-specific questionnaire from them:

```
124 items (item library)
  ├── Breast centre subset: 21 symptoms → 36 items
  ├── Prostate subset: 19 symptoms → ~35 items
  ├── Multiple myeloma: 19 symptoms → ~35 items
  └── Further tumour-specific subsets as required

```

Each adverse event has 1-3 items, depending on its configuration:

| | | |
| :--- | :--- | :--- |
| Severity only | 1 | Dry mouth |
| Frequency only | 1 | Diarrhoea |
| Interference/amount only | 1 | Hair loss |
| Frequency + severity | 2 | Nausea |
| Severity + interference | 2 | Fatigue |
| Frequency + interference | 2 | Urinary urgency |
| Frequency + severity + interference | 3 | Pain |
| Presence (yes/no) | 1 | Rash |

### Scoring: the Composite Grading Algorithm

#### Principle

The NCI composite grading algorithm (Basch et al., Clinical Trials 2021) condenses the 1-3 item values of an adverse event into a single **composite grade (0-3)**, analogous to the CTCAE grades for symptomatic adverse events.

#### Algorithm

179 combinations of frequency, severity and interference are mapped onto grades 0-3. The algorithm was developed by 20 clinical investigators in a consensus process and validated quantitatively.

**Example: an AE with frequency + severity + interference (rank 7)**

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **F=1, S=0** | 0 | 1 | 1 | 2 | 2 |
| **F=1, S=1** | 1 | 1 | 1 | 2 | 2 |
| **F=1, S=2** | 1 | 2 | 2 | 2 | 3 |
| **F=2, S=2** | 2 | 2 | 2 | 3 | 3 |
| **F=3, S=3** | 2 | 2 | 3 | 3 | 3 |
| **F=4, S=4** | 2 | 2 | 3 | 3 | 3 |

#### Average Composite Score (ACS)

The ACS is the mean of all composite grades at a measurement point and reflects the **overall adverse-event burden**:

```
ACS = sum(composite grades) / count(scored symptoms)

```

* Range: 0.0 - 3.0 (continuous)
* Symptoms with opt-out answers are excluded (not counted as 0)

### FHIR Implementation

#### Architecture

The PRO-CTCAE implementation uses a **CQL-based scoring architecture**:

```
QuestionnaireResponse (raw answers)
  │
  ├── Form renderer → calculatedExpression → score in the QR → $extract → Observations
  │   (client-side, for interactive forms)
  │
  └── Library/$evaluate → CQL CompositeGrade() → FastAPI ETL → Observations
      (server-side, for import/ETL pipelines)

```

**Architectural decision (spike April 2026):** HAPI FHIR CR evaluates `calculatedExpression` neither on `$extract` nor on `$populate`. Server-side scoring therefore goes through `Library/$evaluate` with a dedicated CQL library.

#### Resource Overview

| | | |
| :--- | :--- | :--- |
| **CodeSystem** | `mii-cs-pro-pro-ctcae` | 124 items, 78 AEs, EN+DE, opt-out codes |
| **ValueSet (9×)** | `mii-vs-pro-pro-ctcae-*` | Frequency, severity, interference, presence + special scales |
| **Questionnaire** | `mii-qst-pro-pro-ctcae-breast-de` | Breast centre subset (21 symptoms, DE) |
| **ObservationDefinition** | `mii-obsdef-pro-score-proctcae-composite-grade` | Composite grade (0-3) |
| **ObservationDefinition** | `mii-obsdef-pro-score-proctcae-acs` | Average composite score (0.0-3.0) |
| **CQL library** | `mii-lib-pro-ctcae` | CompositeGrade(), ACS, opt-out handling |

#### CQL Library

The CQL library `PRO_CTCAE` implements the complete NCI composite grading algorithm:

```
// Main entry point — returns a tuple {score, absentReason}
define CompositeGradeResult:
  case
    when optOutNotApplicable then Tuple { score: null, absentReason: 'not-applicable' }
    when optOutPreferNotToAnswer then Tuple { score: null, absentReason: 'asked-declined' }
    else Tuple { score: CompositeGrade, absentReason: null }
  end

// ACS with opt-out filtering
define ACSResult:
  Tuple {
    score: Avg(compositeScores where not null),
    scoredCount: Count(compositeScores where not null),
    excludedCount: Count(compositeScores where null)
  }

```

#### dataAbsentReason on Opt-Out Answers

Some PRO-CTCAE items carry opt-out options (for example "not sexually active", "does not apply to me"). These yield no score — the resulting Observation instead carries a `dataAbsentReason`:

| | | |
| :--- | :--- | :--- |
| Does not apply to me | `not-applicable` | The question is not relevant to this patient |
| Not sexually active | `not-applicable` | Domain not applicable |
| Prefer not to answer | `asked-declined` | The patient declines to answer |

#### Special Response Scales

Beyond the four base scales there are extended scales for specific items:

| | | |
| :--- | :--- | :--- |
| `severity-radiation` | Radiation (#36) | + "does not apply to me" |
| `severity-sexual` | Erection, sexual interest, vaginal pain (#66, 68, 71) | + "not sexually active" + "prefer not to answer" |
| `frequency-sexual` | Ejaculation problems (#67) | + "not sexually active" + "prefer not to answer" |
| `presence-na` | Menstruation, injection site (#57, 58, 79) | + "does not apply to me" |
| `presence-sexual` | Orgasm (#69, 70) | + "not sexually active" + "prefer not to answer" |

### Breast Centre Subset (21 symptoms)

The first implemented subset is based on the validation study by Hamacher et al. (BMC Cancer 2023) at three German outpatient cancer centres with 101 breast cancer patients.

#### Selected Symptoms

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| 1 | Fatigue | 53 | Sev + Int | 2 |
| 2 | Numbness/tingling | 39 | Sev + Int | 2 |
| 3 | Nausea | 9 | Frq + Sev | 2 |
| 4 | Muscle pain | 50 | Frq + Sev + Int | 3 |
| 5 | Sleep problems | 52 | Sev + Int | 2 |
| 6 | Hair loss | 27 | Amount | 1 |
| 7 | Joint pain | 51 | Frq + Sev + Int | 3 |
| 8 | Blurred vision | 41 | Sev + Int | 2 |
| 9 | Concentration problems | 46 | Sev + Int | 2 |
| 10 | Pain (general) | 48 | Frq + Sev + Int | 3 |
| 11 | Diarrhoea | 16 | Frq | 1 |
| 12 | Constipation | 15 | Sev | 1 |
| 13 | Taste changes | 7 | Sev | 1 |
| 14 | Dizziness | 40 | Sev + Int | 2 |
| 15 | Shortness of breath | 19 | Sev + Int | 2 |
| 16 | Heart palpitations | 23 | Frq + Sev | 2 |
| 17 | Memory problems | 47 | Sev + Int | 2 |
| 18 | Arm/leg swelling | 22 | Frq + Sev + Int | 3 |
| 19 | Rash | 24 | Presence | 1 |
| 20 | Nail ridging | 32 | Presence | 1 |
| 21 | Nail discolouration | 33 | Presence | 1 |

**Total: 36 items**

### References

1. Basch E, Reeve BB, Mitchell SA, et al. Development of the National Cancer Institute's Patient-Reported Outcomes Version of the Common Terminology Criteria for Adverse Events (PRO-CTCAE).**J Natl Cancer Inst.**2014;106(9):dju244.
1. Basch E, Becker C, Rogak LJ, et al. Composite grading algorithm for the National Cancer Institute's Patient-Reported Outcomes version of the Common Terminology Criteria for Adverse Events (PRO-CTCAE).**Clinical Trials.**2021;18(1):104-114.
1. Haverkamp C, et al. Validation of the German patient-reported outcomes version of the common terminology criteria for adverse events (PRO-CTCAE).**Ann Oncol.**2016;27(suppl_6):vi369.
1. Hamacher S, et al. Developing tumor-specific PRO-CTCAE item sets: analysis of a cross-sectional survey in three German outpatient cancer centers.**BMC Cancer.**2023;23:638.
1. NCI PRO-CTCAE Item Library v1.0 — German. Available at: https://healthcaredelivery.cancer.gov/pro-ctcae/

