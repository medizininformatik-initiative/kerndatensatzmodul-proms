// ============================================================================
// DASS-21 QuestionnaireResponse Example
// ============================================================================
// Mixed severity scenario:
//   Depression (Q3,5,10,13,16,17,21): 2+2+2+2+1+2+1 = 12 (severe, range 11-13)
//   Anxiety    (Q2,4,7,9,15,19,20):   1+1+0+1+1+0+1 = 5  (mild, range 4-5)
//   Stress     (Q1,6,8,11,12,14,18):  2+1+2+2+1+2+1 = 11 (moderate, range 10-12)
// ============================================================================

Instance: mii-exa-pro-dass-dass21-response-01
InstanceOf: mii-pr-pro-questionnaire-response
Title: "MII EXA PRO DASS-21 Response"
Description: "Complete DASS-21 QuestionnaireResponse example with mixed severity: Depression severe (12), Anxiety mild (5), Stress moderate (11)"
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-dass-dass21)
* status = #completed
* subject.reference = "Patient/mii-exa-pro-patient"
* authored = "2026-02-01"

// Q1 - Stress (value: 2)
* item[+].linkId = "dass-dass21-q01"
* item[=].text = "I found it hard to wind down"
* insert TranslationDE(item[=].text, [["Ich fand es schwer abzuschalten"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf in beträchtlichem Maße auf mich zu"]])

// Q2 - Anxiety (value: 1)
* item[+].linkId = "dass-dass21-q02"
* item[=].text = "I was aware of dryness of my mouth"
* insert TranslationDE(item[=].text, [["Ich bemerkte Mundtrockenheit"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf bis zu einem gewissen Grad auf mich zu"]])

// Q3 - Depression (value: 2)
* item[+].linkId = "dass-dass21-q03"
* item[=].text = "I couldn't seem to experience any positive feeling at all"
* insert TranslationDE(item[=].text, [["Ich konnte überhaupt keine positiven Gefühle mehr erleben"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf in beträchtlichem Maße auf mich zu"]])

// Q4 - Anxiety (value: 1)
* item[+].linkId = "dass-dass21-q04"
* item[=].text = "I experienced breathing difficulty"
* insert TranslationDE(item[=].text, [["Ich hatte Atemschwierigkeiten"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf bis zu einem gewissen Grad auf mich zu"]])

// Q5 - Depression (value: 2)
* item[+].linkId = "dass-dass21-q05"
* item[=].text = "I found it difficult to work up the initiative to do things"
* insert TranslationDE(item[=].text, [["Ich fand es schwierig, die Initiative zum Tun aufzubringen"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf in beträchtlichem Maße auf mich zu"]])

// Q6 - Stress (value: 1)
* item[+].linkId = "dass-dass21-q06"
* item[=].text = "I tended to over-react to situations"
* insert TranslationDE(item[=].text, [["Ich neigte dazu, auf Situationen überzureagieren"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf bis zu einem gewissen Grad auf mich zu"]])

// Q7 - Anxiety (value: 0)
* item[+].linkId = "dass-dass21-q07"
* item[=].text = "I experienced trembling (e.g., in the hands)"
* insert TranslationDE(item[=].text, [["Ich zitterte (z.B. an den Händen)"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-0
* item[=].answer.valueCoding.display = "Did not apply to me at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf gar nicht auf mich zu"]])

// Q8 - Stress (value: 2)
* item[+].linkId = "dass-dass21-q08"
* item[=].text = "I felt that I was using a lot of nervous energy"
* insert TranslationDE(item[=].text, [["Ich merkte, dass ich viel nervöse Energie verbrauchte"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf in beträchtlichem Maße auf mich zu"]])

// Q9 - Anxiety (value: 1)
* item[+].linkId = "dass-dass21-q09"
* item[=].text = "I was worried about situations in which I might panic and make a fool of myself"
* insert TranslationDE(item[=].text, [["Ich machte mir Sorgen über Situationen, in denen ich in Panik geraten könnte"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf bis zu einem gewissen Grad auf mich zu"]])

// Q10 - Depression (value: 2)
* item[+].linkId = "dass-dass21-q10"
* item[=].text = "I felt that I had nothing to look forward to"
* insert TranslationDE(item[=].text, [["Ich hatte das Gefühl, dass ich nichts erwarten konnte"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf in beträchtlichem Maße auf mich zu"]])

// Q11 - Stress (value: 2)
* item[+].linkId = "dass-dass21-q11"
* item[=].text = "I found myself getting agitated"
* insert TranslationDE(item[=].text, [["Ich merkte, dass ich unruhig wurde"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf in beträchtlichem Maße auf mich zu"]])

// Q12 - Stress (value: 1)
* item[+].linkId = "dass-dass21-q12"
* item[=].text = "I found it difficult to relax"
* insert TranslationDE(item[=].text, [["Ich fand es schwierig, mich zu entspannen"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf bis zu einem gewissen Grad auf mich zu"]])

// Q13 - Depression (value: 2)
* item[+].linkId = "dass-dass21-q13"
* item[=].text = "I felt down-hearted and blue"
* insert TranslationDE(item[=].text, [["Ich fühlte mich niedergeschlagen und traurig"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf in beträchtlichem Maße auf mich zu"]])

// Q14 - Stress (value: 2)
* item[+].linkId = "dass-dass21-q14"
* item[=].text = "I was intolerant of anything that kept me from getting on with what I was doing"
* insert TranslationDE(item[=].text, [["Ich war ungeduldig, wenn ich aufgehalten wurde"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf in beträchtlichem Maße auf mich zu"]])

// Q15 - Anxiety (value: 1)
* item[+].linkId = "dass-dass21-q15"
* item[=].text = "I felt I was close to panic"
* insert TranslationDE(item[=].text, [["Ich fühlte mich einer Panik nahe"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf bis zu einem gewissen Grad auf mich zu"]])

// Q16 - Depression (value: 1)
* item[+].linkId = "dass-dass21-q16"
* item[=].text = "I was unable to become enthusiastic about anything"
* insert TranslationDE(item[=].text, [["Ich konnte mich für nichts begeistern"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf bis zu einem gewissen Grad auf mich zu"]])

// Q17 - Depression (value: 2)
* item[+].linkId = "dass-dass21-q17"
* item[=].text = "I felt I wasn't worth much as a person"
* insert TranslationDE(item[=].text, [["Ich hatte das Gefühl, nicht viel wert zu sein"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-2
* item[=].answer.valueCoding.display = "Applied to me to a considerable degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf in beträchtlichem Maße auf mich zu"]])

// Q18 - Stress (value: 1)
* item[+].linkId = "dass-dass21-q18"
* item[=].text = "I felt that I was rather touchy"
* insert TranslationDE(item[=].text, [["Ich merkte, dass ich ziemlich empfindlich war"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf bis zu einem gewissen Grad auf mich zu"]])

// Q19 - Anxiety (value: 0)
* item[+].linkId = "dass-dass21-q19"
* item[=].text = "I was aware of the action of my heart in the absence of physical exertion"
* insert TranslationDE(item[=].text, [["Ich nahm meinen Herzschlag wahr, ohne körperlich aktiv zu sein"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-0
* item[=].answer.valueCoding.display = "Did not apply to me at all"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf gar nicht auf mich zu"]])

// Q20 - Anxiety (value: 1)
* item[+].linkId = "dass-dass21-q20"
* item[=].text = "I felt scared without any good reason"
* insert TranslationDE(item[=].text, [["Ich fürchtete mich ohne ersichtlichen Grund"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf bis zu einem gewissen Grad auf mich zu"]])

// Q21 - Depression (value: 1)
* item[+].linkId = "dass-dass21-q21"
* item[=].text = "I felt that life was meaningless"
* insert TranslationDE(item[=].text, [["Ich fand das Leben sinnlos"]])
* item[=].answer.valueCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* item[=].answer.valueCoding.code = #dass-dass21-answer-1
* item[=].answer.valueCoding.display = "Applied to me to some degree"
* insert TranslationDE(item[=].answer.valueCoding.display, [["Traf bis zu einem gewissen Grad auf mich zu"]])

// ===== Raw Subscale Scores =====

// Depression Raw Score: 2+2+2+2+1+2+1 = 12
* item[+].linkId = "dass-dass21-score-raw-depression"
* item[=].text = "DASS-21 Depression Raw Score"
* insert TranslationDE(item[=].text, [["DASS-21 Depression Rohwert"]])
* item[=].answer.valueDecimal = 12

// Anxiety Raw Score: 1+1+0+1+1+0+1 = 5
* item[+].linkId = "dass-dass21-score-raw-anxiety"
* item[=].text = "DASS-21 Anxiety Raw Score"
* insert TranslationDE(item[=].text, [["DASS-21 Angst Rohwert"]])
* item[=].answer.valueDecimal = 5

// Stress Raw Score: 2+1+2+2+1+2+1 = 11
* item[+].linkId = "dass-dass21-score-raw-stress"
* item[=].text = "DASS-21 Stress Raw Score"
* insert TranslationDE(item[=].text, [["DASS-21 Stress Rohwert"]])
* item[=].answer.valueDecimal = 11

// ===== DASS-42 Equivalent Scores (raw * 2) =====

// Depression Equivalent: 12 * 2 = 24
* item[+].linkId = "dass-dass21-score-equiv-depression"
* item[=].text = "DASS-21 Depression Score (DASS-42 equivalent)"
* insert TranslationDE(item[=].text, [["DASS-21 Depression Score (DASS-42 Äquivalent)"]])
* item[=].answer.valueDecimal = 24

// Anxiety Equivalent: 5 * 2 = 10
* item[+].linkId = "dass-dass21-score-equiv-anxiety"
* item[=].text = "DASS-21 Anxiety Score (DASS-42 equivalent)"
* insert TranslationDE(item[=].text, [["DASS-21 Angst Score (DASS-42 Äquivalent)"]])
* item[=].answer.valueDecimal = 10

// Stress Equivalent: 11 * 2 = 22
* item[+].linkId = "dass-dass21-score-equiv-stress"
* item[=].text = "DASS-21 Stress Score (DASS-42 equivalent)"
* insert TranslationDE(item[=].text, [["DASS-21 Stress Score (DASS-42 Äquivalent)"]])
* item[=].answer.valueDecimal = 22


// ============================================================================
// DASS-21 Score Observation Examples
// ============================================================================

// ===== DEPRESSION RAW SCORE =====
Instance: mii-exa-pro-dass-dass21-score-depression-raw
InstanceOf: mii-pr-pro-score-instance
Title: "DASS-21 Depression Raw Score Observation"
Description: "DASS-21 Depression subscale raw score observation (severe: 12)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+] = $SCT#416954004 "Depression anxiety stress scales depression score"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #dass21-depression-raw
* code.coding[=].display = "DASS-21 Depression Raw Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-02-01"
* valueQuantity.value = 12
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"

// ===== ANXIETY RAW SCORE =====
Instance: mii-exa-pro-dass-dass21-score-anxiety-raw
InstanceOf: mii-pr-pro-score-instance
Title: "DASS-21 Anxiety Raw Score Observation"
Description: "DASS-21 Anxiety subscale raw score observation (mild: 5)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #dass21-anxiety-raw
* code.coding[=].display = "DASS-21 Anxiety Raw Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-02-01"
* valueQuantity.value = 5
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"

// ===== STRESS RAW SCORE =====
Instance: mii-exa-pro-dass-dass21-score-stress-raw
InstanceOf: mii-pr-pro-score-instance
Title: "DASS-21 Stress Raw Score Observation"
Description: "DASS-21 Stress subscale raw score observation (moderate: 11)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+] = $SCT#416767005 "Depression anxiety stress scales stress score"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #dass21-stress-raw
* code.coding[=].display = "DASS-21 Stress Raw Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-02-01"
* valueQuantity.value = 11
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"

// ===== DEPRESSION DASS-42 EQUIVALENT SCORE =====
Instance: mii-exa-pro-dass-dass21-score-depression-equiv
InstanceOf: mii-pr-pro-score-instance
Title: "DASS-21 Depression DASS-42 Equivalent Score Observation"
Description: "DASS-21 Depression subscale DASS-42 equivalent score observation (raw 12 * 2 = 24)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+] = $SCT#416954004 "Depression anxiety stress scales depression score"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #dass21-depression-equiv
* code.coding[=].display = "DASS-21 Depression DASS-42 Equivalent Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-02-01"
* valueQuantity.value = 24
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"

// ===== ANXIETY DASS-42 EQUIVALENT SCORE =====
Instance: mii-exa-pro-dass-dass21-score-anxiety-equiv
InstanceOf: mii-pr-pro-score-instance
Title: "DASS-21 Anxiety DASS-42 Equivalent Score Observation"
Description: "DASS-21 Anxiety subscale DASS-42 equivalent score observation (raw 5 * 2 = 10)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #dass21-anxiety-equiv
* code.coding[=].display = "DASS-21 Anxiety DASS-42 Equivalent Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-02-01"
* valueQuantity.value = 10
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"

// ===== STRESS DASS-42 EQUIVALENT SCORE =====
Instance: mii-exa-pro-dass-dass21-score-stress-equiv
InstanceOf: mii-pr-pro-score-instance
Title: "DASS-21 Stress DASS-42 Equivalent Score Observation"
Description: "DASS-21 Stress subscale DASS-42 equivalent score observation (raw 11 * 2 = 22)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+] = $SCT#416767005 "Depression anxiety stress scales stress score"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #dass21-stress-equiv
* code.coding[=].display = "DASS-21 Stress DASS-42 Equivalent Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-02-01"
* valueQuantity.value = 22
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-dass-dass21-response-01"
