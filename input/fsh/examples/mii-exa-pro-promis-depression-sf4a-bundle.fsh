Instance: mii-exa-pro-promis-depression-sf4a-bundle
InstanceOf: Bundle
Title: "MII EXA PRO PROMIS Depression SF 4a Bundle"
Description: "Example bundle containing PROMIS Depression SF 4a QuestionnaireResponse and derived observations"
Usage: #example

* type = #collection
* timestamp = "2024-01-15T10:35:00Z"

// Patient
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Patient/example-patient"
* entry[=].resource = mii-exa-pro-patient

// QuestionnaireResponse
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/QuestionnaireResponse/mii-exa-pro-promis-depression-sf4a-response"
* entry[=].resource = mii-exa-pro-promis-depression-sf4a-response

// Raw Score Observation
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-promis-depression-sf4a-raw-score"
* entry[=].resource = mii-exa-pro-promis-depression-sf4a-raw-score

// T-Score Observation  
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-promis-depression-sf4a-tscore"
* entry[=].resource = mii-exa-pro-promis-depression-sf4a-tscore