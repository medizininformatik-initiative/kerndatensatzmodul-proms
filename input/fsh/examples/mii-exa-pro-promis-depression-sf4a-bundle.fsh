Instance: mii-exa-pro-promis-depression-sf4a-bundle
InstanceOf: Bundle
Title: "MII EXA PRO PROMIS Depression SF 4a Bundle"
Description: "Example bundle containing PROMIS Depression SF 4a QuestionnaireResponse and derived observations"
Usage: #example

* type = #collection
* timestamp = "2024-01-15T10:35:00Z"

// Patient
* entry[+].fullUrl = "urn:uuid:patient-12345"
* entry[=].resource = mii-exa-pro-patient

// QuestionnaireResponse
* entry[+].fullUrl = "urn:uuid:qr-promis-depression-sf4a-001"
* entry[=].resource = mii-exa-pro-promis-depression-sf4a-response

// Raw Score Observation
* entry[+].fullUrl = "urn:uuid:obs-promis-depression-sf4a-raw-001"
* entry[=].resource = mii-exa-pro-promis-depression-sf4a-raw-score

// T-Score Observation  
* entry[+].fullUrl = "urn:uuid:obs-promis-depression-sf4a-tscore-001"
* entry[=].resource = mii-exa-pro-promis-depression-sf4a-tscore