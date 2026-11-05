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
// Gewichte (Beads g3b.18): die itemWeight-Extension gehört an die answerOption selbst,
// nicht an deren valueCoding — Form-Renderer (LHC-Forms/fhirpath.js) lesen sie nur dort.
// Vollständigkeit der Gewichte ist bewusst NICHT profiliert (sie können auch als Property
// am MII-CodeSystem liegen, was FHIRPath im Validator nicht sehen kann); das prüft der
// Laufzeit-Guard scripts/scoring-smoke.test.mjs.
* item.answerOption.extension contains http://hl7.org/fhir/StructureDefinition/itemWeight named itemWeight 0..1 MS
* item.answerOption.extension[itemWeight] ^short = "Scoring weight of this option (SDC .weight())"
* item.answerOption.valueCoding.extension contains http://hl7.org/fhir/StructureDefinition/itemWeight named itemWeightOnCoding 0..0
* item.answerOption.valueCoding.extension[itemWeightOnCoding] ^short = "Not allowed here: put itemWeight on the answerOption, not on its Coding"
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