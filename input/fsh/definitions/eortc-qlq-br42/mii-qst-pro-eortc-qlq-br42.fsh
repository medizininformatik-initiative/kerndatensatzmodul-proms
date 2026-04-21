// EORTC QLQ-BR42 Questionnaire — Breast Cancer Module
// Source: BR42-Module-English-FINAL.doc (EORTC, April 2024)
// Supplement to QLQ-C30 (Q1-30), items Q31-72
//
// Uses same 4-point answer scale as QLQ-C30 (reuses ValueSet)
// Scoring: linear transformation 0-100 (same formulas as C30)
// TODO: German translations from official EORTC German BR42

Instance: mii-qst-pro-eortc-qlq-br42
InstanceOf: MII_PR_PRO_Questionnaire
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-eortc-qlq-br42"
* name = "MII_QST_PRO_EORTC_QLQ_BR42"
* title = "EORTC QLQ-BR42 Breast Cancer Module"
* code[+] = $mii-cs-pro-questionnaire-catalogue#eortc-qlq-br42 "EORTC QLQ-BR42 Breast Cancer Module (Update of BR23)"
* status = #draft
* experimental = true
* description = "EORTC QLQ-BR42: Breast cancer quality of life module (42 items, Q31-72). Phase IV validated update of the QLQ-BR23. Designed as supplement to the QLQ-C30. Contains all 23 original BR23 items plus 19 new items for modern breast cancer therapies."
* copyright = "Copyright EORTC. Available free of charge for academic use."

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* extension[=].valueBoolean = true

// ============================================================================
// Systemic Therapy Side Effects (SYS) — Q31-34, Q36-38 (7 items)
// ============================================================================
* item[+].linkId = "br42-sys"
* item[=].text = "Systemic Therapy Side Effects"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q31"
* item[=].item[=].text = "Did you have a dry mouth?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q32"
* item[=].item[=].text = "Did food and drink taste different from usual?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q33"
* item[=].item[=].text = "Were your eyes painful, irritated or watery?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q34"
* item[=].item[=].text = "Have you lost any hair?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Upset by Hair Loss (HU) — Q35 (1 item, conditional on Q34)
// ============================================================================
* item[+].linkId = "br42-hu"
* item[=].text = "Upset by Hair Loss"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q35"
* item[=].item[=].text = "Were you upset by the loss of your hair?"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[=].item[=].enableWhen[+].question = "br42-q34"
* item[=].item[=].enableWhen[=].operator = #!=
* item[=].item[=].enableWhen[=].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30#not-at-all

// ============================================================================
// Systemic Therapy Side Effects (SYS) — Q36-38 (continued)
// ============================================================================
* item[+].linkId = "br42-sys-cont"
* item[=].text = "Systemic Therapy Side Effects (continued)"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q36"
* item[=].item[=].text = "Did you feel ill or unwell?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q37"
* item[=].item[=].text = "Did you have hot flushes?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q38"
* item[=].item[=].text = "Did you have headaches?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Body Image (BI) — Q39-42 (4 items)
// ============================================================================
* item[+].linkId = "br42-bi"
* item[=].text = "Body Image"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q39"
* item[=].item[=].text = "Have you felt physically less attractive as a result of your disease or treatment?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q40"
* item[=].item[=].text = "Have you been feeling less feminine as a result of your disease or treatment?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q41"
* item[=].item[=].text = "Did you find it difficult to look at yourself naked?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q42"
* item[=].item[=].text = "Have you been dissatisfied with your body?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Future Perspective (FU) — Q43 (1 item)
// ============================================================================
* item[+].linkId = "br42-fu"
* item[=].text = "Future Perspective"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q43"
* item[=].item[=].text = "Were you worried about your health in the future?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Sexual Functioning (SX) — Q44-45 (2 items, reverse scored)
// Recall: past 4 weeks
// ============================================================================
* item[+].linkId = "br42-sx"
* item[=].text = "Sexual Functioning"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q44"
* item[=].item[=].text = "To what extent were you interested in sex?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q45"
* item[=].item[=].text = "To what extent were you sexually active (with or without intercourse)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Sexual Enjoyment (SE) — Q46 (1 item, reverse scored, conditional)
// ============================================================================
* item[+].linkId = "br42-se"
* item[=].text = "Sexual Enjoyment"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q46"
* item[=].item[=].text = "To what extent was sex enjoyable for you?"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[=].item[=].enableWhen[+].question = "br42-q45"
* item[=].item[=].enableWhen[=].operator = #!=
* item[=].item[=].enableWhen[=].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30#not-at-all

// ============================================================================
// Arm Symptoms (ARM) — Q47-49 (3 items)
// ============================================================================
* item[+].linkId = "br42-arm"
* item[=].text = "Arm Symptoms"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q47"
* item[=].item[=].text = "Did you have any pain in your arm or shoulder?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q48"
* item[=].item[=].text = "Did you have a swollen arm or hand?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q49"
* item[=].item[=].text = "Was it difficult to raise your arm or to move it sideways?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Breast Symptoms (BR) — Q50-53 (4 items)
// ============================================================================
* item[+].linkId = "br42-br"
* item[=].text = "Breast Symptoms"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q50"
* item[=].item[=].text = "Did you have any pain in the area of your affected breast?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q51"
* item[=].item[=].text = "Was the area of your affected breast swollen?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q52"
* item[=].item[=].text = "Was the area of your affected breast oversensitive?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q53"
* item[=].item[=].text = "Have you had skin problems on or in the area of your affected breast (e.g., itchy, dry, flaky)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Endocrine Therapy Symptoms (ET) — Q54-56, Q63-66 (7 items, NEW)
// ============================================================================
* item[+].linkId = "br42-et"
* item[=].text = "Endocrine Therapy Symptoms"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q54"
* item[=].item[=].text = "Did you sweat excessively?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q55"
* item[=].item[=].text = "Did you have mood swings?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q56"
* item[=].item[=].text = "Did you have dizziness?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Skin / Mucosis Symptoms (SM) — Q57-62 (6 items, NEW)
// ============================================================================
* item[+].linkId = "br42-sm"
* item[=].text = "Skin / Mucosis Symptoms"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q57"
* item[=].item[=].text = "Did you have a sore mouth?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q58"
* item[=].item[=].text = "Did you have a reddened mouth?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q59"
* item[=].item[=].text = "Did you have pain in your hands or feet?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q60"
* item[=].item[=].text = "Did you have any redness on your hands or feet?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q61"
* item[=].item[=].text = "Did you have tingling in your hands or feet?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q62"
* item[=].item[=].text = "Did you have numbness in your hands or feet?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Endocrine Therapy Symptoms (ET) — Q63-66 (continued, NEW)
// ============================================================================
* item[+].linkId = "br42-et-cont"
* item[=].text = "Endocrine Therapy Symptoms (continued)"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q63"
* item[=].item[=].text = "Did you have problems with your joints?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q64"
* item[=].item[=].text = "Did you have stiff joints?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q65"
* item[=].item[=].text = "Did you have pain in your joints?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q66"
* item[=].item[=].text = "Did you have aching bones?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Weight Gain (WG) — Q67 (1 item, NEW)
// ============================================================================
* item[+].linkId = "br42-wg"
* item[=].text = "Weight Gain"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q67"
* item[=].item[=].text = "Did you gain weight?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Endocrine Sexual Symptoms (ES) — Q68-70 (3 items, NEW)
// Q69-70 conditional on sexual activity
// ============================================================================
* item[+].linkId = "br42-es"
* item[=].text = "Endocrine Sexual Symptoms"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q68"
* item[=].item[=].text = "Did you have any discomfort in your vagina?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q69"
* item[=].item[=].text = "Did you have pain in your vagina during sexual activity?"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[=].item[=].enableWhen[+].question = "br42-q45"
* item[=].item[=].enableWhen[=].operator = #!=
* item[=].item[=].enableWhen[=].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30#not-at-all

* item[=].item[+].linkId = "br42-q70"
* item[=].item[=].text = "Did you have a dry vagina during sexual activity?"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[=].item[=].enableWhen[+].question = "br42-q45"
* item[=].item[=].enableWhen[=].operator = #!=
* item[=].item[=].enableWhen[=].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30#not-at-all

// ============================================================================
// Breast Satisfaction (BS) — Q71-72 (2 items, reverse scored, NEW)
// ============================================================================
* item[+].linkId = "br42-bs"
* item[=].text = "Breast Satisfaction"
* item[=].type = #group

* item[=].item[+].linkId = "br42-q71"
* item[=].item[=].text = "Were you satisfied with the cosmetic result of surgery?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br42-q72"
* item[=].item[=].text = "Were you satisfied with the appearance of the skin of your affected breast?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
