Instance: mii-exa-pro-bdi-ii-bundle
InstanceOf: Bundle
Title: "BDI-II Transaction Bundle Example"
Description: "Transaction bundle containing BDI-II CodeSystem, ValueSets, questionnaire, response, and derived observation"
Usage: #example
* type = #transaction

// CodeSystem
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-bdi-bdi2"
* entry[=].resource = MII_CS_PRO_BDI_BDI2_AnswerList
* entry[=].request.method = #PUT
* entry[=].request.url = "CodeSystem/mii-cs-pro-bdi-bdi2"

// Short ValueSet
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* entry[=].resource = MII_VS_PRO_BDI_BDI2_AnswerListShort
* entry[=].request.method = #PUT
* entry[=].request.url = "ValueSet/mii-vs-pro-bdi-bdi2-short"

// Long ValueSet  
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-long"
* entry[=].resource = MII_VS_PRO_BDI_BDI2_AnswerListLong
* entry[=].request.method = #PUT
* entry[=].request.url = "ValueSet/mii-vs-pro-bdi-bdi2-long"

// Questionnaire
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-bdi-bdi2"
* entry[=].resource = mii-qst-pro-bdi-bdi2
* entry[=].request.method = #PUT
* entry[=].request.url = "Questionnaire/mii-qst-pro-bdi-bdi2"

// QuestionnaireResponse
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/QuestionnaireResponse/mii-qr-pro-bdi-bdi2"
* entry[=].resource = mii-qr-pro-bdi-bdi2
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/mii-qr-pro-bdi-bdi2"

// Derived Observation
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-bdi-ii-observation"
* entry[=].resource = mii-exa-pro-bdi-ii-observation
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-bdi-ii-observation"

// Patient
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Patient/example-patient"
* entry[=].resource.resourceType = "Patient"
* entry[=].resource.id = "example-patient"
* entry[=].resource.active = true
* entry[=].resource.name.family = "Example"
* entry[=].resource.name.given = "Patient"
* entry[=].resource.gender = #other
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/example-patient"