/*Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

CodeSystem: CodeSystemCSPHQ9
Id: CSPHQ9
Title: "SDC-CodeSystem PHQ9"
Description: "The answer list for questions 1 through 9 on the Patient Health Questionnaire (9 item) form"
* ^meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-codesystem"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.17.16.1"
* ^version = "4.0.0-ballot"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 International / FHIR Infrastructure"
* ^contact[0].name = "HL7 International / FHIR Infrastructure"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/fiwg"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/fiwg"
* ^jurisdiction = $m49.htm#001 "World"
* ^caseSensitive = true
* ^content = #complete
* ^count = 4
* ^property.code = #itemWeight
* ^property.uri = "http://hl7.org/fhir/concept-properties#itemWeight"
* ^property.type = #decimal
* #Not-at-all "Not at all"
* #Not-at-all ^property.code = #itemWeight
* #Not-at-all ^property.valueDecimal = 0
* #Several-days "Several days"
* #Several-days ^property.code = #itemWeight
* #Several-days ^property.valueDecimal = 1
* #"More than half the days" "More than half the days"
* #"More than half the days" ^property.code = #itemWeight
* #"More than half the days" ^property.valueDecimal = 2
* #"Nearly every day" "Nearly every day"
* #"Nearly every day" ^property.code = #itemWeight
* #"Nearly every day" ^property.valueDecimal = 4
*/