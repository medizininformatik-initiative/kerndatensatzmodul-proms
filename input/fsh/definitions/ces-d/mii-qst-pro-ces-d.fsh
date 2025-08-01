Instance: mii-qst-pro-ces-d
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO CES-D"
Description: "Center for Epidemiologic Studies Depression Scale (CES-D) - Metadata-only reference implementation"
Usage: #definition

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-ces-d"
* status = #active
* experimental = true
* language = #en
* version = "0.1.0"
* title = "Center for Epidemiologic Studies Depression Scale (CES-D)"
* code[mii] = http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue#ces-d "Center for Epidemiologic Studies Depression Scale"

// Capabilities - NOT displayable, calculatable, or extractable due to licensing restrictions
* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[collectable].valueBoolean = false
* extension[capabilities].extension[calculatable].valueBoolean = false
* extension[capabilities].extension[extractable].valueBoolean = false
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Metadata only - no actual questionnaire items included
* item[0].linkId = "CES-D.Notice"
* item[0].type = #display
* item[0].text = "This questionnaire requires proper licensing from the copyright holders. Please contact the CES-D rights holders for implementation permissions."