Instance: mii-qst-pro-eortc-qlq-c30
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO EORTC QLQ-C30"
Description: "EORTC QLQ-C30 Version 3.0 Quality of Life Questionnaire - Complete implementation with all 30 items and 15 scale scores"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-eortc-qlq-c30"
* status = #active
* experimental = true
* language = #en
* title = "EORTC QLQ-C30 Quality of Life Questionnaire Version 3.0"
* publisher = "Medizininformatik Initiative (MII)"
* copyright = "© Copyright 1995 EORTC Quality of Life Group. All rights reserved. Version 3.0"
* code[snomed] = $SCT#273446001 "European Organisation for Research and Treatment of Cancer - Quality of Life questionnaire (assessment scale)"
* code[mii] = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue#eortc-qlq-c30 "EORTC QLQ-C30 Quality of Life Questionnaire"

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = false

// ===== CONTAINED CODESYSTEM =====

// ===== CONTAINED VALUESETS =====

// Introduction text
* item[+].linkId = "QLQ-C30.Introduction"
* item[=].type = #display
* item[=].text = "We are interested in some things about you and your health. Please answer all of the questions yourself by circling the number that best applies to you. There are no 'right' or 'wrong' answers. The information that you provide will remain strictly confidential."

// Section: During the past week (Questions 1-28 with 4-point scale)
* item[+].linkId = "QLQ-C30.Section1"
* item[=].type = #display
* item[=].text = "During the past week:"

// Q1-5: Physical Functioning (PF)
* item[+].linkId = "qlq-c30-q01"
* item[=].type = #choice
* item[=].prefix = "1"
* item[=].text = "Do you have any trouble doing strenuous activities, like carrying a heavy shopping bag or a suitcase?"
* insert TranslationDE(item[=].text, [["Bereitet es Ihnen Schwierigkeiten, sich körperlich anzustrengen (z.B. eine schwere Einkaufstasche oder einen Koffer zu tragen)?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

* item[+].linkId = "qlq-c30-q02"
* item[=].type = #choice
* item[=].prefix = "2"
* item[=].text = "Do you have any trouble taking a long walk?"
* insert TranslationDE(item[=].text, [["Bereitet es Ihnen Schwierigkeiten, einen längeren Spaziergang zu machen?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

* item[+].linkId = "qlq-c30-q03"
* item[=].type = #choice
* item[=].prefix = "3"
* item[=].text = "Do you have any trouble taking a short walk outside of the house?"
* insert TranslationDE(item[=].text, [["Bereitet es Ihnen Schwierigkeiten, eine kurze Strecke außer Haus zu gehen?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

* item[+].linkId = "qlq-c30-q04"
* item[=].type = #choice
* item[=].prefix = "4"
* item[=].text = "Do you need to stay in bed or a chair during the day?"
* insert TranslationDE(item[=].text, [["Müssen Sie tagsüber im Bett liegen oder in einem Sessel sitzen?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

* item[+].linkId = "qlq-c30-q05"
* item[=].type = #choice
* item[=].prefix = "5"
* item[=].text = "Do you need help with eating, dressing, washing yourself or using the toilet?"
* insert TranslationDE(item[=].text, [["Brauchen Sie Hilfe beim Essen, Anziehen, Waschen oder Benutzen der Toilette?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q6-7: Role Functioning (RF)
* item[+].linkId = "qlq-c30-q06"
* item[=].type = #choice
* item[=].prefix = "6"
* item[=].text = "Were you limited in doing either your work or other daily activities?"
* insert TranslationDE(item[=].text, [["Waren Sie bei Ihrer Arbeit oder bei anderen tagtäglichen Beschäftigungen eingeschränkt?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

* item[+].linkId = "qlq-c30-q07"
* item[=].type = #choice
* item[=].prefix = "7"
* item[=].text = "Were you limited in pursuing your hobbies or other leisure time activities?"
* insert TranslationDE(item[=].text, [["Waren Sie bei Ihren Hobbys oder anderen Freizeitbeschäftigungen eingeschränkt?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q8: Dyspnoea (DY) - Single item
* item[+].linkId = "qlq-c30-q08"
* item[=].type = #choice
* item[=].prefix = "8"
* item[=].text = "Were you short of breath?"
* insert TranslationDE(item[=].text, [["Waren Sie kurzatmig?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q9: Pain (PA) - Part 1
* item[+].linkId = "qlq-c30-q09"
* item[=].type = #choice
* item[=].prefix = "9"
* item[=].text = "Have you had pain?"
* insert TranslationDE(item[=].text, [["Hatten Sie Schmerzen?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q10: Fatigue (FA) - Part 1
* item[+].linkId = "qlq-c30-q10"
* item[=].type = #choice
* item[=].prefix = "10"
* item[=].text = "Did you need to rest?"
* insert TranslationDE(item[=].text, [["Mussten Sie sich ausruhen?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q11: Insomnia (SL) - Single item
* item[+].linkId = "qlq-c30-q11"
* item[=].type = #choice
* item[=].prefix = "11"
* item[=].text = "Have you had trouble sleeping?"
* insert TranslationDE(item[=].text, [["Hatten Sie Schlafstörungen?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q12: Fatigue (FA) - Part 2
* item[+].linkId = "qlq-c30-q12"
* item[=].type = #choice
* item[=].prefix = "12"
* item[=].text = "Have you felt weak?"
* insert TranslationDE(item[=].text, [["Fühlten Sie sich schwach?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q13: Appetite Loss (AP) - Single item
* item[+].linkId = "qlq-c30-q13"
* item[=].type = #choice
* item[=].prefix = "13"
* item[=].text = "Have you lacked appetite?"
* insert TranslationDE(item[=].text, [["Hatten Sie Appetitmangel?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q14-15: Nausea and Vomiting (NV)
* item[+].linkId = "qlq-c30-q14"
* item[=].type = #choice
* item[=].prefix = "14"
* item[=].text = "Have you felt nauseated?"
* insert TranslationDE(item[=].text, [["War Ihnen übel?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

* item[+].linkId = "qlq-c30-q15"
* item[=].type = #choice
* item[=].prefix = "15"
* item[=].text = "Have you vomited?"
* insert TranslationDE(item[=].text, [["Haben Sie erbrochen?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q16: Constipation (CO) - Single item
* item[+].linkId = "qlq-c30-q16"
* item[=].type = #choice
* item[=].prefix = "16"
* item[=].text = "Have you been constipated?"
* insert TranslationDE(item[=].text, [["Hatten Sie Verstopfung?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q17: Diarrhoea (DI) - Single item
* item[+].linkId = "qlq-c30-q17"
* item[=].type = #choice
* item[=].prefix = "17"
* item[=].text = "Have you had diarrhea?"
* insert TranslationDE(item[=].text, [["Hatten Sie Durchfall?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q18: Fatigue (FA) - Part 3
* item[+].linkId = "qlq-c30-q18"
* item[=].type = #choice
* item[=].prefix = "18"
* item[=].text = "Were you tired?"
* insert TranslationDE(item[=].text, [["Waren Sie müde?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q19: Pain (PA) - Part 2
* item[+].linkId = "qlq-c30-q19"
* item[=].type = #choice
* item[=].prefix = "19"
* item[=].text = "Did pain interfere with your daily activities?"
* insert TranslationDE(item[=].text, [["Fühlten Sie sich durch Schmerzen in Ihrem alltäglichen Leben beeinträchtigt?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q20: Cognitive Functioning (CF) - Part 1
* item[+].linkId = "qlq-c30-q20"
* item[=].type = #choice
* item[=].prefix = "20"
* item[=].text = "Have you had difficulty in concentrating on things, like reading a newspaper or watching television?"
* insert TranslationDE(item[=].text, [["Hatten Sie Schwierigkeiten, sich auf etwas zu konzentrieren, z.B. auf das Zeitunglesen oder das Fernsehen?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q21-24: Emotional Functioning (EF)
* item[+].linkId = "qlq-c30-q21"
* item[=].type = #choice
* item[=].prefix = "21"
* item[=].text = "Did you feel tense?"
* insert TranslationDE(item[=].text, [["Fühlten Sie sich angespannt?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

* item[+].linkId = "qlq-c30-q22"
* item[=].type = #choice
* item[=].prefix = "22"
* item[=].text = "Did you worry?"
* insert TranslationDE(item[=].text, [["Haben Sie sich Sorgen gemacht?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

* item[+].linkId = "qlq-c30-q23"
* item[=].type = #choice
* item[=].prefix = "23"
* item[=].text = "Did you feel irritable?"
* insert TranslationDE(item[=].text, [["Waren Sie reizbar?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

* item[+].linkId = "qlq-c30-q24"
* item[=].type = #choice
* item[=].prefix = "24"
* item[=].text = "Did you feel depressed?"
* insert TranslationDE(item[=].text, [["Fühlten Sie sich niedergeschlagen?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q25: Cognitive Functioning (CF) - Part 2
* item[+].linkId = "qlq-c30-q25"
* item[=].type = #choice
* item[=].prefix = "25"
* item[=].text = "Have you had difficulty remembering things?"
* insert TranslationDE(item[=].text, [["Hatten Sie Schwierigkeiten, sich an Dinge zu erinnern?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q26-27: Social Functioning (SF)
* item[+].linkId = "qlq-c30-q26"
* item[=].type = #choice
* item[=].prefix = "26"
* item[=].text = "Has your physical condition or medical treatment interfered with your family life?"
* insert TranslationDE(item[=].text, [["Hat Ihr körperlicher Zustand oder Ihre medizinische Behandlung Ihr Familienleben beeinträchtigt?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

* item[+].linkId = "qlq-c30-q27"
* item[=].type = #choice
* item[=].prefix = "27"
* item[=].text = "Has your physical condition or medical treatment interfered with your social activities?"
* insert TranslationDE(item[=].text, [["Hat Ihr körperlicher Zustand oder Ihre medizinische Behandlung Ihr Zusammensein oder Ihre gemeinsamen Unternehmungen mit anderen Menschen beeinträchtigt?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Q28: Financial Difficulties (FI) - Single item
* item[+].linkId = "qlq-c30-q28"
* item[=].type = #choice
* item[=].prefix = "28"
* item[=].text = "Has your physical condition or medical treatment caused you financial difficulties?"
* insert TranslationDE(item[=].text, [["Hat Ihr körperlicher Zustand oder Ihre medizinische Behandlung für Sie finanzielle Schwierigkeiten mit sich gebracht?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-4pt

// Section: Global health status (Questions 29-30 with 7-point scale)
* item[+].linkId = "QLQ-C30.Section2"
* item[=].type = #display
* item[=].text = "For the following questions please circle the number between 1 and 7 that best applies to you"

// Q29-30: Global Health Status/QoL (QL)
* item[+].linkId = "qlq-c30-q29"
* item[=].type = #choice
* item[=].prefix = "29"
* item[=].text = "How would you rate your overall health during the past week?"
* insert TranslationDE(item[=].text, [["Wie würden Sie insgesamt Ihren Gesundheitszustand während der letzten Woche einschätzen?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-7pt

* item[+].linkId = "qlq-c30-q30"
* item[=].type = #choice
* item[=].prefix = "30"
* item[=].text = "How would you rate your overall quality of life during the past week?"
* insert TranslationDE(item[=].text, [["Wie würden Sie insgesamt Ihre Lebensqualität während der letzten Woche einschätzen?"]])
* item[=].answerValueSet = $mii-vs-pro-eortc-qlq-c30-scale-7pt

// ===== CALCULATED SCORES SECTION =====
* item[+].linkId = "QLQ-C30.Scores"
* item[=].type = #group
* item[=].text = "Calculated Scores (0-100 scale)"
* insert TranslationDE(item[=].text, [["Berechnete Scores (Skala 0–100)"]])

// Functional Scales (higher=better): Formula = (1 - (RS-1)/range) × 100
* item[=].item[+].linkId = "score-pf"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Physical Functioning Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Körperliche Funktion"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(1 - (((%resource.item.where(linkId.matches('^qlq-c30-q0[1-5]$')).answer.value.weight().sum()) / 5) - 1) / 3) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

* item[=].item[+].linkId = "score-rf"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Role Functioning Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Rollenfunktion"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(1 - (((%resource.item.where(linkId='qlq-c30-q06' or linkId='qlq-c30-q07').answer.value.weight().sum()) / 2) - 1) / 3) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

* item[=].item[+].linkId = "score-ef"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Emotional Functioning Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Emotionale Funktion"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(1 - (((%resource.item.where(linkId.matches('^qlq-c30-q2[1-4]$')).answer.value.weight().sum()) / 4) - 1) / 3) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

* item[=].item[+].linkId = "score-cf"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Cognitive Functioning Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Kognitive Funktion"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(1 - (((%resource.item.where(linkId='qlq-c30-q20' or linkId='qlq-c30-q25').answer.value.weight().sum()) / 2) - 1) / 3) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

* item[=].item[+].linkId = "score-sf"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Social Functioning Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Soziale Funktion"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(1 - (((%resource.item.where(linkId='qlq-c30-q26' or linkId='qlq-c30-q27').answer.value.weight().sum()) / 2) - 1) / 3) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Symptom Scales (higher=worse): Formula = ((RS-1)/range) × 100
* item[=].item[+].linkId = "score-fa"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Fatigue Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Fatigue"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(((%resource.item.where(linkId='qlq-c30-q10' or linkId='qlq-c30-q12' or linkId='qlq-c30-q18').answer.value.weight().sum()) / 3) - 1) / 3) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

* item[=].item[+].linkId = "score-nv"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Nausea and Vomiting Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Übelkeit und Erbrechen"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(((%resource.item.where(linkId='qlq-c30-q14' or linkId='qlq-c30-q15').answer.value.weight().sum()) / 2) - 1) / 3) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

* item[=].item[+].linkId = "score-pa"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Pain Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Schmerz"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(((%resource.item.where(linkId='qlq-c30-q09' or linkId='qlq-c30-q19').answer.value.weight().sum()) / 2) - 1) / 3) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Single Item Symptom Scales
* item[=].item[+].linkId = "score-dy"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Dyspnoea Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Atemnot"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "((%resource.item.where(linkId='qlq-c30-q08').answer.value.weight() - 1) / 3) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

* item[=].item[+].linkId = "score-sl"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Insomnia Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Schlaflosigkeit"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "((%resource.item.where(linkId='qlq-c30-q11').answer.value.weight() - 1) / 3) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

* item[=].item[+].linkId = "score-ap"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Appetite Loss Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Appetitverlust"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "((%resource.item.where(linkId='qlq-c30-q13').answer.value.weight() - 1) / 3) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

* item[=].item[+].linkId = "score-co"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Constipation Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Verstopfung"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "((%resource.item.where(linkId='qlq-c30-q16').answer.value.weight() - 1) / 3) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

* item[=].item[+].linkId = "score-di"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Diarrhoea Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Durchfall"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "((%resource.item.where(linkId='qlq-c30-q17').answer.value.weight() - 1) / 3) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

* item[=].item[+].linkId = "score-fi"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Financial Difficulties Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Finanzielle Schwierigkeiten"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "((%resource.item.where(linkId='qlq-c30-q28').answer.value.weight() - 1) / 3) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Global Health Status/QoL (7-point scale, range=6)
* item[=].item[+].linkId = "score-ql"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Global Health Status / Quality of Life Score"
* insert TranslationDE(item[=].item[=].text, [["Skalenwert Globaler Gesundheitsstatus / Lebensqualität"]])
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(((%resource.item.where(linkId='qlq-c30-q29' or linkId='qlq-c30-q30').answer.value.weight().sum()) / 2) - 1) / 6) * 100"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// ===== CONTAINED CODESYSTEM INSTANCE =====
