CodeSystem: MII_CS_PRO_BDI_BDI2_AnswerList
Id: mii-cs-pro-bdi-bdi2
Title: "MII CS PRO BDI-II"
Description: "MII CS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire"
* ^url = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-bdi-bdi2"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true
* ^valueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2"

// In SDC STU3, itemWeight is moved to answerOption.extension[ordinalValue] in the Questionnaire
// Keeping codes without weight properties for the CodeSystem

* #bdi-bdi2-answer-0 "0 points"
* #bdi-bdi2-answer-1 "1 point"
* #bdi-bdi2-answer-2 "2 points"
* #bdi-bdi2-answer-3 "3 points"
* #bdi-bdi2-answer-1a "1 point (variant a)"
* #bdi-bdi2-answer-1b "1 point (variant b)"
* #bdi-bdi2-answer-2a "2 points (variant a)"
* #bdi-bdi2-answer-2b "2 points (variant b)"
* #bdi-bdi2-answer-3a "3 points (variant a)"
* #bdi-bdi2-answer-3b "3 points (variant b)"


