Instance: mii-exa-pro-phq-9-bundle
InstanceOf: Bundle
Title: "PHQ-9 Transaction Bundle Example"
Description: "Transaction bundle containing PHQ-9 questionnaire, response, and derived observation - flagship example"
Usage: #example
* type = #transaction

// Questionnaire (uses LOINC codes with ordinalValue extensions)
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9"
* entry[=].resource = mii-qst-pro-phq-9
* entry[=].request.method = #PUT
* entry[=].request.url = "Questionnaire/mii-qst-pro-phq-9"

// QuestionnaireResponse (severe depression example)
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/QuestionnaireResponse/mii-exa-pro-phq-9-response"
* entry[=].resource = mii-exa-pro-phq-9-response
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/mii-exa-pro-phq-9-response"

// Derived Observation (score 27)
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-phq-9-observation"
* entry[=].resource = mii-exa-pro-phq-9-observation
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-phq-9-observation"

// Patient
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Patient/mii-exa-pro-patient"
* entry[=].resource.resourceType = "Patient"
* entry[=].resource.id = "mii-exa-pro-patient"
* entry[=].resource.active = true
* entry[=].resource.name.family = "Example"
* entry[=].resource.name.given = "Patient"
* entry[=].resource.gender = #other
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/mii-exa-pro-patient"