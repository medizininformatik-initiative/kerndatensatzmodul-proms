// ===== EORTC QLQ-C30 ObservationDefinitions for all 15 Scale Scores =====

// ===== FUNCTIONAL SCALES (higher = better) =====

// Physical Functioning Score
Instance: mii-obsdef-pro-eortc-qlq-c30-pf
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Physical Functioning Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Physical Functioning Score (PF) - Higher scores indicate better physical functioning"
Usage: #definition
* code.coding[+] = $SCT#273446001 "European Organisation for Research and Treatment of Cancer - Quality of Life questionnaire (assessment scale)"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-pf
* code.coding[=].display = "EORTC QLQ-C30 Physical Functioning Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

// Role Functioning Score
Instance: mii-obsdef-pro-eortc-qlq-c30-rf
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Role Functioning Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Role Functioning Score (RF) - Higher scores indicate better role functioning"
Usage: #definition
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-rf
* code.coding[=].display = "EORTC QLQ-C30 Role Functioning Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

// Emotional Functioning Score
Instance: mii-obsdef-pro-eortc-qlq-c30-ef
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Emotional Functioning Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Emotional Functioning Score (EF) - Higher scores indicate better emotional functioning"
Usage: #definition
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-ef
* code.coding[=].display = "EORTC QLQ-C30 Emotional Functioning Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

// Cognitive Functioning Score
Instance: mii-obsdef-pro-eortc-qlq-c30-cf
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Cognitive Functioning Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Cognitive Functioning Score (CF) - Higher scores indicate better cognitive functioning"
Usage: #definition
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-cf
* code.coding[=].display = "EORTC QLQ-C30 Cognitive Functioning Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

// Social Functioning Score
Instance: mii-obsdef-pro-eortc-qlq-c30-sf
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Social Functioning Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Social Functioning Score (SF) - Higher scores indicate better social functioning"
Usage: #definition
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-sf
* code.coding[=].display = "EORTC QLQ-C30 Social Functioning Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

// ===== SYMPTOM SCALES (higher = worse) =====

// Fatigue Score
Instance: mii-obsdef-pro-eortc-qlq-c30-fa
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Fatigue Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Fatigue Score (FA) - Higher scores indicate more fatigue"
Usage: #definition
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-fa
* code.coding[=].display = "EORTC QLQ-C30 Fatigue Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

// Nausea and Vomiting Score
Instance: mii-obsdef-pro-eortc-qlq-c30-nv
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Nausea and Vomiting Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Nausea and Vomiting Score (NV) - Higher scores indicate more nausea/vomiting"
Usage: #definition
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-nv
* code.coding[=].display = "EORTC QLQ-C30 Nausea and Vomiting Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

// Pain Score
Instance: mii-obsdef-pro-eortc-qlq-c30-pa
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Pain Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Pain Score (PA) - Higher scores indicate more pain"
Usage: #definition
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-pa
* code.coding[=].display = "EORTC QLQ-C30 Pain Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

// ===== SINGLE ITEM SYMPTOM SCALES =====

// Dyspnoea Score
Instance: mii-obsdef-pro-eortc-qlq-c30-dy
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Dyspnoea Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Dyspnoea Score (DY) - Higher scores indicate more dyspnoea"
Usage: #definition
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-dy
* code.coding[=].display = "EORTC QLQ-C30 Dyspnoea Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

// Insomnia Score
Instance: mii-obsdef-pro-eortc-qlq-c30-sl
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Insomnia Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Insomnia Score (SL) - Higher scores indicate more sleep disturbance"
Usage: #definition
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-sl
* code.coding[=].display = "EORTC QLQ-C30 Insomnia Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

// Appetite Loss Score
Instance: mii-obsdef-pro-eortc-qlq-c30-ap
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Appetite Loss Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Appetite Loss Score (AP) - Higher scores indicate more appetite loss"
Usage: #definition
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-ap
* code.coding[=].display = "EORTC QLQ-C30 Appetite Loss Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

// Constipation Score
Instance: mii-obsdef-pro-eortc-qlq-c30-co
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Constipation Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Constipation Score (CO) - Higher scores indicate more constipation"
Usage: #definition
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-co
* code.coding[=].display = "EORTC QLQ-C30 Constipation Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

// Diarrhoea Score
Instance: mii-obsdef-pro-eortc-qlq-c30-di
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Diarrhoea Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Diarrhoea Score (DI) - Higher scores indicate more diarrhoea"
Usage: #definition
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-di
* code.coding[=].display = "EORTC QLQ-C30 Diarrhoea Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

// Financial Difficulties Score
Instance: mii-obsdef-pro-eortc-qlq-c30-fi
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Financial Difficulties Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Financial Difficulties Score (FI) - Higher scores indicate more financial difficulties"
Usage: #definition
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-fi
* code.coding[=].display = "EORTC QLQ-C30 Financial Difficulties Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2

// ===== GLOBAL HEALTH STATUS / QUALITY OF LIFE =====

// Global Health Status / Quality of Life Score
Instance: mii-obsdef-pro-eortc-qlq-c30-ql
InstanceOf: mii-pr-pro-score-blueprint
Title: "EORTC QLQ-C30 Global Health Status / Quality of Life Score Definition"
Description: "ObservationDefinition for EORTC QLQ-C30 Global Health Status / Quality of Life Score (QL) - Higher scores indicate better quality of life"
Usage: #definition
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-ql
* code.coding[=].display = "EORTC QLQ-C30 Global Health Status / Quality of Life Score"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 2