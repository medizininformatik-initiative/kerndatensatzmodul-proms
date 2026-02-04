Profile: MII_PR_PRO_Questionnaire
Parent: http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire
Id: mii-pr-pro-questionnaire
Title: "MII PR PRO Questionnaire"  
Description: "MII PR PRO Questionnaire, based on the FHIR Structure Data Capture Specification"

* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* version 1..1 MS 


* extension contains mii-ex-pro-questionnaire-capabilities named capabilities 1..1 MS
* extension[capabilities] MS

* copyright MS 
* item MS
* derivedFrom MS
* code MS 
* code 1..*

* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "system"
* code ^slicing.rules = #open
* code ^slicing.description = "Different code systems for the same questionnaire"
* code ^slicing.ordered = false
* code contains
    snomed 0..1 and
    loinc 0..1 and
    mii 0..1

* code[loinc].code 1..1 MS
* code[loinc].system 1..1 MS
* code[loinc].system = "http://loinc.org" (exactly)
* code[snomed].code 1..1 MS
* code[snomed].system 1..1 MS
* code[snomed].system = "http://snomed.info/sct" (exactly)
* code[mii].code 1..1 MS
* code[mii].system 1..1 MS
* code[mii].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue" (exactly)