Instance: mii-exa-pro-eortc-qlq-c30-response
InstanceOf: mii-pr-pro-questionnaire-response
Title: "MII EXA PRO EORTC QLQ-C30 Response"
Description: "Complete EORTC QLQ-C30 QuestionnaireResponse example with all 30 items and calculated scores"
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-eortc-qlq-c30)
* status = #completed
* subject.reference = "Patient/mii-exa-pro-patient"
* authored = "2024-01-15T10:30:00Z"

// ===== PHYSICAL FUNCTIONING (Q1-5) =====
// Q1: Trouble doing strenuous activities
* item[+].linkId = "qlq-c30-q01"
* item[=].text = "Do you have any trouble doing strenuous activities, like carrying a heavy shopping bag or a suitcase?"
* insert TranslationDE(item[=].text, [["Bereitet es Ihnen Schwierigkeiten, sich körperlich anzustrengen (z.B. eine schwere Einkaufstasche oder einen Koffer zu tragen)?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Wenig"]])

// Q2: Trouble taking a long walk
* item[+].linkId = "qlq-c30-q02"
* item[=].text = "Do you have any trouble taking a long walk?"
* insert TranslationDE(item[=].text, [["Bereitet es Ihnen Schwierigkeiten, einen längeren Spaziergang zu machen?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #quite-a-bit
* item[=].answer.valueCoding.display = "Quite a bit"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Mäßig"]])

// Q3: Trouble taking a short walk outside
* item[+].linkId = "qlq-c30-q03"
* item[=].text = "Do you have any trouble taking a short walk outside of the house?"
* insert TranslationDE(item[=].text, [["Bereitet es Ihnen Schwierigkeiten, eine kurze Strecke außer Haus zu gehen?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Wenig"]])

// Q4: Need to stay in bed or chair during the day
* item[+].linkId = "qlq-c30-q04"
* item[=].text = "Do you need to stay in bed or a chair during the day?"
* insert TranslationDE(item[=].text, [["Müssen Sie tagsüber im Bett liegen oder in einem Sessel sitzen?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// Q5: Need help with eating, dressing, washing, or using the toilet
* item[+].linkId = "qlq-c30-q05"
* item[=].text = "Do you need help with eating, dressing, washing yourself or using the toilet?"
* insert TranslationDE(item[=].text, [["Brauchen Sie Hilfe beim Essen, Anziehen, Waschen oder Benutzen der Toilette?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// ===== ROLE FUNCTIONING (Q6-7) =====
// Q6: Limited in doing work or daily activities
* item[+].linkId = "qlq-c30-q06"
* item[=].text = "Were you limited in doing either your work or other daily activities?"
* insert TranslationDE(item[=].text, [["Waren Sie bei Ihrer Arbeit oder bei anderen tagtäglichen Beschäftigungen eingeschränkt?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Wenig"]])

// Q7: Limited in pursuing hobbies or leisure activities
* item[+].linkId = "qlq-c30-q07"
* item[=].text = "Were you limited in pursuing your hobbies or other leisure time activities?"
* insert TranslationDE(item[=].text, [["Waren Sie bei Ihren Hobbys oder anderen Freizeitbeschäftigungen eingeschränkt?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Wenig"]])

// ===== SYMPTOM ITEMS (Q8-19) =====
// Q8: Short of breath
* item[+].linkId = "qlq-c30-q08"
* item[=].text = "Were you short of breath?"
* insert TranslationDE(item[=].text, [["Waren Sie kurzatmig?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// Q9: Had pain
* item[+].linkId = "qlq-c30-q09"
* item[=].text = "Have you had pain?"
* insert TranslationDE(item[=].text, [["Hatten Sie Schmerzen?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Wenig"]])

// Q10: Need to rest
* item[+].linkId = "qlq-c30-q10"
* item[=].text = "Did you need to rest?"
* insert TranslationDE(item[=].text, [["Mussten Sie sich ausruhen?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #quite-a-bit
* item[=].answer.valueCoding.display = "Quite a bit"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Mäßig"]])

// Q11: Trouble sleeping
* item[+].linkId = "qlq-c30-q11"
* item[=].text = "Have you had trouble sleeping?"
* insert TranslationDE(item[=].text, [["Hatten Sie Schlafstörungen?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Wenig"]])

// Q12: Felt weak
* item[+].linkId = "qlq-c30-q12"
* item[=].text = "Have you felt weak?"
* insert TranslationDE(item[=].text, [["Fühlten Sie sich schwach?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Wenig"]])

// Q13: Lacked appetite
* item[+].linkId = "qlq-c30-q13"
* item[=].text = "Have you lacked appetite?"
* insert TranslationDE(item[=].text, [["Hatten Sie Appetitmangel?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// Q14: Felt nauseated
* item[+].linkId = "qlq-c30-q14"
* item[=].text = "Have you felt nauseated?"
* insert TranslationDE(item[=].text, [["War Ihnen übel?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// Q15: Vomited
* item[+].linkId = "qlq-c30-q15"
* item[=].text = "Have you vomited?"
* insert TranslationDE(item[=].text, [["Haben Sie erbrochen?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// Q16: Been constipated
* item[+].linkId = "qlq-c30-q16"
* item[=].text = "Have you been constipated?"
* insert TranslationDE(item[=].text, [["Hatten Sie Verstopfung?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// Q17: Had diarrhea
* item[+].linkId = "qlq-c30-q17"
* item[=].text = "Have you had diarrhea?"
* insert TranslationDE(item[=].text, [["Hatten Sie Durchfall?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// Q18: Were tired
* item[+].linkId = "qlq-c30-q18"
* item[=].text = "Were you tired?"
* insert TranslationDE(item[=].text, [["Waren Sie müde?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Wenig"]])

// Q19: Pain interfered with daily activities
* item[+].linkId = "qlq-c30-q19"
* item[=].text = "Did pain interfere with your daily activities?"
* insert TranslationDE(item[=].text, [["Fühlten Sie sich durch Schmerzen in Ihrem alltäglichen Leben beeinträchtigt?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// ===== COGNITIVE FUNCTIONING (Q20, Q25) =====
// Q20: Difficulty concentrating
* item[+].linkId = "qlq-c30-q20"
* item[=].text = "Have you had difficulty in concentrating on things, like reading a newspaper or watching television?"
* insert TranslationDE(item[=].text, [["Hatten Sie Schwierigkeiten, sich auf etwas zu konzentrieren, z.B. auf das Zeitunglesen oder das Fernsehen?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// ===== EMOTIONAL FUNCTIONING (Q21-24) =====
// Q21: Feel tense
* item[+].linkId = "qlq-c30-q21"
* item[=].text = "Did you feel tense?"
* insert TranslationDE(item[=].text, [["Fühlten Sie sich angespannt?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Wenig"]])

// Q22: Worry
* item[+].linkId = "qlq-c30-q22"
* item[=].text = "Did you worry?"
* insert TranslationDE(item[=].text, [["Haben Sie sich Sorgen gemacht?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Wenig"]])

// Q23: Feel irritable
* item[+].linkId = "qlq-c30-q23"
* item[=].text = "Did you feel irritable?"
* insert TranslationDE(item[=].text, [["Waren Sie reizbar?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// Q24: Feel depressed
* item[+].linkId = "qlq-c30-q24"
* item[=].text = "Did you feel depressed?"
* insert TranslationDE(item[=].text, [["Fühlten Sie sich niedergeschlagen?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// Q25: Difficulty remembering things
* item[+].linkId = "qlq-c30-q25"
* item[=].text = "Have you had difficulty remembering things?"
* insert TranslationDE(item[=].text, [["Hatten Sie Schwierigkeiten, sich an Dinge zu erinnern?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// ===== SOCIAL FUNCTIONING (Q26-27) =====
// Q26: Physical condition interfered with family life
* item[+].linkId = "qlq-c30-q26"
* item[=].text = "Has your physical condition or medical treatment interfered with your family life?"
* insert TranslationDE(item[=].text, [["Hat Ihr körperlicher Zustand oder Ihre medizinische Behandlung Ihr Familienleben beeinträchtigt?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// Q27: Physical condition interfered with social activities
* item[+].linkId = "qlq-c30-q27"
* item[=].text = "Has your physical condition or medical treatment interfered with your social activities?"
* insert TranslationDE(item[=].text, [["Hat Ihr körperlicher Zustand oder Ihre medizinische Behandlung Ihr Zusammensein oder Ihre gemeinsamen Unternehmungen mit anderen Menschen beeinträchtigt?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #a-little
* item[=].answer.valueCoding.display = "A little"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Wenig"]])

// ===== FINANCIAL DIFFICULTIES (Q28) =====
// Q28: Financial difficulties
* item[+].linkId = "qlq-c30-q28"
* item[=].text = "Has your physical condition or medical treatment caused you financial difficulties?"
* insert TranslationDE(item[=].text, [["Hat Ihr körperlicher Zustand oder Ihre medizinische Behandlung für Sie finanzielle Schwierigkeiten mit sich gebracht?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #not-at-all
* item[=].answer.valueCoding.display = "Not at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Überhaupt nicht"]])

// ===== GLOBAL HEALTH STATUS (Q29-30) - 7-point scale =====
// Q29: Overall health during past week
* item[+].linkId = "qlq-c30-q29"
* item[=].text = "How would you rate your overall health during the past week?"
* insert TranslationDE(item[=].text, [["Wie würden Sie insgesamt Ihren Gesundheitszustand während der letzten Woche einschätzen?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #5-very-good 
* item[=].answer.valueCoding.display = "5 - Very good"
* insert TranslationDE(item[=].answer.valueCoding.display, [["5 - Sehr gut"]])

// Q30: Overall quality of life during past week
* item[+].linkId = "qlq-c30-q30"
* item[=].text = "How would you rate your overall quality of life during the past week?"
* insert TranslationDE(item[=].text, [["Wie würden Sie insgesamt Ihre Lebensqualität während der letzten Woche einschätzen?"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* item[=].answer.valueCoding.code = #5-very-good
* item[=].answer.valueCoding.display = "5 - Very good"
* insert TranslationDE(item[=].answer.valueCoding.display, [["5 - Sehr gut"]])

