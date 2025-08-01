Instance: mii-qst-pro-hads
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO HADS"
Description: "Hospital Anxiety and Depression Scale (HADS) - Metadata-only reference implementation"
Usage: #definition

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-hads"
* status = #active
* experimental = true
* language = #en
* version = "0.1.0"
* title = "Hospital Anxiety and Depression Scale (HADS)"
* code[snomed] = $SCT#273524006 "Hospital anxiety and depression scale (assessment scale)"
* code[mii] = http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue#hads "Hospital Anxiety and Depression Scale"

// Capabilities - NOT displayable due to licensing restrictions
* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[collectable].valueBoolean = false
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Metadata only - no actual questionnaire items included
* item[0].linkId = "HADS.Notice"
* item[0].type = #display
* item[0].text = "This questionnaire requires proper licensing from the copyright holders. Please contact the HADS rights holders for implementation permissions."