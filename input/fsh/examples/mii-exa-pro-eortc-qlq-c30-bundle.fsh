Instance: mii-exa-pro-eortc-qlq-c30-bundle
InstanceOf: Bundle
Title: "EORTC QLQ-C30 Transaction Bundle Example"
Description: "Complete transaction bundle containing EORTC QLQ-C30 questionnaire, response with all 30 items, and derived observations with all 15 scale scores"
Usage: #example
* type = #transaction

// Questionnaire (complete implementation with all 30 items)
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-eortc-qlq-c30"
* entry[=].resource = mii-qst-pro-eortc-qlq-c30
* entry[=].request.method = #PUT
* entry[=].request.url = "Questionnaire/mii-qst-pro-eortc-qlq-c30"

// QuestionnaireResponse (all 30 items answered)
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-response
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"

// === Functional Scale Observations (5) ===
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-pf"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-pf
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-pf"

* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-rf"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-rf
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-rf"

* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-ef"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-ef
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-ef"

* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-cf"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-cf
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-cf"

* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-sf"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-sf
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-sf"

// === Symptom Scale Observations (3) ===
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-fa"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-fa
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-fa"

* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-nv"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-nv
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-nv"

* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-pa"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-pa
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-pa"

// === Single Item Symptom Observations (6) ===
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-dy"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-dy
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-dy"

* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-sl"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-sl
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-sl"

* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-ap"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-ap
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-ap"

* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-co"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-co
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-co"

* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-di"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-di
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-di"

* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-fi"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-fi
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-fi"

// === Global Health Status / QoL Observation (1) ===
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-eortc-qlq-c30-observation-ql"
* entry[=].resource = mii-exa-pro-eortc-qlq-c30-observation-ql
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-eortc-qlq-c30-observation-ql"

// Patient
* entry[+].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Patient/example-patient"
* entry[=].resource.resourceType = "Patient"
* entry[=].resource.id = "example-patient"
* entry[=].resource.active = true
* entry[=].resource.name.family = "Example"
* entry[=].resource.name.given = "Patient"
* entry[=].resource.gender = #other
* entry[=].resource.birthDate = "1960-01-01"
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/example-patient"