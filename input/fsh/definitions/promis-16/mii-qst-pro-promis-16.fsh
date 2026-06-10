Instance: mii-qst-pro-promis-16
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PROMIS-16 (Adults)"
Description: "PROMIS-16 Profile v1.0 - Ultra-short 16-item HRQoL Profile across 8 domains (Edelen et al. 2024, doi:10.1007/s11136-023-03597-6). T-score calculation per Supplement S4 is delegated to a CQL Library (see roadmap 2027)."
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)
* insert PROMIS_Copyright_DE

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16"
* status = #draft
* experimental = true
* language = #en

// TODO: add LOINC code for PROMIS-16 once published in LOINC
* code[+] = $mii-cs-pro-questionnaire-catalogue#promis-promis16 "PROMIS-16 Profile Questionnaire (ultra-short 8-domain profile)"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueReference.reference = "https://doi.org/10.1007/s11136-023-03597-6"
* useContext[=].valueReference.display = "PROMIS-16 Profile (Edelen et al. 2024, Qual Life Res)"

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
// calculatable intentionally false: pattern-based T-score lookup (Supplement S4) delegated to CQL Library
* extension[capabilities].extension[calculatable].valueBoolean = false
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// ===== PHYSICAL FUNCTION DOMAIN =====
* item[+].linkId = "PROMIS-16.PhysicalFunction"
* item[=].type = #group
* item[=].text = "Physical Function"
* item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Körperliche Funktion"

// PF Item 1: PFA21 - Stairs
* item[=].item[+].linkId = "promis-pfa21"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#62826-3 "Are you able to go up and down stairs at a normal pace [PROMIS]"
* item[=].item[=].text = "Are you able to go up and down stairs at a normal pace?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Können Sie in normalem Tempo Treppen hinauf- und hinuntergehen?"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale"

// PF Item 2: PFA23 - 15-min walk
* item[=].item[+].linkId = "promis-pfa23"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#62827-1 "Are you able to go for a walk of at least 15 minutes [PROMIS]"
* item[=].item[=].text = "Are you able to go for a walk of at least 15 minutes?"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Können Sie mindestens 15 Minuten lang spazieren gehen?"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale"

// ===== TODO: 7 remaining domains =====
// - SOC (SRPPER31_CaPS, SRPPER46_CaPS)
// - ANX (EDANX40, EDANX41)
// - DEP (EDDEP29, EDDEP41)
// - SLP (SLEEP25, SLEEP90)  -- siehe S3: gemischte response options (Never→Always + Not at all→Very much)
// - PI  (PAININ9, PAININ31)
// - CF  (PC27, PC-CaPS3R)
// - FTG (HI7, AN3)
//
// Score-Berechnung: Pattern-basierter T-Score-Lookup je Domäne (5×5 = 25 Werte aus Supplement S4)
// wird über CQL Library mii-lib-promis-16 realisiert (analog mii-lib-phq-9, mii-lib-eq-5d).
