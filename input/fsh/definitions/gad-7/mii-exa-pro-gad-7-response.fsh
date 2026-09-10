// GAD-7-Beispiel: Items 1-3 mit "An einzelnen Tagen" (1), Items 4-5 mit
// "An mehr als der Hälfte der Tage" (2), Items 6-7 mit "Überhaupt nicht" (0).
// Erwartete Summe: 1+1+1+2+2+0+0 = 7 (leichte Angstsymptomatik, Bereich 5-9).

Instance: mii-exa-pro-gad-7-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "GAD-7 Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #en
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-09-02T10:00:00Z"
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7)
* item[+].linkId = "phq-phq5a"
* item[=].text = "Feeling nervous, anxious, or on edge"
* insert TranslationDE(item[=].text, [["Nervosität, Ängstlichkeit oder Anspannung"]])
* item[=].answer[0].valueCoding = $LNC#LA6569-3 "Several days"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["An einzelnen Tagen"]])
* item[+].linkId = "phq-phq5b"
* item[=].text = "Not being able to stop or control worrying"
* insert TranslationDE(item[=].text, [["Nicht in der Lage sein, Sorgen zu stoppen oder zu kontrollieren"]])
* item[=].answer[0].valueCoding = $LNC#LA6569-3 "Several days"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["An einzelnen Tagen"]])
* item[+].linkId = "phq-phq5c"
* item[=].text = "Worrying too much about different things"
* insert TranslationDE(item[=].text, [["Übermäßige Sorgen bezüglich verschiedener Angelegenheiten"]])
* item[=].answer[0].valueCoding = $LNC#LA6569-3 "Several days"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["An einzelnen Tagen"]])
* item[+].linkId = "phq-phq5d"
* item[=].text = "Trouble relaxing"
* insert TranslationDE(item[=].text, [["Schwierigkeiten zu entspannen"]])
* item[=].answer[0].valueCoding = $LNC#LA6570-1 "More than half the days"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["An mehr als der Hälfte der Tage"]])
* item[+].linkId = "phq-phq5e"
* item[=].text = "Being so restless that it is hard to sit still"
* insert TranslationDE(item[=].text, [["Rastlosigkeit, so dass Stillsitzen schwer fällt"]])
* item[=].answer[0].valueCoding = $LNC#LA6570-1 "More than half the days"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["An mehr als der Hälfte der Tage"]])
* item[+].linkId = "phq-phq5f"
* item[=].text = "Becoming easily annoyed or irritable"
* insert TranslationDE(item[=].text, [["Schnelle Verärgerung oder Gereiztheit"]])
* item[=].answer[0].valueCoding = $LNC#LA6568-5 "Not at all"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Überhaupt nicht"]])
* item[+].linkId = "phq-phq5g"
* item[=].text = "Feeling afraid, as if something awful might happen"
* insert TranslationDE(item[=].text, [["Gefühl der Angst, so als würde etwas Schlimmes passieren"]])
* item[=].answer[0].valueCoding = $LNC#LA6568-5 "Not at all"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Überhaupt nicht"]])

// Berechneter Summenwert: 7 von 21
* item[+].linkId = "phq-gad7-score-total"
* item[=].text = "GAD-7 Total Score (0-21)"
* insert TranslationDE(item[=].text, [["GAD-7 Summenwert (0-21)"]])
* item[=].answer[0].valueDecimal = 7
