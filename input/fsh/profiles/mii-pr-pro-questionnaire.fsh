Profile: MII_PR_PRO_Questionnaire
Parent: SDCQuestionnaireCommon
Id: mii-pr-pro-questionnaire
Title: "MII PR PRO Questionnaire"  
Description: "MII PR PRO Questionnaire, based on the FHIR Structure Data Capture Specification"

* ^status = #draft
* ^experimental = true
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
* code[mii].system = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue" (exactly)
