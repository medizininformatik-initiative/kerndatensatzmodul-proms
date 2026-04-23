// EORTC Core Scoring Library
// Generic scoring functions shared by ALL EORTC QLQ modules
// (C30, BR42, BR23, PR25, CR29, LC29, etc.)
//
// Scoring principle (EORTC QLQ-C30 Scoring Manual, 3rd edition):
//   1. Raw Score = mean of item values
//   2. Linear Transformation to 0-100 scale
//      - Functional scales: S = (1 - (RS-1)/range) × 100  (higher = better)
//      - Symptom scales:    S = ((RS-1)/range) × 100       (higher = worse)
//
// All items scored 1-4 (Not at all=1, A little=2, Quite a bit=3, Very much=4)
// Exception: Global Health/QoL items scored 1-7
//
// Missing data: If ≥50% of items in a scale are answered, use the mean of
// the answered items as Raw Score (half-rule).

library EORTC_Core version '1.0.0'

using FHIR version '4.0.1'

// ============================================================================
// Raw Score Calculation
// ============================================================================

// Calculate raw score as mean of non-null item values
// Applies the EORTC half-rule: valid if ≥50% items answered
define function RawScore(items List<Integer>):
  if items is null then null
  else
    let answered: items I where I is not null
    return
      if Count(answered) >= Ceiling(Count(items) / 2.0)
        then Avg(answered A return ToDecimal(A))
      else null // less than half answered → missing

// ============================================================================
// Linear Transformation (0-100)
// ============================================================================

// Functional scale: higher score = better functioning
// S = (1 - (RS - 1) / range) × 100
define function FunctionalScore(rawScore Decimal, range Integer):
  if rawScore is null then null
  else (1.0 - (rawScore - 1.0) / ToDecimal(range)) * 100.0

// Symptom scale: higher score = worse symptoms
// S = ((RS - 1) / range) × 100
define function SymptomScore(rawScore Decimal, range Integer):
  if rawScore is null then null
  else ((rawScore - 1.0) / ToDecimal(range)) * 100.0

// ============================================================================
// Convenience: Combined Raw + Transform in one call
// ============================================================================

// Functional scale from item list (range = max - min per item)
define function FunctionalScaleScore(items List<Integer>, range Integer):
  FunctionalScore(RawScore(items), range)

// Symptom scale from item list
define function SymptomScaleScore(items List<Integer>, range Integer):
  SymptomScore(RawScore(items), range)

// ============================================================================
// Reverse Scoring
// ============================================================================

// Reverse a single item: reversed = (range + 1) - value
// For 4-point scale (1-4): reversed = 5 - value
// For 7-point scale (1-7): reversed = 8 - value
define function ReverseItem(value Integer, maxValue Integer):
  if value is null then null
  else (maxValue + 1) - value

// Reverse for standard 4-point items
define function Reverse4(value Integer):
  ReverseItem(value, 4)

// Reverse for 7-point Global QoL items
define function Reverse7(value Integer):
  ReverseItem(value, 7)

// ============================================================================
// Score Metadata
// ============================================================================

// Count answered items in a scale (for transparency/audit)
define function AnsweredCount(items List<Integer>):
  Count(items I where I is not null)

// Check if scale is valid per half-rule
define function IsValid(items List<Integer>):
  AnsweredCount(items) >= Ceiling(Count(items) / 2.0)
