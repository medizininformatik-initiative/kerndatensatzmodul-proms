// EURONET-SOMA example response: illustrative values only (not from a real patient/study).
// Both items are directly collected integers (0-10 NRS), no calculated score exists for this
// instrument (see header comment of mii-qst-pro-euronet-soma.fsh — Fall C, kein Score).
// The anchor-label display items (-anchor-min/-anchor-max) carry no answer.

Instance: mii-exa-pro-euronet-soma-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "EURONET-SOMA Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #de
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-08-28T09:45:00Z"
* questionnaire = $mii-qst-pro-euronet-soma

* item[+].linkId = "euronet-soma-q01" // Symptom Intensity — Gesamtstärke der Körperbeschwerden
* item[=].answer[0].valueInteger = 6

* item[+].linkId = "euronet-soma-q02" // Symptom Interference — Beeinträchtigung durch Körperbeschwerden
* item[=].answer[0].valueInteger = 5
