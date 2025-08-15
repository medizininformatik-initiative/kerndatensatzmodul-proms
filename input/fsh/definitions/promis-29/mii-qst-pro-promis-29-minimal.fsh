Instance: mii-qst-pro-promis-29-minimal
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PROMIS-29 Minimal"
Description: "PROMIS-29 Profile v2.1 - Minimal variant for data collection without calculated expressions"
Usage: #definition

* url = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29-minimal"
* status = #active
* experimental = true
* language = #de
* version = "2.1.0-minimal"
* code = $LNC#71968-5 "PROMIS-29 Profile v2.1"

// Capabilities: displayable, collectable only
* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = false
* extension[capabilities].extension[extractable].valueBoolean = false
* extension[capabilities].extension[populatable].valueBoolean = false

// Derivation from full PROMIS-29
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-derivationType"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/questionnaire-derivationType#compliesWithProfile

* derivedFrom = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29"

// Main container
* item[+].linkId = "PROMIS-29"
* item[=].type = #group
* item[=].text = "PROMIS-29 Profile v2.1"

// Instructions
* item[=].item[+].linkId = "PROMIS-29.Instructions"
* item[=].item[=].type = #display
* item[=].item[=].text = "Please respond to each question or statement by marking one box per row. In the past 7 days..."
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].extension[=].extension[+].url = "lang"
* item[=].item[=].extension[=].extension[=].valueCode = #de
* item[=].item[=].extension[=].extension[+].url = "content"
* item[=].item[=].extension[=].extension[=].valueString = "Bitte beantworten Sie jede Frage oder Aussage, indem Sie ein Kästchen pro Zeile markieren. In den letzten 7 Tagen..."

// ===== Physical Function Domain (4 items) =====
* item[=].item[+].linkId = "PROMIS-29.PhysicalFunction"
* item[=].item[=].type = #group
* item[=].item[=].text = "Physical Function"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].extension[=].extension[+].url = "lang"
* item[=].item[=].extension[=].extension[=].valueCode = #de
* item[=].item[=].extension[=].extension[+].url = "content"
* item[=].item[=].extension[=].extension[=].valueString = "Körperliche Funktion"

// PFA11 - Chores like vacuuming
* item[=].item[=].item[+].linkId = "promis-pfa11"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $LNC#61597-1
* item[=].item[=].item[=].text = "Are you able to do chores such as vacuuming or yard work?"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].item[=].extension[=].extension[+].url = "lang"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #de
* item[=].item[=].item[=].extension[=].extension[+].url = "content"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "Sind Sie in der Lage, Hausarbeiten wie Staubsaugen oder Gartenarbeit zu erledigen?"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale"

// PFA21 - Go up and down stairs
* item[=].item[=].item[+].linkId = "promis-pfa21"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $LNC#61598-9
* item[=].item[=].item[=].text = "Are you able to go up and down stairs at a normal pace?"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].item[=].extension[=].extension[+].url = "lang"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #de
* item[=].item[=].item[=].extension[=].extension[+].url = "content"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "Sind Sie in der Lage, in normalem Tempo Treppen hinauf- und hinunterzugehen?"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale"

// PFA23 - Walk 15 minutes
* item[=].item[=].item[+].linkId = "promis-pfa23"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $LNC#61593-0
* item[=].item[=].item[=].text = "Are you able to go for a walk of at least 15 minutes?"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].item[=].extension[=].extension[+].url = "lang"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #de
* item[=].item[=].item[=].extension[=].extension[+].url = "content"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "Sind Sie in der Lage, mindestens 15 Minuten spazieren zu gehen?"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale"

// PFA53 - Run errands
* item[=].item[=].item[+].linkId = "promis-pfa53"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $LNC#61596-3
* item[=].item[=].item[=].text = "Are you able to run errands and shop?"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].item[=].extension[=].extension[+].url = "lang"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #de
* item[=].item[=].item[=].extension[=].extension[+].url = "content"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "Sind Sie in der Lage, Besorgungen zu machen und einzukaufen?"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-physical-function-response-scale"

// ===== Anxiety Domain (4 items) =====
* item[=].item[+].linkId = "PROMIS-29.Anxiety"
* item[=].item[=].type = #group
* item[=].item[=].text = "Anxiety"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].extension[=].extension[+].url = "lang"
* item[=].item[=].extension[=].extension[=].valueCode = #de
* item[=].item[=].extension[=].extension[+].url = "content"
* item[=].item[=].extension[=].extension[=].valueString = "Angst"

// EDANX01 - Feel fearful
* item[=].item[=].item[+].linkId = "promis-edanx01"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $LNC#71951-1
* item[=].item[=].item[=].text = "I felt fearful"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].item[=].extension[=].extension[+].url = "lang"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #de
* item[=].item[=].item[=].extension[=].extension[+].url = "content"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "Ich fühlte mich ängstlich"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"

// EDANX40 - Anxious
* item[=].item[=].item[+].linkId = "promis-edanx40"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $LNC#71949-5
* item[=].item[=].item[=].text = "I found it hard to focus on anything other than my anxiety"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].item[=].extension[=].extension[+].url = "lang"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #de
* item[=].item[=].item[=].extension[=].extension[+].url = "content"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "Ich fand es schwer, mich auf etwas anderes als meine Angst zu konzentrieren"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"

// EDANX41 - Worries overwhelmed
* item[=].item[=].item[+].linkId = "promis-edanx41"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $LNC#71950-3
* item[=].item[=].item[=].text = "My worries overwhelmed me"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].item[=].extension[=].extension[+].url = "lang"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #de
* item[=].item[=].item[=].extension[=].extension[+].url = "content"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "Meine Sorgen überwältigten mich"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"

// EDANX53 - Uneasy
* item[=].item[=].item[+].linkId = "promis-edanx53"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $LNC#71948-7
* item[=].item[=].item[=].text = "I felt uneasy"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].item[=].extension[=].extension[+].url = "lang"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #de
* item[=].item[=].item[=].extension[=].extension[+].url = "content"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "Ich fühlte mich unruhig"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-promis-frequency-response-scale"

// Continue with Depression, Fatigue, Sleep, Social Function, and Pain domains...
// This minimal variant removes all calculated expressions and uses ValueSet references
// Making it cleaner and focused on data collection only