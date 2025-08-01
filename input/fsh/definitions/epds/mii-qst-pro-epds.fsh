Instance: mii-qst-pro-epds
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO EPDS"
Description: "Edinburgh Postnatal Depression Scale (EPDS) - Metadata-only reference implementation"
Usage: #definition

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-epds"
* status = #active
* experimental = true
* language = #en
* version = "0.1.0"
* title = "Edinburgh Postnatal Depression Scale (EPDS)"
* code[snomed] = $SCT#273441006 "Edinburgh postnatal depression scale (assessment scale)"
* code[mii] = http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue#epds "Edinburgh Postnatal Depression Scale"

// Capabilities - NOT displayable, calculatable, or extractable due to licensing restrictions
* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[collectable].valueBoolean = false
* extension[capabilities].extension[calculatable].valueBoolean = false
* extension[capabilities].extension[extractable].valueBoolean = false
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Metadata only - no actual questionnaire items included
* item[0].linkId = "EPDS.Notice"
* item[0].type = #display
* item[0].text = "This questionnaire requires proper licensing from the copyright holders. Please contact the EPDS rights holders for implementation permissions."