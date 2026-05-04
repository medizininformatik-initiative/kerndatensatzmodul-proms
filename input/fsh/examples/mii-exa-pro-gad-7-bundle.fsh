Instance: mii-exa-pro-gad-7-bundle
InstanceOf: Bundle
Title: "GAD-7 Transaction Bundle Example"
Description: "Transaction bundle containing GAD-7 questionnaire, response, and derived observation"
Usage: #example
* type = #transaction

// Questionnaire
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7"
* entry[=].resource = mii-qst-pro-gad-7
* entry[=].request.method = #PUT
* entry[=].request.url = "Questionnaire/mii-qst-pro-gad-7"

// QuestionnaireResponse (moderate anxiety example)
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/QuestionnaireResponse/mii-exa-pro-gad-7-response"
* entry[=].resource = mii-exa-pro-gad-7-response
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/mii-exa-pro-gad-7-response"

// Derived Observation (score 13)
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-gad-7-observation"
* entry[=].resource = mii-exa-pro-gad-7-observation
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-gad-7-observation"

// Patient (reuse existing example patient)
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Patient/mii-exa-pro-patient"
* entry[=].resource.resourceType = "Patient"
* entry[=].resource.id = "mii-exa-pro-patient"
* entry[=].resource.active = true
* entry[=].resource.name.family = "Example"
* entry[=].resource.name.given = "Patient"
* entry[=].resource.gender = #other
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/mii-exa-pro-patient"
