// EORTC Breast Cancer Scoring Library
// Covers BR42 (current), BR23 (legacy), and BR45 (provisional)
//
// All scales use the same scoring as QLQ-C30: linear transformation 0-100
// Items Q31-72 (BR42), Q31-75 (BR45), or Q1-23 (BR23 own numbering)
//
// BR23 scores are computed from the same items as BR42 Q31-53
// (23 items shared between all three versions)
//
// Uses: EORTC_Core for generic scoring functions

library EORTC_Breast version '1.0.0'

using FHIR version '4.0.1'

include EORTC_Core version '1.0.0'

// ============================================================================
// Parameters: BR42 Items Q31-Q72 (all scored 1-4)
// Items marked [BR23] are shared with the original BR23
// Items marked [NEW] are new in BR42/BR45
// Reverse-scored items: Q44, Q45, Q46, Q71, Q72
// ============================================================================

// Systemic Therapy Side Effects (SYS) — [BR23]
parameter Q31 Integer default null  // Dry mouth
parameter Q32 Integer default null  // Taste changes
parameter Q33 Integer default null  // Eye problems
parameter Q34 Integer default null  // Hair loss
parameter Q36 Integer default null  // Felt ill
parameter Q37 Integer default null  // Hot flushes
parameter Q38 Integer default null  // Headaches

// Upset by Hair Loss (HU) — [BR23]
parameter Q35 Integer default null  // Upset by hair loss (conditional on Q34)

// Body Image (BI) — [BR23]
parameter Q39 Integer default null  // Less attractive
parameter Q40 Integer default null  // Less feminine
parameter Q41 Integer default null  // Difficult looking naked
parameter Q42 Integer default null  // Dissatisfied with body

// Future Perspective (FU) — [BR23]
parameter Q43 Integer default null  // Worried about future health

// Sexual Functioning (SX) — [BR23], reverse scored
parameter Q44 Integer default null  // Interested in sex
parameter Q45 Integer default null  // Sexually active

// Sexual Enjoyment (SE) — [BR23], reverse scored, conditional
parameter Q46 Integer default null  // Sex enjoyable

// Arm Symptoms (ARM) — [BR23]
parameter Q47 Integer default null  // Arm/shoulder pain
parameter Q48 Integer default null  // Swollen arm/hand
parameter Q49 Integer default null  // Difficult raising arm

// Breast Symptoms (BR) — [BR23]
parameter Q50 Integer default null  // Breast pain
parameter Q51 Integer default null  // Breast swollen
parameter Q52 Integer default null  // Breast oversensitive
parameter Q53 Integer default null  // Breast skin problems

// Endocrine Therapy Symptoms (ET) — [NEW]
parameter Q54 Integer default null  // Excessive sweating
parameter Q55 Integer default null  // Mood swings
parameter Q56 Integer default null  // Dizziness
parameter Q63 Integer default null  // Joint problems
parameter Q64 Integer default null  // Stiff joints
parameter Q65 Integer default null  // Joint pain
parameter Q66 Integer default null  // Aching bones

// Skin / Mucosis Symptoms (SM) — [NEW]
parameter Q57 Integer default null  // Sore mouth
parameter Q58 Integer default null  // Reddened mouth
parameter Q59 Integer default null  // Hand/feet pain
parameter Q60 Integer default null  // Hand/feet redness
parameter Q61 Integer default null  // Hand/feet tingling
parameter Q62 Integer default null  // Hand/feet numbness

// Weight Gain (WG) — [NEW]
parameter Q67 Integer default null  // Weight gain

// Endocrine Sexual Symptoms (ES) — [NEW]
parameter Q68 Integer default null  // Vaginal discomfort
parameter Q69 Integer default null  // Vaginal pain during sex (conditional)
parameter Q70 Integer default null  // Dry vagina during sex (conditional)

// Breast Satisfaction (BS) — [NEW], reverse scored
parameter Q71 Integer default null  // Satisfied with cosmetic result
parameter Q72 Integer default null  // Satisfied with breast skin appearance

// ============================================================================
// BR45-only items (removed in BR42)
// ============================================================================
parameter Q67_BR45 Integer default null  // Muscle aches (BR45 only, removed in BR42)
parameter Q69_BR45 Integer default null  // Weight gain problematic (BR45 only, removed in BR42)
parameter Q73_BR45 Integer default null  // ES extra item (BR45 only, removed in BR42)

// ============================================================================
// BR42 FUNCTIONAL SCALES (higher = better)
// ============================================================================

// Body Image (BI) — Q39-42, 4 items, range 3
define BodyImage:
  EORTC_Core.FunctionalScaleScore({Q39, Q40, Q41, Q42}, 3)

// Future Perspective (FU) — Q43, 1 item, range 3
define FuturePerspective:
  EORTC_Core.FunctionalScaleScore({Q43}, 3)

// Sexual Functioning (SX) — Q44-45, 2 items, range 3, REVERSE SCORED
define SexualFunctioning:
  EORTC_Core.FunctionalScaleScore(
    {EORTC_Core.Reverse4(Q44), EORTC_Core.Reverse4(Q45)}, 3)

// Sexual Enjoyment (SE) — Q46, 1 item, range 3, REVERSE SCORED
define SexualEnjoyment:
  EORTC_Core.FunctionalScaleScore({EORTC_Core.Reverse4(Q46)}, 3)

// Breast Satisfaction (BS) — Q71-72, 2 items, range 3, REVERSE SCORED [NEW]
define BreastSatisfaction:
  EORTC_Core.FunctionalScaleScore(
    {EORTC_Core.Reverse4(Q71), EORTC_Core.Reverse4(Q72)}, 3)

// ============================================================================
// BR42 SYMPTOM SCALES (higher = worse)
// ============================================================================

// Systemic Therapy Side Effects (SYS) — Q31-34, Q36-38, 7 items, range 3
define SystemicTherapySideEffects:
  EORTC_Core.SymptomScaleScore({Q31, Q32, Q33, Q34, Q36, Q37, Q38}, 3)

// Upset by Hair Loss (HU) — Q35, 1 item, range 3
define UpsetByHairLoss:
  EORTC_Core.SymptomScaleScore({Q35}, 3)

// Arm Symptoms (ARM) — Q47-49, 3 items, range 3
define ArmSymptoms:
  EORTC_Core.SymptomScaleScore({Q47, Q48, Q49}, 3)

// Breast Symptoms (BR) — Q50-53, 4 items, range 3
define BreastSymptoms:
  EORTC_Core.SymptomScaleScore({Q50, Q51, Q52, Q53}, 3)

// Endocrine Therapy Symptoms (ET) — Q54-56, Q63-66, 7 items, range 3 [NEW]
define EndocrineTherapy_BR42:
  EORTC_Core.SymptomScaleScore({Q54, Q55, Q56, Q63, Q64, Q65, Q66}, 3)

// Skin / Mucosis Symptoms (SM) — Q57-62, 6 items, range 3 [NEW]
define SkinMucosis:
  EORTC_Core.SymptomScaleScore({Q57, Q58, Q59, Q60, Q61, Q62}, 3)

// Endocrine Sexual Symptoms (ES) — Q68-70, 3 items, range 3 [NEW]
define EndocrineSexual_BR42:
  EORTC_Core.SymptomScaleScore({Q68, Q69, Q70}, 3)

// Weight Gain (WG) — Q67, 1 item, range 3 [NEW]
define WeightGain:
  EORTC_Core.SymptomScaleScore({Q67}, 3)

// ============================================================================
// BR23 COMPATIBILITY
// All 8 BR23 scales computed from the same items as BR42
// Identical scores — just aliased for clarity
// ============================================================================

define BR23_BodyImage: BodyImage
define BR23_FuturePerspective: FuturePerspective
define BR23_SexualFunctioning: SexualFunctioning
define BR23_SexualEnjoyment: SexualEnjoyment
define BR23_SystemicTherapySideEffects: SystemicTherapySideEffects
define BR23_UpsetByHairLoss: UpsetByHairLoss
define BR23_ArmSymptoms: ArmSymptoms
define BR23_BreastSymptoms: BreastSymptoms

// ============================================================================
// BR45 VARIANT SCORES
// For the 2 scales that differ between BR45 and BR42
// (items removed in Phase IV validation)
// ============================================================================

// Endocrine Therapy (BR45) — 10 items (BR42 has 7)
// Includes Q67_BR45 (muscle aches), Q69_BR45 (weight gain problematic),
// and one additional item that became part of different scale
define EndocrineTherapy_BR45:
  EORTC_Core.SymptomScaleScore(
    {Q54, Q55, Q56, Q63, Q64, Q65, Q66, Q67_BR45, Q69_BR45}, 3)

// Endocrine Sexual (BR45) — 4 items (BR42 has 3)
define EndocrineSexual_BR45:
  EORTC_Core.SymptomScaleScore({Q68, Q69, Q70, Q73_BR45}, 3)
