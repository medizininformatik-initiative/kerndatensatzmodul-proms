// PHQ-15 (Kroenke K, Spitzer RL, Williams JBW. The PHQ-15: Validity of a New Measure for Evaluating the
// Severity of Somatic Symptoms. Psychosomatic Medicine 2002; 64(2):258–266)
// German version: PHQ-D (Löwe B, Spitzer RL, Zipfel S, Herzog W. PHQ-D. Gesundheitsfragebogen für
// Patienten. Pfizer, Karlsruhe 2002)
// German validation: Gräfe K, Zipfel S, Herzog W, Löwe B. Screening psychischer Störungen mit dem
// "Gesundheitsfragebogen für Patienten (PHQ-D)". Diagnostica 2004; 50(4):171–181.
// doi:10.1026/0012-1924.50.4.171
// License: frei verfügbar (public domain, no permission required) — fully displayable and collectable.
// Note: this is the canonical self-contained PHQ-15. ALL 15 items use the 0–2 bother scale, including
// items 14 (fatigue) and 15 (sleep), which are scored 0–2 here per Kroenke 2002. Cross-battery
// item-bank alignment (PCOR-MII xba, sleep/fatigue from PHQ-9 0–3 block) is tracked separately.
//
// Answer modelling: items reference mii-vs-pro-phq-15-answers via answerValueSet. Ordinal weights
// (0/1/2) are declared as properties on mii-cs-pro-phq-15-answers concepts. In-form .ordinal()
// resolution from answerValueSet is engine-dependent; scoring via CQL/server is verified separately.

Instance: mii-qst-pro-phq-15
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PHQ-15"
Description: "Patient Health Questionnaire-15 (PHQ-15) — somatic symptom severity (PHQ-D German validated)"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = $mii-qst-pro-phq-15
* status = #active
* experimental = true
* language = #en
* code[+] = $LNC#69728-4 "Patient Health Questionnaire 15 item (PHQ-15) [Reported]"
* code[+] = $mii-cs-pro-questionnaire-catalogue#phq-phq15 "PHQ-15 Questionnaire"

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Root-level variable: sum of all 15 somatic symptom items (ordinal values 0–2 each, total 0–30)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "phq15Sum"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^phq-phq15-q(0[1-9]|1[0-5])$')).answer.value.ordinal().sum()"

// Item 0: Introductory display item
* item[0].linkId = "PHQ-15.Description"
* item[0].type = #display
* item[0].text = "During the past 4 weeks, how much have you been bothered by any of the following problems?"
* item[0].text.extension[0].url = $hl7-translation
* item[0].text.extension[0].extension[0].url = "lang"
* item[0].text.extension[0].extension[0].valueCode = #de
* item[0].text.extension[0].extension[1].url = "content"
* item[0].text.extension[0].extension[1].valueString = "Wie stark fühlten Sie sich im Verlauf der letzten 4 Wochen durch die folgenden Beschwerden beeinträchtigt?"

// Item 1: Stomach pain
* item[1].linkId = "phq-phq15-q01"
* item[1].type = #choice
* item[1].prefix = "1"
* item[1].code = $LNC#69671-6
* item[1].text = "Stomach pain"
* item[1].text.extension[0].url = $hl7-translation
* item[1].text.extension[0].extension[0].url = "lang"
* item[1].text.extension[0].extension[0].valueCode = #de
* item[1].text.extension[0].extension[1].url = "content"
* item[1].text.extension[0].extension[1].valueString = "Bauchschmerzen"
* item[1].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 2: Back pain
* item[2].linkId = "phq-phq15-q02"
* item[2].type = #choice
* item[2].prefix = "2"
* item[2].code = $LNC#69672-4
* item[2].text = "Back pain"
* item[2].text.extension[0].url = $hl7-translation
* item[2].text.extension[0].extension[0].url = "lang"
* item[2].text.extension[0].extension[0].valueCode = #de
* item[2].text.extension[0].extension[1].url = "content"
* item[2].text.extension[0].extension[1].valueString = "Rückenschmerzen"
* item[2].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 3: Pain in your arms, legs, or joints (knees, hips, etc.)
* item[3].linkId = "phq-phq15-q03"
* item[3].type = #choice
* item[3].prefix = "3"
* item[3].code = $LNC#69673-2
* item[3].text = "Pain in your arms, legs, or joints (knees, hips, etc.)"
* item[3].text.extension[0].url = $hl7-translation
* item[3].text.extension[0].extension[0].url = "lang"
* item[3].text.extension[0].extension[0].valueCode = #de
* item[3].text.extension[0].extension[1].url = "content"
* item[3].text.extension[0].extension[1].valueString = "Schmerzen in Armen, Beinen oder Gelenken (Knie, Hüften, usw.)"
* item[3].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 4: Menstrual cramps or other problems with your periods
* item[4].linkId = "phq-phq15-q04"
* item[4].type = #choice
* item[4].prefix = "4"
* item[4].code = $LNC#69674-0
* item[4].text = "Menstrual cramps or other problems with your periods"
* item[4].text.extension[0].url = $hl7-translation
* item[4].text.extension[0].extension[0].url = "lang"
* item[4].text.extension[0].extension[0].valueCode = #de
* item[4].text.extension[0].extension[1].url = "content"
* item[4].text.extension[0].extension[1].valueString = "Menstruationsschmerzen oder andere Probleme mit der Menstruation"
* item[4].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 5: Pain or problems during sexual intercourse
* item[5].linkId = "phq-phq15-q05"
* item[5].type = #choice
* item[5].prefix = "5"
* item[5].code = $LNC#69717-7
* item[5].text = "Pain or problems during sexual intercourse"
* item[5].text.extension[0].url = $hl7-translation
* item[5].text.extension[0].extension[0].url = "lang"
* item[5].text.extension[0].extension[0].valueCode = #de
* item[5].text.extension[0].extension[1].url = "content"
* item[5].text.extension[0].extension[1].valueString = "Schmerzen oder Probleme beim Geschlechtsverkehr"
* item[5].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 6: Headaches
* item[6].linkId = "phq-phq15-q06"
* item[6].type = #choice
* item[6].prefix = "6"
* item[6].code = $LNC#69675-7
* item[6].text = "Headaches"
* item[6].text.extension[0].url = $hl7-translation
* item[6].text.extension[0].extension[0].url = "lang"
* item[6].text.extension[0].extension[0].valueCode = #de
* item[6].text.extension[0].extension[1].url = "content"
* item[6].text.extension[0].extension[1].valueString = "Kopfschmerzen"
* item[6].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 7: Chest pain
* item[7].linkId = "phq-phq15-q07"
* item[7].type = #choice
* item[7].prefix = "7"
* item[7].code = $LNC#69676-5
* item[7].text = "Chest pain"
* item[7].text.extension[0].url = $hl7-translation
* item[7].text.extension[0].extension[0].url = "lang"
* item[7].text.extension[0].extension[0].valueCode = #de
* item[7].text.extension[0].extension[1].url = "content"
* item[7].text.extension[0].extension[1].valueString = "Schmerzen im Brustbereich"
* item[7].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 8: Dizziness
* item[8].linkId = "phq-phq15-q08"
* item[8].type = #choice
* item[8].prefix = "8"
* item[8].code = $LNC#69677-3
* item[8].text = "Dizziness"
* item[8].text.extension[0].url = $hl7-translation
* item[8].text.extension[0].extension[0].url = "lang"
* item[8].text.extension[0].extension[0].valueCode = #de
* item[8].text.extension[0].extension[1].url = "content"
* item[8].text.extension[0].extension[1].valueString = "Schwindel"
* item[8].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 9: Fainting spells
* item[9].linkId = "phq-phq15-q09"
* item[9].type = #choice
* item[9].prefix = "9"
* item[9].code = $LNC#69678-1
* item[9].text = "Fainting spells"
* item[9].text.extension[0].url = $hl7-translation
* item[9].text.extension[0].extension[0].url = "lang"
* item[9].text.extension[0].extension[0].valueCode = #de
* item[9].text.extension[0].extension[1].url = "content"
* item[9].text.extension[0].extension[1].valueString = "Ohnmachtsanfälle"
* item[9].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 10: Feeling your heart pound or race
* item[10].linkId = "phq-phq15-q10"
* item[10].type = #choice
* item[10].prefix = "10"
* item[10].code = $LNC#69679-9
* item[10].text = "Feeling your heart pound or race"
* item[10].text.extension[0].url = $hl7-translation
* item[10].text.extension[0].extension[0].url = "lang"
* item[10].text.extension[0].extension[0].valueCode = #de
* item[10].text.extension[0].extension[1].url = "content"
* item[10].text.extension[0].extension[1].valueString = "Herzklopfen oder Herzrasen"
* item[10].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 11: Shortness of breath
* item[11].linkId = "phq-phq15-q11"
* item[11].type = #choice
* item[11].prefix = "11"
* item[11].code = $LNC#69680-7
* item[11].text = "Shortness of breath"
* item[11].text.extension[0].url = $hl7-translation
* item[11].text.extension[0].extension[0].url = "lang"
* item[11].text.extension[0].extension[0].valueCode = #de
* item[11].text.extension[0].extension[1].url = "content"
* item[11].text.extension[0].extension[1].valueString = "Kurzatmigkeit"
* item[11].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 12: Constipation, loose bowels, or diarrhea
* item[12].linkId = "phq-phq15-q12"
* item[12].type = #choice
* item[12].prefix = "12"
* item[12].code = $LNC#69681-5
* item[12].text = "Constipation, loose bowels, or diarrhea"
* item[12].text.extension[0].url = $hl7-translation
* item[12].text.extension[0].extension[0].url = "lang"
* item[12].text.extension[0].extension[0].valueCode = #de
* item[12].text.extension[0].extension[1].url = "content"
* item[12].text.extension[0].extension[1].valueString = "Verstopfung, nervöser Darm oder Durchfall"
* item[12].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 13: Nausea, gas, or indigestion
* item[13].linkId = "phq-phq15-q13"
* item[13].type = #choice
* item[13].prefix = "13"
* item[13].code = $LNC#69682-3
* item[13].text = "Nausea, gas, or indigestion"
* item[13].text.extension[0].url = $hl7-translation
* item[13].text.extension[0].extension[0].url = "lang"
* item[13].text.extension[0].extension[0].valueCode = #de
* item[13].text.extension[0].extension[1].url = "content"
* item[13].text.extension[0].extension[1].valueString = "Übelkeit, Blähungen oder Verdauungsbeschwerden"
* item[13].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 14: Feeling tired or having low energy
// Note: scored 0–2 (bother scale) in PHQ-15, distinct from PHQ-9 item 4 (0–3 frequency scale)
* item[14].linkId = "phq-phq15-q14"
* item[14].type = #choice
* item[14].prefix = "14"
* item[14].code = $LNC#69731-8
* item[14].text = "Feeling tired or having low energy"
* item[14].text.extension[0].url = $hl7-translation
* item[14].text.extension[0].extension[0].url = "lang"
* item[14].text.extension[0].extension[0].valueCode = #de
* item[14].text.extension[0].extension[1].url = "content"
* item[14].text.extension[0].extension[1].valueString = "Müdigkeit oder Gefühl, keine Energie zu haben"
* item[14].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 15: Trouble sleeping
// Note: scored 0–2 (bother scale) in PHQ-15, distinct from PHQ-9 item 3 (0–3 frequency scale)
* item[15].linkId = "phq-phq15-q15"
* item[15].type = #choice
* item[15].prefix = "15"
* item[15].code = $LNC#69732-6
* item[15].text = "Trouble sleeping"
* item[15].text.extension[0].url = $hl7-translation
* item[15].text.extension[0].extension[0].url = "lang"
* item[15].text.extension[0].extension[0].valueCode = #de
* item[15].text.extension[0].extension[1].url = "content"
* item[15].text.extension[0].extension[1].valueString = "Schwierigkeiten ein- oder durchzuschlafen oder vermehrter Schlaf"
* item[15].answerValueSet = Canonical(MII_VS_PRO_PHQ_15_Answers)

// Item 16: PHQ-15 Total Score (0–30)
* item[16].linkId = "phq-phq15-score-total"
* item[16].type = #decimal
* item[16].prefix = "Summenwert"
* item[16].code = $LNC#70273-8 "Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]"
* item[16].readOnly = true
* item[16].extension[0].url = $sdc-questionnaire-calculated-expression
* item[16].extension[0].valueExpression.name = "Scoreberechnung"
* item[16].extension[0].valueExpression.language = #text/fhirpath
* item[16].extension[0].valueExpression.expression = "%phq15Sum"
* item[16].text = "PHQ-15 Total Score (0–30)"
* item[16].text.extension[0].url = $hl7-translation
* item[16].text.extension[0].extension[0].url = "lang"
* item[16].text.extension[0].extension[0].valueCode = #de
* item[16].text.extension[0].extension[1].url = "content"
* item[16].text.extension[0].extension[1].valueString = "PHQ-15 Summenwert (0–30)"
* item[16].extension[1].url = $sdc-questionnaire-observation-extract
* item[16].extension[1].valueBoolean = true
* item[16].extension[2].url = $hl7-questionnaire-unit
* item[16].extension[2].valueCoding.system = $UCUM
* item[16].extension[2].valueCoding.code = #{score}
* item[16].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[16].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[16].extension[3].valueCodeableConcept.coding.code = #survey
