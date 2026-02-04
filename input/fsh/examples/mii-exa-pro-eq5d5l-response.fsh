Instance: mii-exa-pro-euroqol-eq5d5l-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "EQ-5D-5L Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2023-10-01T12:00:00Z"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable"
* item[0].linkId = "euroqol-eq5d5l-q01-MO"
* item[0].answer[0].valueCoding.code = #2
* item[1].linkId = "euroqol-eq5d5l-q02-SC"
* item[1].answer[0].valueCoding.code = #1
* item[2].linkId = "euroqol-eq5d5l-q03-UA"
* item[2].answer[0].valueCoding.code = #2
* item[3].linkId = "euroqol-eq5d5l-q04-PD"
* item[3].answer[0].valueCoding.code = #3
* item[4].linkId = "euroqol-eq5d5l-q05-AD"
* item[4].answer[0].valueCoding.code = #4
* item[5].linkId = "euroqol-eq5d5l-score-profile"
* item[5].answer[0].valueInteger = 21234  // Concatenated health state from answers above
* item[6].linkId = "euroqol-eq5d5l-score-index"
* item[6].answer[0].valueDecimal = 0.662  // Calculated index value
* item[7].linkId = "euroqol-eq5d5l-vas"
* item[7].answer[0].valueInteger = 75  // VAS score 0-100