// EORTC QLQ-BR45 Questionnaire — Breast Cancer Module (Provisional Phase III)
// Source: EORTC QLQ-BR45 Provisional Phase III (2020), supplement to QLQ-C30
// Items Q31-Q75 (45 items)
//
// Superseded by QLQ-BR42 (Phase IV, 2024). Retained for historical reference
// and longitudinal data compatibility.
// The first 23 items (Q31-53) are identical to BR42.
// Q54-72 map to BR42 Q54-72 with one extra item in Endocrine Therapy (Q54-56, Q63-69)
// and Endocrine Sexual (Q70-73) scales.
// Q74-75 are the Breast Satisfaction items renumbered to Q71-72 in BR42.
//
// NOTE: Item text for Q73 is an approximation based on the BR45 scoring manual
// and requires verification against the official EORTC BR45 document.
// Uses same 4-point answer scale as QLQ-C30 (reuses ValueSet)
// TODO: German translations from official EORTC German BR45

Instance: mii-qst-pro-eortc-qlq-br45
InstanceOf: MII_PR_PRO_Questionnaire
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-eortc-qlq-br45"
* name = "MII_QST_PRO_EORTC_QLQ_BR45"
* title = "EORTC QLQ-BR45 Breast Cancer Module (Provisional Phase III)"
* code[+] = $mii-cs-pro-questionnaire-catalogue#eortc-qlq-br45 "EORTC QLQ-BR45 Breast Cancer Module (Provisional Phase III)"
* status = #retired
* experimental = false
* description = "EORTC QLQ-BR45: Provisional Phase III breast cancer quality of life module (45 items, Q31-75, 2020). Designed as supplement to the QLQ-C30. Superseded by QLQ-BR42 (Phase IV, 2024). Retained for historical reference and longitudinal data compatibility. Contains the same 8 scales as BR23 plus Endocrine Therapy Symptoms, Skin/Mucosis Symptoms, Endocrine Sexual Symptoms, and Breast Satisfaction scales."
* copyright = "Copyright EORTC. Available free of charge for academic use."

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* extension[=].valueBoolean = true

// ============================================================================
// Systemic Therapy Side Effects (SYS) — Q31-34, Q36-38 (7 items)
// Identical to BR42 Q31-34, Q36-38
// ============================================================================
* item[+].linkId = "br45-sys"
* item[=].text = "Systemic Therapy Side Effects"
* item[=].type = #group

* item[=].item[+].linkId = "br45-q31"
* item[=].item[=].text = "Did you have a dry mouth?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q32"
* item[=].item[=].text = "Did food and drink taste different from usual?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q33"
* item[=].item[=].text = "Were your eyes painful, irritated or watery?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q34"
* item[=].item[=].text = "Have you lost any hair?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Upset by Hair Loss (HU) — Q35 (1 item, conditional on Q34)
// Identical to BR42 Q35
// ============================================================================
* item[+].linkId = "br45-hu"
* item[=].text = "Upset by Hair Loss"
* item[=].type = #group

* item[=].item[+].linkId = "br45-q35"
* item[=].item[=].text = "Were you upset by the loss of your hair?"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[=].item[=].enableWhen[+].question = "br45-q34"
* item[=].item[=].enableWhen[=].operator = #!=
* item[=].item[=].enableWhen[=].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30#not-at-all

// ============================================================================
// Systemic Therapy Side Effects (SYS) — Q36-38 (continued)
// Identical to BR42 Q36-38
// ============================================================================
* item[+].linkId = "br45-sys-cont"
* item[=].text = "Systemic Therapy Side Effects (continued)"
* item[=].type = #group

* item[=].item[+].linkId = "br45-q36"
* item[=].item[=].text = "Did you feel ill or unwell?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q37"
* item[=].item[=].text = "Did you have hot flushes?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q38"
* item[=].item[=].text = "Did you have headaches?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Body Image (BI) — Q39-42 (4 items)
// Identical to BR42 Q39-42
// ============================================================================
* item[+].linkId = "br45-bi"
* item[=].text = "Body Image"
* item[=].type = #group

* item[=].item[+].linkId = "br45-q39"
* item[=].item[=].text = "Have you felt physically less attractive as a result of your disease or treatment?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q40"
* item[=].item[=].text = "Have you been feeling less feminine as a result of your disease or treatment?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q41"
* item[=].item[=].text = "Did you find it difficult to look at yourself naked?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q42"
* item[=].item[=].text = "Have you been dissatisfied with your body?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Future Perspective (FU) — Q43 (1 item)
// Identical to BR42 Q43
// ============================================================================
* item[+].linkId = "br45-fu"
* item[=].text = "Future Perspective"
* item[=].type = #group

* item[=].item[+].linkId = "br45-q43"
* item[=].item[=].text = "Were you worried about your health in the future?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Sexual Functioning (SX) — Q44-45 (2 items, reverse scored)
// Identical to BR42 Q44-45
// ============================================================================
* item[+].linkId = "br45-sx"
* item[=].text = "Sexual Functioning"
* item[=].type = #group

* item[=].item[+].linkId = "br45-q44"
* item[=].item[=].text = "To what extent were you interested in sex?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q45"
* item[=].item[=].text = "To what extent were you sexually active (with or without intercourse)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Sexual Enjoyment (SE) — Q46 (1 item, reverse scored, conditional)
// Identical to BR42 Q46
// ============================================================================
* item[+].linkId = "br45-se"
* item[=].text = "Sexual Enjoyment"
* item[=].type = #group

* item[=].item[+].linkId = "br45-q46"
* item[=].item[=].text = "To what extent was sex enjoyable for you?"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[=].item[=].enableWhen[+].question = "br45-q45"
* item[=].item[=].enableWhen[=].operator = #!=
* item[=].item[=].enableWhen[=].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30#not-at-all

// ============================================================================
// Arm Symptoms (ARM) — Q47-49 (3 items)
// Identical to BR42 Q47-49
// ============================================================================
* item[+].linkId = "br45-arm"
* item[=].text = "Arm Symptoms"
* item[=].type = #group

* item[=].item[+].linkId = "br45-q47"
* item[=].item[=].text = "Did you have any pain in your arm or shoulder?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q48"
* item[=].item[=].text = "Did you have a swollen arm or hand?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q49"
* item[=].item[=].text = "Was it difficult to raise your arm or to move it sideways?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Breast Symptoms (BR) — Q50-53 (4 items)
// Identical to BR42 Q50-53
// ============================================================================
* item[+].linkId = "br45-br"
* item[=].text = "Breast Symptoms"
* item[=].type = #group

* item[=].item[+].linkId = "br45-q50"
* item[=].item[=].text = "Did you have any pain in the area of your affected breast?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q51"
* item[=].item[=].text = "Was the area of your affected breast swollen?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q52"
* item[=].item[=].text = "Was the area of your affected breast oversensitive?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q53"
* item[=].item[=].text = "Have you had skin problems on or in the area of your affected breast (e.g., itchy, dry, flaky)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Endocrine Therapy Symptoms (ET) — Q54-56, Q63-69 (10 items)
// BR45 has 3 additional items compared to BR42 (Q67-69 here vs Q63-66 in BR42)
// ============================================================================
* item[+].linkId = "br45-et"
* item[=].text = "Endocrine Therapy Symptoms"
* item[=].type = #group

* item[=].item[+].linkId = "br45-q54"
* item[=].item[=].text = "Did you sweat excessively?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q55"
* item[=].item[=].text = "Did you have mood swings?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q56"
* item[=].item[=].text = "Did you have dizziness?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Skin / Mucosis Symptoms (SM) — Q57-62 (6 items)
// Identical to BR42 Q57-62
// ============================================================================
* item[+].linkId = "br45-sm"
* item[=].text = "Skin / Mucosis Symptoms"
* item[=].type = #group

* item[=].item[+].linkId = "br45-q57"
* item[=].item[=].text = "Did you have a sore mouth?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q58"
* item[=].item[=].text = "Did you have a reddened mouth?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q59"
* item[=].item[=].text = "Did you have pain in your hands or feet?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q60"
* item[=].item[=].text = "Did you have any redness on your hands or feet?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q61"
* item[=].item[=].text = "Did you have tingling in your hands or feet?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q62"
* item[=].item[=].text = "Did you have numbness in your hands or feet?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Endocrine Therapy Symptoms (ET) — Q63-69 (continued)
// BR45 has 7 items here vs 4 in BR42 (Q63-66); Q67-69 were removed in BR42
// ============================================================================
* item[+].linkId = "br45-et-cont"
* item[=].text = "Endocrine Therapy Symptoms (continued)"
* item[=].type = #group

* item[=].item[+].linkId = "br45-q63"
* item[=].item[=].text = "Did you have problems with your joints?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q64"
* item[=].item[=].text = "Did you have stiff joints?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q65"
* item[=].item[=].text = "Did you have pain in your joints?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q66"
* item[=].item[=].text = "Did you have aching bones?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q67"
* item[=].item[=].text = "Did you gain weight?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q68"
* item[=].item[=].text = "Did you feel depressed because of your hormonal treatment?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q69"
* item[=].item[=].text = "Did you have problems concentrating?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Endocrine Sexual Symptoms (ES) — Q70-73 (4 items)
// BR45 has 4 items vs 3 in BR42 (Q68-70); Q73 was removed in BR42
// NOTE: Q73 text is an approximation — verify against official BR45 document
// ============================================================================
* item[+].linkId = "br45-es"
* item[=].text = "Endocrine Sexual Symptoms"
* item[=].type = #group

* item[=].item[+].linkId = "br45-q70"
* item[=].item[=].text = "Did you have any discomfort in your vagina?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q71"
* item[=].item[=].text = "Did you have pain in your vagina during sexual activity?"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[=].item[=].enableWhen[+].question = "br45-q45"
* item[=].item[=].enableWhen[=].operator = #!=
* item[=].item[=].enableWhen[=].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30#not-at-all

* item[=].item[+].linkId = "br45-q72"
* item[=].item[=].text = "Did you have a dry vagina during sexual activity?"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[=].item[=].enableWhen[+].question = "br45-q45"
* item[=].item[=].enableWhen[=].operator = #!=
* item[=].item[=].enableWhen[=].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30#not-at-all

// NOTE: Q73 was part of Endocrine Sexual scale in BR45; removed in BR42.
// Text below is an approximation — verify against official EORTC BR45 document.
* item[=].item[+].linkId = "br45-q73"
* item[=].item[=].text = "Did you have decreased interest in sex due to endocrine therapy?"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Breast Satisfaction (BS) — Q74-75 (2 items, reverse scored)
// Renumbered to Q71-72 in BR42
// ============================================================================
* item[+].linkId = "br45-bs"
* item[=].text = "Breast Satisfaction"
* item[=].type = #group

* item[=].item[+].linkId = "br45-q74"
* item[=].item[=].text = "Were you satisfied with the cosmetic result of surgery?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br45-q75"
* item[=].item[=].text = "Were you satisfied with the appearance of the skin of your affected breast?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
