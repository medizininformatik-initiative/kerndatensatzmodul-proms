Instance: mii-qst-pro-k6
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO K6"
Description: "Kessler Psychological Distress Scale (K6) - Metadata-only reference implementation"
Usage: #definition

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-k6"
* status = #active
* experimental = true
* language = #en
* version = "0.1.0"
* title = "Kessler Psychological Distress Scale (K6)"
* code[mii] = http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue#k6 "Kessler Psychological Distress Scale"

// Capabilities - NOT displayable, calculatable, or extractable due to licensing restrictions
* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[collectable].valueBoolean = false
* extension[capabilities].extension[calculatable].valueBoolean = false
* extension[capabilities].extension[extractable].valueBoolean = false
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Metadata only - no actual questionnaire items included
* item[0].linkId = "K6.Notice"
* item[0].type = #display
* item[0].text = "This questionnaire requires proper licensing from the copyright holders. Please contact the K6 rights holders for implementation permissions."