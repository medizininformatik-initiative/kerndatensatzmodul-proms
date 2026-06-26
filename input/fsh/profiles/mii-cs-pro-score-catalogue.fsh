CodeSystem: MII_CS_PRO_Score_Catalogue
Id: mii-cs-pro-score-catalogue
Title: "MII CS PRO Score Catalogue"
Description: "MII CS PRO Score Catalogue for PRO Scores used in the MII PROMs Module"


* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* ^status = #active

// EQ-5D-5L Scores
* #euroqol-eq5d5l-index "EuroQol EQ-5D-5L Index Score"
* #euroqol-eq5d5l-vas "EuroQol EQ-5D-5L Visual Analog Scale (VAS) Score"
* #euroqol-eq5d5l-profile "EuroQol EQ-5D-5L Profile"

// PHQ-9 Scores
* #phq-phq9-total "PHQ-9 Total Score"

// PHQ-15 Scores
* #phq-phq15-total "PHQ-15 Total Score"

// BDI-II Scores
* #bdi-bdi2-total "Beck Depression Inventory II (BDI-II) Total Score"

// PROMIS-29 Profile v2.1 Domain Scores
* #promis-29-physical-function-tscore "PROMIS-29 Physical Function T-Score"
* #promis-29-anxiety-tscore "PROMIS-29 Anxiety T-Score"
* #promis-29-depression-tscore "PROMIS-29 Depression T-Score"
* #promis-29-fatigue-tscore "PROMIS-29 Fatigue T-Score"
* #promis-29-sleep-disturbance-tscore "PROMIS-29 Sleep Disturbance T-Score"
* #promis-29-social-function-tscore "PROMIS-29 Ability to Participate in Social Roles and Activities T-Score"
* #promis-29-pain-interference-tscore "PROMIS-29 Pain Interference T-Score"
* #promis-29-pain-intensity "PROMIS-29 Pain Intensity (0-10 Numeric Rating)"

// PROMIS Cognitive Function Abilities SF4a Scores
* #promis-cognitive-function-sf4a-raw "PROMIS Cognitive Function Abilities 4a Raw Score"
* #promis-cognitive-function-sf4a-tscore "PROMIS Cognitive Function Abilities 4a T-Score"

// Legacy PROMIS Depression Score (for backwards compatibility)
* #promis-depression "PROMIS Depression Score"

// EORTC QLQ-C30 Functional Scales (higher = better functioning)
* #eortc-qlq-c30-pf "EORTC QLQ-C30 Physical Functioning Score"
* #eortc-qlq-c30-rf "EORTC QLQ-C30 Role Functioning Score"
* #eortc-qlq-c30-ef "EORTC QLQ-C30 Emotional Functioning Score"
* #eortc-qlq-c30-cf "EORTC QLQ-C30 Cognitive Functioning Score"
* #eortc-qlq-c30-sf "EORTC QLQ-C30 Social Functioning Score"

// EORTC QLQ-C30 Symptom Scales (higher = worse symptoms)
* #eortc-qlq-c30-fa "EORTC QLQ-C30 Fatigue Score"
* #eortc-qlq-c30-nv "EORTC QLQ-C30 Nausea and Vomiting Score"
* #eortc-qlq-c30-pa "EORTC QLQ-C30 Pain Score"

// EORTC QLQ-C30 Single Item Symptoms (higher = worse symptoms)
* #eortc-qlq-c30-dy "EORTC QLQ-C30 Dyspnoea Score"
* #eortc-qlq-c30-sl "EORTC QLQ-C30 Insomnia Score"
* #eortc-qlq-c30-ap "EORTC QLQ-C30 Appetite Loss Score"
* #eortc-qlq-c30-co "EORTC QLQ-C30 Constipation Score"
* #eortc-qlq-c30-di "EORTC QLQ-C30 Diarrhoea Score"
* #eortc-qlq-c30-fi "EORTC QLQ-C30 Financial Difficulties Score"

// EORTC QLQ-C30 Global Health Status / Quality of Life (higher = better QoL)
* #eortc-qlq-c30-ql "EORTC QLQ-C30 Global Health Status / Quality of Life Score"

// DASS-21 Raw Scores (higher = worse)
* #dass21-depression-raw "DASS-21 Depression Raw Score"
* #dass21-anxiety-raw "DASS-21 Anxiety Raw Score"
* #dass21-stress-raw "DASS-21 Stress Raw Score"

// DASS-21 DASS-42 Equivalent Scores (raw × 2, higher = worse)
* #dass21-depression-equiv "DASS-21 Depression DASS-42 Equivalent Score"
* #dass21-anxiety-equiv "DASS-21 Anxiety DASS-42 Equivalent Score"
* #dass21-stress-equiv "DASS-21 Stress DASS-42 Equivalent Score"

// PRO-CTCAE Scores (higher = worse AE burden)
* #proctcae-composite-grade "PRO-CTCAE Composite Grade (per Adverse Event)"
* #proctcae-acs "PRO-CTCAE Average Composite Score (ACS)"
