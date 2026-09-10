// SSD-12 example: all twelve items answered "manchmal" (sometimes, ordinal 2).
// Expected sum: 12 x 2 = 24 (of 48).
//
// Display text uses the German designation ("manchmal"), not the CS's English base display
// ("Sometimes") — matching the mii-cs-pro-phq-15-answers convention (English display + German
// designation on the CodeSystem, German designation used as valueCoding.display in German-context
// examples/instances). The Java validator (German locale) expects the coding's display to match
// the designation preferred for the resource's language, not the base display.

Instance: mii-exa-pro-ssd-12-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "SSD-12 Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #de
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-08-31T09:30:00Z"
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-ssd-12)
* item[+].linkId = "ssd12-q01"
* item[=].text = "Ich denke, dass meine körperlichen Beschwerden Anzeichen einer ernsthaften Erkrankung sind."
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q02"
* item[=].text = "Ich mache mir große Sorgen um meine Gesundheit."
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q03"
* item[=].text = "Meine gesundheitlichen Sorgen behindern mich im Alltag."
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q04"
* item[=].text = "Ich bin von der Ernsthaftigkeit meiner körperlichen Beschwerden überzeugt."
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q05"
* item[=].text = "Meine körperlichen Beschwerden machen mir Angst."
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q06"
* item[=].text = "Meine körperlichen Beschwerden beschäftigen mich den größten Teil des Tages."
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q07"
* item[=].text = "Andere sagen mir, dass meine körperlichen Beschwerden nicht schlimm sind."
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q08"
* item[=].text = "Ich mache mir Sorgen, dass meine körperlichen Beschwerden niemals aufhören werden."
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q09"
* item[=].text = "Die Sorgen um meine Gesundheit rauben mir Energie."
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q10"
* item[=].text = "Ich denke, dass die Ärzte meine körperlichen Beschwerden nicht ernst nehmen."
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q11"
* item[=].text = "Ich mache mir Sorgen auch in Zukunft durch meine körperlichen Beschwerden beeinträchtigt zu bleiben."
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

* item[+].linkId = "ssd12-q12"
* item[=].text = "Durch meine körperlichen Beschwerden kann ich mich schlecht auf andere Dinge konzentrieren."
* item[=].answer[0].valueCoding = $mii-cs-pro-ssd-12-answers#sometimes "manchmal"

// Calculated total score: 24 of 48
* item[+].linkId = "ssd12-score-total"
* item[=].text = "SSD-12 Summenwert (0-48)"
* item[=].answer[0].valueDecimal = 24
