Profile: MII_PR_PRO_QuestionnaireResponse
Parent: http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse
Id: mii-pr-pro-questionnaire-response
Title: "MII PR PRO QuestionnaireResponse"  
Description: "MII PR PRO QuestionnaireResponse, based on the FHIR Structure Data Capture Specification"


* insert PR_CS_VS_Version
* ^status = #active
* language MS
// Collection context (HDB-1030): when in the course of care/study the collection was triggered.
* extension contains MII_EX_PRO_Collection_Context named collectionContext 0..1 MS
* extension[collectionContext] ^short = "Collection context: trigger event / protocol position"
* basedOn MS
* basedOn ^short = "Collection plan (CarePlan / ServiceRequest), e.g. the participant plan of a study"
* encounter MS
* encounter ^short = "Encounter / treatment episode during which the collection took place"
* language ^short = "Sprache der Antwortinhalte"

// Item-Texte und Antwort-Displays: Must-Support mit translation-Extension
// für deutsche Übersetzungen. Eine VERPFLICHTUNG (1..1 + Invarianten auf
// deutsche Verfügbarkeit) war implementiert, ist aber vor der Ballotierung
// zurückgestellt — Zielkonflikt mit Tier-B-/Metadata-only-Instrumenten
// (lizenzbeschränkte Wortlaute, Papier-Workflows). Zur Kommentierung gestellt.
* item MS
* item.text MS
* item.text ^short = "Wortlaut des Items, wie er der antwortenden Person präsentiert wurde"
* item.text.extension contains http://hl7.org/fhir/StructureDefinition/translation named translation 0..* MS
* item.answer MS
* item.answer.value[x] MS
* item.answer.valueCoding.display MS
* item.answer.valueCoding.display ^short = "Wortlaut der gewählten Antwort"
* item.answer.valueCoding.display.extension contains http://hl7.org/fhir/StructureDefinition/translation named translation 0..* MS
