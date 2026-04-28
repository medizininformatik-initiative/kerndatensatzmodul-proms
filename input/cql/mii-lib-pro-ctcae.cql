// PRO-CTCAE Scoring CQL Library
// Implements the NCI Composite Grading Algorithm (Basch et al., Clinical Trials 2021)
// and Average Composite Score (ACS) calculation.
//
// Source: 179 combinations from ProAE R-Package (CRAN) sysdata.rda comp_tab
// Validated against: Basch E, et al. Composite grading algorithm for the NCI's PRO-CTCAE.
//                    Clinical Trials. 2021;18(1):104-114.
//
// Usage:
//   - Library/$evaluate with parameters (server-side scoring via FastAPI ETL)
//   - cqf-expression in Questionnaires (client-side scoring via form renderer)
//
// Architecture Decision (Spike April 2026):
//   HAPI CR $extract and $populate do NOT evaluate calculatedExpression.
//   Server-side scoring requires Library/$evaluate.
//   See: fhir-sdc-questionnaire-service/api/tests/integration/test_calculated_expression_extract.py

library PRO_CTCAE version '1.0.0'

using FHIR version '4.0.1'

// Parameters for direct Library/$evaluate calls
parameter frq Integer default null
parameter sev Integer default null
parameter intrf Integer default null  // 'int' is reserved in CQL

// Opt-out parameters: set to true when patient selected an opt-out answer
// These map to FHIR Observation.dataAbsentReason codes
parameter optOutNotApplicable Boolean default false
parameter optOutNotSexuallyActive Boolean default false
parameter optOutPreferNotToAnswer Boolean default false

// ============================================================================
// Composite Grading Result — Tuple {score, absentReason}
//
// Returns a Tuple with:
//   score:        Integer (0-3) or null if not scorable
//   absentReason: String matching FHIR dataAbsentReason codes, or null if scored
//
// Mapping to FHIR Observation:
//   score != null  → Observation.valueInteger = score
//   score == null  → Observation.dataAbsentReason.coding.code = absentReason
// ============================================================================

define CompositeGradeResult:
  case
    // Opt-out: patient selected "Not applicable" (radiation, injection site)
    when optOutNotApplicable then
      Tuple { score: null as Integer, absentReason: 'not-applicable' }

    // Opt-out: patient selected "Not sexually active"
    when optOutNotSexuallyActive then
      Tuple { score: null as Integer, absentReason: 'not-applicable' }

    // Opt-out: patient selected "Prefer not to answer"
    when optOutPreferNotToAnswer then
      Tuple { score: null as Integer, absentReason: 'asked-declined' }

    // All attributes null = item not answered at all
    when frq is null and sev is null and intrf is null then
      Tuple { score: null as Integer, absentReason: 'not-performed' }

    // Normal scoring path
    else
      Tuple { score: CompositeGrade, absentReason: null as String }
  end

// Score-only accessor (for backward compatibility and simple use cases)
define CompositeGradeScore:
  CompositeGradeResult.score

// AbsentReason-only accessor
define CompositeGradeAbsentReason:
  CompositeGradeResult.absentReason

// ============================================================================
// Composite Grading Algorithm
// Maps frequency (0-4), severity (0-4), interference (0-4) to grade (0-3)
// 7 item configurations based on which attributes the AE has
// ============================================================================

// Raw composite grade calculation (no opt-out handling — use CompositeGradeResult instead)
define CompositeGrade:
  case
    when frq is not null and sev is not null and intrf is not null
      then CompositeGrade3(frq, sev, intrf)
    when frq is not null and sev is not null
      then CompositeGrade2_FrqSev(frq, sev)
    when frq is not null and intrf is not null
      then CompositeGrade2_FrqInt(frq, intrf)
    when sev is not null and intrf is not null
      then CompositeGrade2_SevInt(sev, intrf)
    when frq is not null
      then CompositeGrade1_Frq(frq)
    when sev is not null
      then CompositeGrade1_Sev(sev)
    when intrf is not null
      then CompositeGrade1_Int(intrf)
    else null
  end

// ============================================================================
// Rank 1: Frequency only (5 combinations)
// AEs: Ejaculation Problems (#67), Decreased Sexual Interest (#68 - mapped via frq)
// ============================================================================

define function CompositeGrade1_Frq(f Integer):
  case f
    when 0 then 0
    when 1 then 1
    when 2 then 1
    when 3 then 2
    when 4 then 3
    else null
  end

// ============================================================================
// Rank 2: Severity only (5 combinations)
// AEs: Dry Mouth, Difficulty Swallowing, Skin Cracking, etc. (20 AEs)
// ============================================================================

define function CompositeGrade1_Sev(s Integer):
  case s
    when 0 then 0
    when 1 then 1
    when 2 then 2
    when 3 then 3
    when 4 then 3
    else null
  end

// ============================================================================
// Rank 3: Interference only (5 combinations)
// AEs: Hair Loss (#27), Unusual Vaginal Discharge (#59)
// ============================================================================

define function CompositeGrade1_Int(i Integer):
  case i
    when 0 then 0
    when 1 then 1
    when 2 then 1
    when 3 then 2
    when 4 then 2
    else null
  end

// ============================================================================
// Rank 4: Frequency + Severity (25 combinations, encoded as f*5+s)
// AEs: Nausea, Vomiting, Heartburn, etc. (10 AEs)
// ============================================================================

define function CompositeGrade2_FrqSev(f Integer, s Integer):
  if f = 0 and s = 0 then 0
  else
    case f * 5 + s
      // f=1: s=0..4
      when 5 then 1  when 6 then 1  when 7 then 1  when 8 then 2  when 9 then 2
      // f=2: s=0..4
      when 10 then 1  when 11 then 1  when 12 then 2  when 13 then 2  when 14 then 2
      // f=3: s=0..4
      when 15 then 1  when 16 then 1  when 17 then 2  when 18 then 3  when 19 then 3
      // f=4: s=0..4
      when 20 then 1  when 21 then 1  when 22 then 2  when 23 then 3  when 24 then 3
      else null
    end

// ============================================================================
// Rank 5: Frequency + Interference (25 combinations, encoded as f*5+i)
// AEs: Loss of Bowel Control, Urinary Urgency, etc. (4 AEs)
// ============================================================================

define function CompositeGrade2_FrqInt(f Integer, i Integer):
  if f = 0 and i = 0 then 0
  else
    case f * 5 + i
      // f=1: i=0..4
      when 5 then 1  when 6 then 1  when 7 then 1  when 8 then 2  when 9 then 2
      // f=2: i=0..4
      when 10 then 1  when 11 then 1  when 12 then 1  when 13 then 2  when 14 then 2
      // f=3: i=0..4
      when 15 then 1  when 16 then 1  when 17 then 2  when 18 then 3  when 19 then 3
      // f=4: i=0..4
      when 20 then 1  when 21 then 1  when 22 then 2  when 23 then 3  when 24 then 3
      else null
    end

// ============================================================================
// Rank 6: Severity + Interference (25 combinations, encoded as s*5+i)
// AEs: Mouth/Throat Sores, Decreased Appetite, Shortness of Breath, etc. (12 AEs)
// ============================================================================

define function CompositeGrade2_SevInt(s Integer, i Integer):
  if s = 0 and i = 0 then 0
  else
    case s * 5 + i
      // s=1: i=0..4
      when 5 then 1  when 6 then 1  when 7 then 1  when 8 then 2  when 9 then 2
      // s=2: i=0..4
      when 10 then 1  when 11 then 1  when 12 then 2  when 13 then 2  when 14 then 3
      // s=3: i=0..4
      when 15 then 1  when 16 then 2  when 17 then 2  when 18 then 3  when 19 then 3
      // s=4: i=0..4
      when 20 then 2  when 21 then 2  when 22 then 2  when 23 then 3  when 24 then 3
      else null
    end

// ============================================================================
// Rank 7: Frequency + Severity + Interference (125 combinations, encoded as f*25+s*5+i)
// AEs: Pain in Abdomen, Arm/Leg Swelling, Pain, Headache, etc. (9 AEs)
// ============================================================================

define function CompositeGrade3(f Integer, s Integer, i Integer):
  if f = 0 and s = 0 and i = 0 then 0
  else
    case f * 25 + s * 5 + i
      // f=1, s=0: i=0..4
      when 25 then 0  when 26 then 1  when 27 then 1  when 28 then 2  when 29 then 2
      // f=1, s=1: i=0..4
      when 30 then 1  when 31 then 1  when 32 then 1  when 33 then 2  when 34 then 2
      // f=1, s=2: i=0..4
      when 35 then 1  when 36 then 2  when 37 then 2  when 38 then 2  when 39 then 3
      // f=1, s=3: i=0..4
      when 40 then 2  when 41 then 2  when 42 then 2  when 43 then 3  when 44 then 3
      // f=1, s=4: i=0..4
      when 45 then 2  when 46 then 2  when 47 then 3  when 48 then 3  when 49 then 3
      // f=2, s=0: i=0..4
      when 50 then 0  when 51 then 1  when 52 then 1  when 53 then 2  when 54 then 2
      // f=2, s=1: i=0..4
      when 55 then 1  when 56 then 1  when 57 then 1  when 58 then 2  when 59 then 2
      // f=2, s=2: i=0..4
      when 60 then 2  when 61 then 2  when 62 then 2  when 63 then 3  when 64 then 3
      // f=2, s=3: i=0..4
      when 65 then 2  when 66 then 2  when 67 then 2  when 68 then 3  when 69 then 3
      // f=2, s=4: i=0..4
      when 70 then 2  when 71 then 2  when 72 then 3  when 73 then 3  when 74 then 3
      // f=3, s=0: i=0..4
      when 75 then 1  when 76 then 1  when 77 then 1  when 78 then 2  when 79 then 2
      // f=3, s=1: i=0..4
      when 80 then 1  when 81 then 1  when 82 then 1  when 83 then 2  when 84 then 2
      // f=3, s=2: i=0..4
      when 85 then 2  when 86 then 2  when 87 then 2  when 88 then 3  when 89 then 3
      // f=3, s=3: i=0..4
      when 90 then 2  when 91 then 2  when 92 then 3  when 93 then 3  when 94 then 3
      // f=3, s=4: i=0..4
      when 95 then 2  when 96 then 2  when 97 then 3  when 98 then 3  when 99 then 3
      // f=4, s=0: i=0..4
      when 100 then 1  when 101 then 1  when 102 then 1  when 103 then 2  when 104 then 2
      // f=4, s=1: i=0..4
      when 105 then 1  when 106 then 1  when 107 then 2  when 108 then 2  when 109 then 3
      // f=4, s=2: i=0..4
      when 110 then 2  when 111 then 2  when 112 then 2  when 113 then 3  when 114 then 3
      // f=4, s=3: i=0..4
      when 115 then 2  when 116 then 2  when 117 then 3  when 118 then 3  when 119 then 3
      // f=4, s=4: i=0..4
      when 120 then 2  when 121 then 2  when 122 then 3  when 123 then 3  when 124 then 3
      else null
    end

// ============================================================================
// Average Composite Score (ACS)
// Mean of all symptom composite grades at a given timepoint
// Range: 0.0 - 3.0 (continuous)
//
// Opt-out symptoms (score=null) are EXCLUDED from the average, not counted as 0.
// Example: 21 symptoms, 3 opt-outs → ACS = mean of 18 scores
//
// Parameters: List of composite grade results passed from the ETL layer
// ============================================================================

parameter compositeScores List<Integer> default null

define AverageCompositeScore:
  if compositeScores is null then null
  else
    Avg(
      compositeScores S
        where S is not null
        return ToDecimal(S)
    )

// Count of scored symptoms (for transparency/audit)
define ScoredSymptomCount:
  if compositeScores is null then 0
  else
    Count(compositeScores S where S is not null)

// Count of excluded symptoms (opt-outs + not answered)
define ExcludedSymptomCount:
  if compositeScores is null then 0
  else
    Count(compositeScores S where S is null)

// ACS Result with metadata
define ACSResult:
  Tuple {
    score: AverageCompositeScore,
    scoredCount: ScoredSymptomCount,
    excludedCount: ExcludedSymptomCount,
    absentReason:
      if ScoredSymptomCount = 0 then 'not-performed'
      else null as String
  }
