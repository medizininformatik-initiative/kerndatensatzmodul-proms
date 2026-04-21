// EORTC QLQ-BR23 Questionnaire — Breast Cancer Module (Original)
// Source: EORTC QLQ-BR23 (1996), supplement to QLQ-C30
// Items Q1-Q23, grouped by scale
//
// Original 23-item breast cancer module. Superseded by BR42 (Phase IV, 2024)
// but still widely used for historical data compatibility.
// Uses same 4-point answer scale as QLQ-C30 (reuses ValueSet)
// German translations from the AXSANA study

Instance: mii-qst-pro-eortc-qlq-br23
InstanceOf: MII_PR_PRO_Questionnaire
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-eortc-qlq-br23"
* name = "MII_QST_PRO_EORTC_QLQ_BR23"
* title = "EORTC QLQ-BR23 Breast Cancer Module (Original)"
* code[+] = $mii-cs-pro-questionnaire-catalogue#eortc-qlq-br23 "EORTC QLQ-BR23 Breast Cancer Module (Original)"
* status = #active
* experimental = false
* description = "EORTC QLQ-BR23: Original 23-item breast cancer quality of life module (1996). Designed as supplement to the QLQ-C30. Superseded by QLQ-BR42 (Phase IV, 2024) but still widely used in clinical practice and for longitudinal data compatibility. Contains 8 scales: Systemic Therapy Side Effects, Upset by Hair Loss, Body Image, Future Perspective, Sexual Functioning, Sexual Enjoyment, Arm Symptoms, Breast Symptoms."
* copyright = "Copyright EORTC. Available free of charge for academic use."

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* extension[=].valueBoolean = true

// ============================================================================
// Systemic Therapy Side Effects (BRST) — Q1-4, Q6-8 (7 items)
// ============================================================================
* item[+].linkId = "br23-brst"
* item[=].text = "Systemic Therapy Side Effects"
* item[=].type = #group

* item[=].item[+].linkId = "br23-q01"
* item[=].item[=].text = "Did you have a dry mouth?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Hatten Sie einen trockenen Mund?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br23-q02"
* item[=].item[=].text = "Did food and drink taste different from usual?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "War Ihr Geschmacksempfinden beim Essen oder Trinken verändert?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br23-q03"
* item[=].item[=].text = "Were your eyes painful, irritated or watery?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Schmerzten Ihre Augen, waren diese gereizt oder tränten sie?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br23-q04"
* item[=].item[=].text = "Have you lost any hair?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Haben Sie Haarausfall?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Upset by Hair Loss (BRHL) — Q5 (1 item, conditional on Q4)
// ============================================================================
* item[+].linkId = "br23-brhl"
* item[=].text = "Upset by Hair Loss"
* item[=].type = #group

* item[=].item[+].linkId = "br23-q05"
* item[=].item[=].text = "Were you upset by the loss of your hair?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Hat Sie der Haarausfall belastet?"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[=].item[=].enableWhen[+].question = "br23-q04"
* item[=].item[=].enableWhen[=].operator = #!=
* item[=].item[=].enableWhen[=].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30#not-at-all

// ============================================================================
// Systemic Therapy Side Effects (BRST) — Q6-8 (continued)
// ============================================================================
* item[+].linkId = "br23-brst-cont"
* item[=].text = "Systemic Therapy Side Effects (continued)"
* item[=].type = #group

* item[=].item[+].linkId = "br23-q06"
* item[=].item[=].text = "Did you feel ill or unwell?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Fühlten Sie sich krank oder unwohl?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br23-q07"
* item[=].item[=].text = "Did you have hot flushes?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Hatten Sie Hitzewallungen?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br23-q08"
* item[=].item[=].text = "Did you have headaches?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Hatten Sie Kopfschmerzen?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Body Image (BRBI) — Q9-12 (4 items)
// ============================================================================
* item[+].linkId = "br23-brbi"
* item[=].text = "Body Image"
* item[=].type = #group

* item[=].item[+].linkId = "br23-q09"
* item[=].item[=].text = "Have you felt physically less attractive as a result of your disease or treatment?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Fühlten Sie sich wegen Ihrer Erkrankung oder Behandlung körperlich weniger anziehend?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br23-q10"
* item[=].item[=].text = "Have you been feeling less feminine as a result of your disease or treatment?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Fühlten Sie sich wegen Ihrer Erkrankung oder Behandlung weniger weiblich?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br23-q11"
* item[=].item[=].text = "Did you find it difficult to look at yourself naked?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Fanden Sie es schwierig, sich nackt anzusehen?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br23-q12"
* item[=].item[=].text = "Have you been dissatisfied with your body?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Waren Sie mit Ihrem Körper unzufrieden?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Future Perspective (BRFU) — Q13 (1 item)
// ============================================================================
* item[+].linkId = "br23-brfu"
* item[=].text = "Future Perspective"
* item[=].type = #group

* item[=].item[+].linkId = "br23-q13"
* item[=].item[=].text = "Were you worried about your health in the future?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Waren Sie wegen Ihres zukünftigen Gesundheitszustandes besorgt?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Sexual Functioning (BRSEF) — Q14-15 (2 items, reverse scored)
// ============================================================================
* item[+].linkId = "br23-brsef"
* item[=].text = "Sexual Functioning"
* item[=].type = #group

* item[=].item[+].linkId = "br23-q14"
* item[=].item[=].text = "To what extent were you interested in sex?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Wie sehr waren Sie an Sex interessiert?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br23-q15"
* item[=].item[=].text = "To what extent were you sexually active (with or without intercourse)?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Wie sehr waren Sie sexuell aktiv (mit oder ohne Geschlechtsverkehr)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Sexual Enjoyment (BRSEE) — Q16 (1 item, reverse scored, conditional on Q15)
// ============================================================================
* item[+].linkId = "br23-brsee"
* item[=].text = "Sexual Enjoyment"
* item[=].type = #group

* item[=].item[+].linkId = "br23-q16"
* item[=].item[=].text = "To what extent was sex enjoyable for you?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Wie weit hatten Sie Freude an Sex?"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[=].item[=].enableWhen[+].question = "br23-q15"
* item[=].item[=].enableWhen[=].operator = #!=
* item[=].item[=].enableWhen[=].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30#not-at-all

// ============================================================================
// Arm Symptoms (BRAS) — Q17-19 (3 items)
// ============================================================================
* item[+].linkId = "br23-bras"
* item[=].text = "Arm Symptoms"
* item[=].type = #group

* item[=].item[+].linkId = "br23-q17"
* item[=].item[=].text = "Did you have any pain in your arm or shoulder?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Hatten Sie Schmerzen in Arm oder Schulter?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br23-q18"
* item[=].item[=].text = "Did you have a swollen arm or hand?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "War Ihr Arm oder Ihre Hand geschwollen?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br23-q19"
* item[=].item[=].text = "Was it difficult to raise your arm or to move it sideways?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "War das Heben oder Seitwärtsbewegen des Arms erschwert?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

// ============================================================================
// Breast Symptoms (BRBS) — Q20-23 (4 items)
// ============================================================================
* item[+].linkId = "br23-brbs"
* item[=].text = "Breast Symptoms"
* item[=].type = #group

* item[=].item[+].linkId = "br23-q20"
* item[=].item[=].text = "Did you have any pain in the area of your affected breast?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Hatten Sie im Bereich der betroffenen Brust Schmerzen?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br23-q21"
* item[=].item[=].text = "Was the area of your affected breast swollen?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "War der Bereich Ihrer betroffenen Brust angeschwollen?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br23-q22"
* item[=].item[=].text = "Was the area of your affected breast oversensitive?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "War der Bereich der betroffenen Brust überempfindlich?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"

* item[=].item[+].linkId = "br23-q23"
* item[=].item[=].text = "Have you had skin problems on or in the area of your affected breast (e.g., itchy, dry, flaky)?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Hatten Sie Hautprobleme im Bereich der betroffenen Brust (z. B. juckende, trockene oder schuppende Haut)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
