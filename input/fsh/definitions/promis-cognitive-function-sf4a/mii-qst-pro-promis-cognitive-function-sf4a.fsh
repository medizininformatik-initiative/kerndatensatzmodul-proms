Instance: mii-qst-pro-promis-cognitive-function-sf4a
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PROMIS Cognitive Function SF 4a"
Description: "PROMIS Cognitive Function Short Form 4a - Assessment of cognitive abilities and concerns"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)
* insert PROMIS_Copyright_DE

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a"
* status = #active
* experimental = true
* language = #en
* code[+] = $LNC#81525-8 "PROMIS short form - cognitive function - abilities subset 4a - version 2.0"
* code[+] = $mii-cs-pro-questionnaire-catalogue#promis-cognitive-function-sf4a "PROMIS Cognitive Function Abilities 4a Short Form Questionnaire"

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true

// Define variable for raw score calculation (reverse scored items)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "cognitiveRawScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.item.where(linkId.matches('^promis-cognition-(pc2r|pc35r|pc36r|pc42r)$')).answer.value.ordinal().sum()"

// Main questionnaire item
* item[+].linkId = "PROMIS-CognitiveFunction-SF4a"
* item[=].type = #group
* item[=].text = "PROMIS Kognitive Funktion SF 4a"

* item[=].item[+].linkId = "PROMIS-CognitiveFunction-SF4a.Instructions"
* item[=].item[=].type = #display
* item[=].item[=].text = "In the past 7 days"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "In den letzten 7 Tagen:"

// Item 1: PC2r - Slow thinking
* item[=].item[+].linkId = "promis-cognition-pc2r"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#81461-6 "My thinking has been slow in past 7 days [PROMIS]"
* item[=].item[=].text = "My thinking has been slow"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Ich war langsam beim Denken"
* item[=].item[=].required = true
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten (einmal)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal (zwei- oder dreimal)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft (ungefähr einmal täglich)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr oft (mehrmals täglich)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1

// Item 2: PC35r - Brain not functioning well
* item[=].item[+].linkId = "promis-cognition-pc35r"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#81478-0 "It has seemed like my brain was not working as well as usual in past 7 days [PROMIS]"
* item[=].item[=].text = "It has seemed like my brain was not working as well as usual"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Es kam mir so vor, als ob mein Gehirn nicht so gut wie sonst funktionierte"
* item[=].item[=].required = true
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten (einmal)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal (zwei- oder dreimal)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft (ungefähr einmal täglich)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr oft (mehrmals täglich)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1

// Item 3: PC36r - Need more effort to keep track
* item[=].item[+].linkId = "promis-cognition-pc36r"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#81479-8 "I have had to work harder than usual to keep track of what I was doing in past 7 days [PROMIS]"
* item[=].item[=].text = "I have had to work harder than usual to keep track of what I was doing"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Ich musste mir größere Mühe geben als sonst, um den Überblick über das zu bewahren, womit ich gerade beschäftigt war"
* item[=].item[=].required = true
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten (einmal)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal (zwei- oder dreimal)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft (ungefähr einmal täglich)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr oft (mehrmals täglich)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1

// Item 4: PC42r - Difficulty switching between activities
* item[=].item[+].linkId = "promis-cognition-pc42r"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#81485-5 "I have had trouble shifting back and forth between different activities that require thinking in past 7 days [PROMIS]"
* item[=].item[=].text = "I have had trouble shifting back and forth between different activities that require thinking"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Ich hatte Schwierigkeiten, zwischen verschiedenen Aktivitäten, die ein gewisses Nachdenken erfordern, hin und her zu wechseln"
* item[=].item[=].required = true
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten (einmal)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal (zwei- oder dreimal)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft (ungefähr einmal täglich)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr oft (mehrmals täglich)"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1

// Calculated raw score (4-20 range, reverse scored)
* item[=].item[+].linkId = "promis-cognition-sf4a-raw-score"
* item[=].item[=].type = #quantity
* item[=].item[=].code = $LNC#81533-2 "PROMIS short form - cognitive function 4a - version 2.0 raw score"
* item[=].item[=].text = "PROMIS Cognitive Function SF 4a Raw Score"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "PROMIS Kognitive Funktion SF 4a Rohwert"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%cognitiveRawScore"

// T-Score calculation (would need lookup table for accurate conversion)
* item[=].item[+].linkId = "promis-cognition-sf4a-t-score"
* item[=].item[=].type = #quantity
* item[=].item[=].code = $LNC#81538-1 "PROMIS cognitive function - version 2.0 T-score"
* item[=].item[=].text = "PROMIS Cognitive Function SF 4a T-Score"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "PROMIS Kognitive Funktion SF 4a T-Score"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
// T-Score conversion based on PROMIS Cognitive Function Scoring Manual (June 2022)
* item[=].item[=].extension[=].valueExpression.expression = "iif(%cognitiveRawScore=4, 24.99, iif(%cognitiveRawScore=5, 28.95, iif(%cognitiveRawScore=6, 31.07, iif(%cognitiveRawScore=7, 32.94, iif(%cognitiveRawScore=8, 34.61, iif(%cognitiveRawScore=9, 36.17, iif(%cognitiveRawScore=10, 37.69, iif(%cognitiveRawScore=11, 39.19, iif(%cognitiveRawScore=12, 40.70, iif(%cognitiveRawScore=13, 42.25, iif(%cognitiveRawScore=14, 43.86, iif(%cognitiveRawScore=15, 45.54, iif(%cognitiveRawScore=16, 47.33, iif(%cognitiveRawScore=17, 49.28, iif(%cognitiveRawScore=18, 51.62, iif(%cognitiveRawScore=19, 54.58, iif(%cognitiveRawScore=20, 61.13, 50.0)))))))))))))))))"