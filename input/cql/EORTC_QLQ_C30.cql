// EORTC QLQ-C30 Scoring Library
// 15 scales from the core quality of life questionnaire (Q1-30)
//
// Reference: EORTC QLQ-C30 Scoring Manual (3rd edition)
// Uses: EORTC_Core for generic scoring functions

library EORTC_QLQ_C30 version '1.0.0'

using FHIR version '4.0.1'

include EORTC_Core version '1.0.0'

// ============================================================================
// Parameters: Item values Q1-Q30
// All items scored 1-4 except Q29-Q30 scored 1-7
// ============================================================================

parameter Q1 Integer default null   // Physical: strenuous activities
parameter Q2 Integer default null   // Physical: long walk
parameter Q3 Integer default null   // Physical: short walk
parameter Q4 Integer default null   // Physical: stay in bed
parameter Q5 Integer default null   // Physical: help with eating/dressing
parameter Q6 Integer default null   // Role: limited in work
parameter Q7 Integer default null   // Role: limited in hobbies
parameter Q8 Integer default null   // Dyspnoea
parameter Q9 Integer default null   // Pain
parameter Q10 Integer default null  // Fatigue: need to rest
parameter Q11 Integer default null  // Insomnia
parameter Q12 Integer default null  // Fatigue: felt weak
parameter Q13 Integer default null  // Appetite loss
parameter Q14 Integer default null  // Nausea
parameter Q15 Integer default null  // Vomiting
parameter Q16 Integer default null  // Constipation
parameter Q17 Integer default null  // Diarrhoea
parameter Q18 Integer default null  // Fatigue: tired
parameter Q19 Integer default null  // Pain: interfered
parameter Q20 Integer default null  // Cognitive: concentration
parameter Q21 Integer default null  // Emotional: tense
parameter Q22 Integer default null  // Emotional: worry
parameter Q23 Integer default null  // Emotional: irritable
parameter Q24 Integer default null  // Emotional: depressed
parameter Q25 Integer default null  // Cognitive: remembering
parameter Q26 Integer default null  // Social: family life
parameter Q27 Integer default null  // Social: social activities
parameter Q28 Integer default null  // Financial
parameter Q29 Integer default null  // Global health (1-7)
parameter Q30 Integer default null  // Global QoL (1-7)

// ============================================================================
// FUNCTIONAL SCALES (higher = better)
// ============================================================================

// Physical Functioning (PF) — Q1-5, 5 items, range 3
define PhysicalFunctioning:
  EORTC_Core.FunctionalScaleScore({Q1, Q2, Q3, Q4, Q5}, 3)

// Role Functioning (RF) — Q6-7, 2 items, range 3
define RoleFunctioning:
  EORTC_Core.FunctionalScaleScore({Q6, Q7}, 3)

// Emotional Functioning (EF) — Q21-24, 4 items, range 3
define EmotionalFunctioning:
  EORTC_Core.FunctionalScaleScore({Q21, Q22, Q23, Q24}, 3)

// Cognitive Functioning (CF) — Q20, Q25, 2 items, range 3
define CognitiveFunctioning:
  EORTC_Core.FunctionalScaleScore({Q20, Q25}, 3)

// Social Functioning (SF) — Q26-27, 2 items, range 3
define SocialFunctioning:
  EORTC_Core.FunctionalScaleScore({Q26, Q27}, 3)

// Global Health Status / QoL (QL) — Q29-30, 2 items, range 6 (7-point scale)
define GlobalHealthStatus:
  EORTC_Core.FunctionalScaleScore({Q29, Q30}, 6)

// ============================================================================
// SYMPTOM SCALES (higher = worse)
// ============================================================================

// Fatigue (FA) — Q10, Q12, Q18, 3 items, range 3
define Fatigue:
  EORTC_Core.SymptomScaleScore({Q10, Q12, Q18}, 3)

// Nausea and Vomiting (NV) — Q14-15, 2 items, range 3
define NauseaVomiting:
  EORTC_Core.SymptomScaleScore({Q14, Q15}, 3)

// Pain (PA) — Q9, Q19, 2 items, range 3
define Pain:
  EORTC_Core.SymptomScaleScore({Q9, Q19}, 3)

// ============================================================================
// SINGLE ITEMS (higher = worse)
// ============================================================================

// Dyspnoea (DY) — Q8
define Dyspnoea:
  EORTC_Core.SymptomScaleScore({Q8}, 3)

// Insomnia (SL) — Q11
define Insomnia:
  EORTC_Core.SymptomScaleScore({Q11}, 3)

// Appetite Loss (AP) — Q13
define AppetiteLoss:
  EORTC_Core.SymptomScaleScore({Q13}, 3)

// Constipation (CO) — Q16
define Constipation:
  EORTC_Core.SymptomScaleScore({Q16}, 3)

// Diarrhoea (DI) — Q17
define Diarrhoea:
  EORTC_Core.SymptomScaleScore({Q17}, 3)

// Financial Difficulties (FI) — Q28
define FinancialDifficulties:
  EORTC_Core.SymptomScaleScore({Q28}, 3)
