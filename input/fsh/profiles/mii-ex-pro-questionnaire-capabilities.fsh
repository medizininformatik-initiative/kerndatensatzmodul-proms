Extension: MII_PR_PRO_Questionnaire_Capabilities
Id: mii-ex-pro-questionnaire-capabilities
Title: "MII PR PRO Questionnaire Capabilities"  
Description: "MII PR PRO Questionnaire Capabilities, based on the FHIR Structure Data Capture Specification"

* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
//* url = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
* extension contains
    displayable 0..1 MS and
    collectable 0..1 MS and
    populatable 0..1 MS and
    extractable 0..1 MS and
    calculatable 0..1 MS and
    domainAligned 0..1 MS and
    adaptive 0..1 MS
* extension[displayable].value[x] only boolean
* extension[collectable].value[x] only boolean
* extension[populatable].value[x] only boolean
* extension[extractable].value[x] only boolean
* extension[calculatable].value[x] only boolean
* extension[domainAligned].value[x] only boolean
* extension[adaptive].value[x] only boolean
