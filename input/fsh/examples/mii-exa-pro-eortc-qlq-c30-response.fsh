Instance: mii-exa-pro-eortc-qlq-c30-response
InstanceOf: mii-pr-pro-questionnaire-response
Title: "MII EXA PRO EORTC QLQ-C30 Response"
Description: "Complete EORTC QLQ-C30 QuestionnaireResponse example with all 30 items and calculated scores"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-eortc-qlq-c30"
* status = #completed
* subject.reference = "Patient/mii-exa-pro-patient"
* authored = "2024-01-15T10:30:00Z"

// ===== PHYSICAL FUNCTIONING (Q1-5) =====
// Q1: Trouble doing strenuous activities
* item[+].linkId = "qlq-c30-q01"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"

// Q2: Trouble taking a long walk
* item[+].linkId = "qlq-c30-q02"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #quite-a-bit
* item[=].answer.valueCoding.display = "Quite a bit"

// Q3: Trouble taking a short walk outside
* item[+].linkId = "qlq-c30-q03"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"

// Q4: Need to stay in bed or chair during the day
* item[+].linkId = "qlq-c30-q04"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// Q5: Need help with eating, dressing, washing, or using the toilet
* item[+].linkId = "qlq-c30-q05"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// ===== ROLE FUNCTIONING (Q6-7) =====
// Q6: Limited in doing work or daily activities
* item[+].linkId = "qlq-c30-q06"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"

// Q7: Limited in pursuing hobbies or leisure activities
* item[+].linkId = "qlq-c30-q07"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"

// ===== SYMPTOM ITEMS (Q8-19) =====
// Q8: Short of breath
* item[+].linkId = "qlq-c30-q08"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// Q9: Had pain
* item[+].linkId = "qlq-c30-q09"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"

// Q10: Need to rest
* item[+].linkId = "qlq-c30-q10"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #quite-a-bit
* item[=].answer.valueCoding.display = "Quite a bit"

// Q11: Trouble sleeping
* item[+].linkId = "qlq-c30-q11"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"

// Q12: Felt weak
* item[+].linkId = "qlq-c30-q12"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"

// Q13: Lacked appetite
* item[+].linkId = "qlq-c30-q13"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// Q14: Felt nauseated
* item[+].linkId = "qlq-c30-q14"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// Q15: Vomited
* item[+].linkId = "qlq-c30-q15"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// Q16: Been constipated
* item[+].linkId = "qlq-c30-q16"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// Q17: Had diarrhea
* item[+].linkId = "qlq-c30-q17"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// Q18: Were tired
* item[+].linkId = "qlq-c30-q18"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"

// Q19: Pain interfered with daily activities
* item[+].linkId = "qlq-c30-q19"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// ===== COGNITIVE FUNCTIONING (Q20, Q25) =====
// Q20: Difficulty concentrating
* item[+].linkId = "qlq-c30-q20"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// ===== EMOTIONAL FUNCTIONING (Q21-24) =====
// Q21: Feel tense
* item[+].linkId = "qlq-c30-q21"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"

// Q22: Worry
* item[+].linkId = "qlq-c30-q22"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"

// Q23: Feel irritable
* item[+].linkId = "qlq-c30-q23"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// Q24: Feel depressed
* item[+].linkId = "qlq-c30-q24"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// Q25: Difficulty remembering things
* item[+].linkId = "qlq-c30-q25"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// ===== SOCIAL FUNCTIONING (Q26-27) =====
// Q26: Physical condition interfered with family life
* item[+].linkId = "qlq-c30-q26"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// Q27: Physical condition interfered with social activities
* item[+].linkId = "qlq-c30-q27"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"

// ===== FINANCIAL DIFFICULTIES (Q28) =====
// Q28: Financial difficulties
* item[+].linkId = "qlq-c30-q28"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"

// ===== GLOBAL HEALTH STATUS (Q29-30) - 7-point scale =====
// Q29: Overall health during past week
* item[+].linkId = "qlq-c30-q29"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #5-very-good 
* item[=].answer.valueCoding.display = "5 - Very good"

// Q30: Overall quality of life during past week
* item[+].linkId = "qlq-c30-q30"
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #5-very-good
* item[=].answer.valueCoding.display = "5 - Very good"

