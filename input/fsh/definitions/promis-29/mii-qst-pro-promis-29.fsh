Instance: mii-qst-pro-promis-29
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PROMIS-29 (Adults)"
Description: "PROMIS-29 Profile v2.1 - Comprehensive health-related quality of life assessment across 7 domains"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)
* insert PROMIS_Copyright_DE

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29"
* status = #active
* experimental = true
* language = #en
// versionAlgorithm is an R5 element - not available in R4
// * extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.versionAlgorithm[x]"
// * extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver
* code[+] = $LNC#62337-1 "PROMIS item bank - 29 profile"
* code[+] = $mii-cs-pro-questionnaire-catalogue#promis-promis29 "PROMIS-29 Questionnaire"

// Reference to PROMIS-29 Documentation
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueReference.reference = "https://www.healthmeasures.net/explore-measurement-systems/promis"
* useContext[=].valueReference.display = "PROMIS-29 Profile Documentation"

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Define variables for domain score calculations
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "physicalFunctionRaw"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.item.where(linkId.matches('^promis-pfa(11|21|23|53)$')).answer.value.ordinal().sum()"

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "anxietyRaw"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.item.where(linkId.matches('^promis-edanx(01|40|41|53)$')).answer.value.ordinal().sum()"

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "depressionRaw"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.item.where(linkId.matches('^promis-eddep(04|06|29|41)$')).answer.value.ordinal().sum()"

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "fatigueRaw"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.item.where(linkId.matches('^promis-(hi7|an3|fatexp41|fatexp40)$')).answer.value.ordinal().sum()"

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "sleepRaw"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.item.where(linkId.matches('^promis-(sleep109|sleep116|sleep20|sleep44)$')).answer.value.ordinal().sum()"

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "socialRaw"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.item.where(linkId.matches('^promis-srpper(11-caps|18-caps|23-caps|46-caps)$')).answer.value.ordinal().sum()"

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "painInterferenceRaw"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.item.where(linkId.matches('^promis-painin(9|22|31|34)$')).answer.value.ordinal().sum()"

// ===== PHYSICAL FUNCTION DOMAIN =====
* item[+].linkId = "PROMIS-29.PhysicalFunction"
* item[=].type = #group
* item[=].text = "KÖRPERLICHE FUNKTION"

* item[=].item[+].linkId = "PROMIS-29.PhysicalFunction.Description"
* item[=].item[=].type = #display
* item[=].item[=].text = "Sind Sie zu folgenden Tätigkeiten imstande:"

// Physical Function Item 1
* item[=].item[+].linkId = "promis-pfa11"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61597-1 "Are you able to do chores such as vacuuming or yard work [PROMIS]"
* item[=].item[=].text = "Are you able to do chores such as vacuuming or yard work [PROMIS]"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Können Sie Hausarbeiten erledigen, z.B. Staubsaugen oder Gartenarbeit?"
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13912-3 "Unable to do"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Kann ich gar nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13919-8 "With much difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mit großen Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13920-6 "With some difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mit einigen Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13918-0 "With a little difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mit geringen Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13921-4 "Without any difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ohne jede Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Physical Function Item 2
* item[=].item[+].linkId = "promis-pfa21"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61607-8 "Are you able to go up and down stairs at a normal pace [PROMIS]"
* item[=].item[=].text = "Are you able to go up and down stairs at a normal pace [PROMIS]"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Können Sie mit normaler Geschwindigkeit Treppen hoch- und runtergehen?"
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13912-3 "Unable to do"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Kann ich gar nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13919-8 "With much difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mit großen Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13920-6 "With some difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mit einigen Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13918-0 "With a little difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mit geringen Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13921-4 "Without any difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ohne jede Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Physical Function Item 3
* item[=].item[+].linkId = "promis-pfa23"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61609-4 "Are you able to go for a walk of at least 15 minutes [PROMIS]"
* item[=].item[=].text = "Are you able to go for a walk of at least 15 minutes [PROMIS]"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Können Sie mindestens 15 Minuten lang spazieren gehen?"
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13912-3 "Unable to do"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Kann ich gar nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13919-8 "With much difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mit großen Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13920-6 "With some difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mit einigen Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13918-0 "With a little difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mit geringen Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13921-4 "Without any difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ohne jede Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Physical Function Item 4
* item[=].item[+].linkId = "promis-pfa53"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61635-9 "Are you able to run errands and shop [PROMIS]"
* item[=].item[=].text = "Are you able to run errands and shop [PROMIS]"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].text.extension[=].extension[+].url = "lang"
* item[=].item[=].text.extension[=].extension[=].valueCode = #de
* item[=].item[=].text.extension[=].extension[+].url = "content"
* item[=].item[=].text.extension[=].extension[=].valueString = "Können Sie Besorgungen machen und einkaufen gehen?"
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13912-3 "Unable to do"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Kann ich gar nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13919-8 "With much difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mit großen Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13920-6 "With some difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mit einigen Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13918-0 "With a little difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mit geringen Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13921-4 "Without any difficulty"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ohne jede Schwierigkeiten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// ===== ANXIETY DOMAIN =====
* item[+].linkId = "PROMIS-29.Anxiety"
* item[=].type = #group
* item[=].text = "ANGST"

* item[=].item[+].linkId = "PROMIS-29.Anxiety.Description"
* item[=].item[=].type = #display
* item[=].item[=].text = "In den letzten 7 Tagen:"

// Anxiety Item 1
* item[=].item[+].linkId = "promis-edanx01"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61923-9 "I felt fearful in past 7 days [PROMIS]"
* item[=].item[=].text = "Ich fürchtete mich."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Anxiety Item 2
* item[=].item[+].linkId = "promis-edanx40"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61941-1 "I found it hard to focus on anything other than my anxiety in past 7 days"
* item[=].item[=].text = "Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Anxiety Item 3
* item[=].item[+].linkId = "promis-edanx41"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61942-9 "My worries overwhelmed me in past 7 days"
* item[=].item[=].text = "Meine Sorgen haben mich überwältigt."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Anxiety Item 4
* item[=].item[+].linkId = "promis-edanx53"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61949-4 "I felt uneasy in past 7 days"
* item[=].item[=].text = "Ich fühlte mich unruhig."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// ===== DEPRESSION DOMAIN =====
* item[+].linkId = "PROMIS-29.Depression"
* item[=].type = #group
* item[=].text = "DEPRESSION"

* item[=].item[+].linkId = "PROMIS-29.Depression.Description"
* item[=].item[=].type = #display
* item[=].item[=].text = "In den letzten 7 Tagen:"

// Depression Item 1
* item[=].item[+].linkId = "promis-eddep04"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61953-6 "I felt worthless in past 7 days [PROMIS]"
* item[=].item[=].text = "Ich fühlte mich wertlos."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Depression Item 2
* item[=].item[+].linkId = "promis-eddep06"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61955-1 "I felt helpless in past 7 days [PROMIS]"
* item[=].item[=].text = "Ich fühlte mich hilflos."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Depression Item 3
* item[=].item[+].linkId = "promis-eddep29"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61967-6 "I felt depressed in past 7 days [PROMIS]"
* item[=].item[=].text = "Ich fühlte mich niedergeschlagen."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Depression Item 4
* item[=].item[+].linkId = "promis-eddep41"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61973-4 "I felt hopeless in past 7 days [PROMIS]"
* item[=].item[=].text = "Ich fühlte mich hoffnungslos."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// ===== FATIGUE DOMAIN =====
* item[+].linkId = "PROMIS-29.Fatigue"
* item[=].type = #group
* item[=].text = "ERSCHÖPFUNG"

* item[=].item[+].linkId = "PROMIS-29.Fatigue.Description"
* item[=].item[=].type = #display
* item[=].item[=].text = "In den letzten 7 Tagen:"

// Fatigue Item 1
* item[=].item[+].linkId = "promis-hi7"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61878-5 "I feel fatigued during the past 7 days [PROMIS]"
* item[=].item[=].text = "Ich bin erschöpft."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Überhaupt nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13863-8 "A little bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ein wenig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13909-9 "Somewhat"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mäßig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13902-4 "Quite a bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ziemlich"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Fatigue Item 2
* item[=].item[+].linkId = "promis-an3"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61882-7 "I had trouble starting things because I was tired in past 7 days [PROMIS]"
* item[=].item[=].text = "Es fällt mir schwer, etwas anzufangen, weil ich müde bin."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Überhaupt nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13863-8 "A little bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ein wenig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13909-9 "Somewhat"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mäßig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13902-4 "Quite a bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ziemlich"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Fatigue Item 3
* item[=].item[+].linkId = "promis-fatexp41"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61863-7 "How fatigued were you on the day you felt most fatigued in past 7 days [PROMIS]"
* item[=].item[=].text = "Wie ausgelaugt fühlten Sie sich im Allgemeinen?"
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Überhaupt nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13863-8 "A little bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ein wenig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13909-9 "Somewhat"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mäßig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13902-4 "Quite a bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ziemlich"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Fatigue Item 4
* item[=].item[+].linkId = "promis-fatexp40"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61864-5 "How fatigued were you on average in past 7 days [PROMIS]"
* item[=].item[=].text = "Wie erschöpft waren Sie im Allgemeinen?"
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Überhaupt nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13863-8 "A little bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ein wenig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13909-9 "Somewhat"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mäßig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13902-4 "Quite a bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ziemlich"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// ===== SLEEP DISTURBANCE DOMAIN =====
* item[+].linkId = "PROMIS-29.Sleep"
* item[=].type = #group
* item[=].text = "SCHLAFSTÖRUNGEN"

* item[=].item[+].linkId = "PROMIS-29.Sleep.Description"
* item[=].item[=].type = #display
* item[=].item[=].text = "In den letzten 7 Tagen:"

// Sleep Item 1
* item[=].item[+].linkId = "promis-sleep109"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61987-4 "My sleep quality was...in past 7 days [PROMIS]"
* item[=].item[=].text = "Meine Schlafqualität war ..."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9615-1 "Very poor"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr schlecht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA8969-3 "Poor"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Schlecht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA8968-5 "Fair"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mäßig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA8967-7 "Good"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Gut"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13913-1 "Very Good"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr gut"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1

// Sleep Item 2
* item[=].item[+].linkId = "promis-sleep116"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61986-6 "My sleep was refreshing in past 7 days [PROMIS]"
* item[=].item[=].text = "Mein Schlaf war erfrischend."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Überhaupt nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13863-8 "A little bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ein wenig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13909-9 "Somewhat"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mäßig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13902-4 "Quite a bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ziemlich"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1

// Sleep Item 3
* item[=].item[+].linkId = "promis-sleep20"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61998-1 "I had a problem with my sleep 7 days [PROMIS]"
* item[=].item[=].text = "Ich hatte Schlafprobleme."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Überhaupt nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13863-8 "A little bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ein wenig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13909-9 "Somewhat"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mäßig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13902-4 "Quite a bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ziemlich"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Sleep Item 4
* item[=].item[+].linkId = "promis-sleep44"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61999-9 "I had difficulty falling asleep in past 7 days [PROMIS]"
* item[=].item[=].text = "Ich hatte Schwierigkeiten einzuschlafen."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Überhaupt nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13863-8 "A little bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ein wenig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13909-9 "Somewhat"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mäßig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13902-4 "Quite a bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ziemlich"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// ===== SOCIAL FUNCTION DOMAIN =====
* item[+].linkId = "PROMIS-29.Social"
* item[=].type = #group
* item[=].text = "SOZIALE TEILHABE"

* item[=].item[+].linkId = "PROMIS-29.Social.Description"
* item[=].item[=].type = #display
* item[=].item[=].text = "In den letzten 7 Tagen:"

// Social Function Item 1
* item[=].item[+].linkId = "promis-srpper23-caps"
* item[=].item[=].type = #choice
// TODO: LOINC code for SRPPER23-CaPS "I have trouble doing all of my usual work" needs verification (was 62041-9 = different item "satisfied with work")
* item[=].item[=].code = $LNC#76709-5 "I have trouble doing all of my usual work (include work at home) [PROMIS]"
* item[=].item[=].text = "Es fällt mir schwer, meine gewohnte Arbeit zu erledigen (einschließlich der Arbeit zu Hause)."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Social Function Item 2
* item[=].item[+].linkId = "promis-srpper11-caps"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#75417-6 "I have trouble doing all of my regular leisure activities with others [PROMIS]"
* item[=].item[=].text = "Es fällt mir schwer, allen meinen regelmäßigen Freizeitaktivitäten mit anderen nachzugehen."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6270-8 "Never"
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
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1

// Social Function Item 3
* item[=].item[+].linkId = "promis-srpper18-caps"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#76708-7 "I have trouble doing all of the family activities that I want to do [PROMIS]"
* item[=].item[=].text = "Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit meiner Familie machen möchte."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6270-8 "Never"
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
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
/*
// Social Function Item 5 (seems to be missing from your list, adding based on typical PROMIS-29)
// Social Function Item 4
* item[=].item[+].linkId = "promis-"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#76709-5 "I have trouble doing all of my usual work (include work at home)"
* item[=].item[=].text = "...hatte ich Schwierigkeiten, alle meine üblichen Arbeiten zu erledigen (einschließlich Hausarbeit)"
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6270-8 "Never"
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
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
*/
* item[=].item[+].linkId = "promis-srpper46-caps"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#76712-9 "I have trouble doing all of the activities with friends that I want to do [PROMIS]"
* item[=].item[=].text = "Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte."
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6270-8 "Never"
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
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA10044-8 "Often"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1

// ===== PAIN INTERFERENCE DOMAIN =====
* item[+].linkId = "PROMIS-29.PainInterference"
* item[=].type = #group
* item[=].text = "SCHMERZBEDINGTE BEEINTRÄCHTIGUNG"

* item[=].item[+].linkId = "PROMIS-29.PainInterference.Description"
* item[=].item[=].type = #display
* item[=].item[=].text = "In den letzten 7 Tagen: Inwieweit beeinträchtigten Schmerzen..."

// Pain Interference Item 1
* item[=].item[+].linkId = "promis-painin9"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61758-9 "How much did pain interfere with your day to day activities in past 7 days [PROMIS]"
* item[=].item[=].text = "Wie sehr beeinträchtigen Schmerzen Ihre Alltagsaktivitäten?"
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Überhaupt nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13863-8 "A little bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ein wenig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13909-9 "Somewhat"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mäßig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13902-4 "Quite a bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ziemlich"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Pain Interference Item 2
* item[=].item[+].linkId = "promis-painin22"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61769-6 "How much did pain interfere with work around the home in past 7 days [PROMIS]"
* item[=].item[=].text = "Wie sehr beeinträchtigen Schmerzen Ihre häuslichen Tätigkeiten?"
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Überhaupt nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13863-8 "A little bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ein wenig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13909-9 "Somewhat"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mäßig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13902-4 "Quite a bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ziemlich"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Pain Interference Item 3
* item[=].item[+].linkId = "promis-painin31"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61773-8 "How much did pain interfere with your ability to participate in social activities in past 7 days [PROMIS]"
* item[=].item[=].text = "Wie sehr beeinträchtigen Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen?"
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Überhaupt nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13863-8 "A little bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ein wenig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13909-9 "Somewhat"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mäßig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13902-4 "Quite a bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ziemlich"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// Pain Interference Item 4
* item[=].item[+].linkId = "promis-painin34"
* item[=].item[=].type = #choice
* item[=].item[=].code = $LNC#61775-3 "How much did pain interfere with your household chores in past 7 days [PROMIS]"
* item[=].item[=].text = "Wie sehr beeinträchtigen Schmerzen Sie bei Ihrer Hausarbeit?"
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Überhaupt nicht"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13863-8 "A little bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ein wenig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13909-9 "Somewhat"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Mäßig"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13902-4 "Quite a bit"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Ziemlich"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].answerOption[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[=].answerOption[=].valueCoding.display.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].item[=].answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Sehr"
* item[=].item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 5

// ===== PAIN INTENSITY DOMAIN =====
* item[+].linkId = "PROMIS-29.PainIntensity"
* item[=].type = #group
* item[=].text = "SCHMERZINTENSITÄT"

// Pain Intensity Item (0-10 Scale)
* item[=].item[+].linkId = "promis-global07"
* item[=].item[=].type = #integer
* item[=].item[=].code = $LNC#61583-1 "How would you rate your pain on average in past 7 days [PROMIS]"
* item[=].item[=].text = "Wie würden Sie Ihre Schmerzen im Allgemeinen einschätzen?"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension[=].valueCoding = $UCUM#{score} "{score}"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 10

// ===== DOMAIN SCORES =====
* item[+].linkId = "PROMIS-29.Scores"
* item[=].type = #group
* item[=].text = "BEREICHS-BEWERTUNGEN"

// Physical Function Raw Score
* item[=].item[+].linkId = "promis-29-physical-function-raw"
* item[=].item[=].type = #decimal
* item[=].item[=].code = $LNC#71960-9 "PROMIS-29 Physical function score"
* item[=].item[=].text = "PROMIS-29 Körperliche Funktion - Rohwert"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension[=].valueCoding = $UCUM#{score} "{score}"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%physicalFunctionRaw"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Physical Function T-Score
* item[=].item[+].linkId = "promis-29-physical-function-tscore"
* item[=].item[=].type = #decimal
* item[=].item[=].code = $LNC#91721-1 "PROMIS physical function - version 2.0 T-score"
* item[=].item[=].text = "PROMIS-29 Körperliche Funktion - T-Score"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "iif(%physicalFunctionRaw=4, 24.5, iif(%physicalFunctionRaw=5, 28.0, iif(%physicalFunctionRaw=6, 30.6, iif(%physicalFunctionRaw=7, 32.8, iif(%physicalFunctionRaw=8, 34.7, iif(%physicalFunctionRaw=9, 36.5, iif(%physicalFunctionRaw=10, 38.1, iif(%physicalFunctionRaw=11, 39.7, iif(%physicalFunctionRaw=12, 41.2, iif(%physicalFunctionRaw=13, 42.6, iif(%physicalFunctionRaw=14, 44.0, iif(%physicalFunctionRaw=15, 45.4, iif(%physicalFunctionRaw=16, 46.8, iif(%physicalFunctionRaw=17, 48.2, iif(%physicalFunctionRaw=18, 49.6, iif(%physicalFunctionRaw=19, 51.1, iif(%physicalFunctionRaw=20, 52.6, {})))))))))))))))))"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Anxiety Raw Score  
* item[=].item[+].linkId = "promis-29-anxiety-raw"
* item[=].item[=].type = #decimal
* item[=].item[=].code = $LNC#71968-2 "PROMIS-29 Anxiety score"
* item[=].item[=].text = "PROMIS-29 Angst - Rohwert"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension[=].valueCoding = $UCUM#{score} "{score}"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%anxietyRaw"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Anxiety T-Score
* item[=].item[+].linkId = "promis-29-anxiety-tscore"
* item[=].item[=].type = #decimal
* item[=].item[=].code = $LNC#71967-4 "PROMIS-29 Anxiety score T-score"
* item[=].item[=].text = "PROMIS-29 Angst - T-Score"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "iif(%anxietyRaw=4, 38.2, iif(%anxietyRaw=5, 44.7, iif(%anxietyRaw=6, 48.8, iif(%anxietyRaw=7, 51.9, iif(%anxietyRaw=8, 54.5, iif(%anxietyRaw=9, 56.8, iif(%anxietyRaw=10, 58.9, iif(%anxietyRaw=11, 60.9, iif(%anxietyRaw=12, 62.8, iif(%anxietyRaw=13, 64.7, iif(%anxietyRaw=14, 66.6, iif(%anxietyRaw=15, 68.6, iif(%anxietyRaw=16, 70.7, iif(%anxietyRaw=17, 72.9, iif(%anxietyRaw=18, 75.4, iif(%anxietyRaw=19, 78.5, iif(%anxietyRaw=20, 83.1, {})))))))))))))))))"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Depression Raw Score
* item[=].item[+].linkId = "promis-29-depression-raw"
* item[=].item[=].type = #decimal
* item[=].item[=].code = $LNC#71966-6 "PROMIS-29 Depression score"
* item[=].item[=].text = "PROMIS-29 Depression - Rohwert"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension[=].valueCoding = $UCUM#{score} "{score}"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%depressionRaw"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Depression T-Score
* item[=].item[+].linkId = "promis-29-depression-tscore"
* item[=].item[=].type = #decimal
* item[=].item[=].code = $LNC#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* item[=].item[=].text = "PROMIS-29 Depression - T-Score"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "iif(%depressionRaw=4, 41.0, iif(%depressionRaw=5, 49.0, iif(%depressionRaw=6, 51.8, iif(%depressionRaw=7, 53.9, iif(%depressionRaw=8, 55.7, iif(%depressionRaw=9, 57.3, iif(%depressionRaw=10, 58.9, iif(%depressionRaw=11, 60.5, iif(%depressionRaw=12, 62.2, iif(%depressionRaw=13, 63.9, iif(%depressionRaw=14, 65.7, iif(%depressionRaw=15, 67.5, iif(%depressionRaw=16, 69.4, iif(%depressionRaw=17, 71.2, iif(%depressionRaw=18, 73.3, iif(%depressionRaw=19, 75.7, iif(%depressionRaw=20, 79.4, {})))))))))))))))))"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Fatigue Raw Score
* item[=].item[+].linkId = "promis-29-fatigue-raw"
* item[=].item[=].type = #decimal
* item[=].item[=].code = $LNC#71964-1 "PROMIS-29 Fatigue score"
* item[=].item[=].text = "PROMIS-29 Erschöpfung - Rohwert"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension[=].valueCoding = $UCUM#{score} "{score}"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%fatigueRaw"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Fatigue T-Score
* item[=].item[+].linkId = "promis-29-fatigue-tscore"
* item[=].item[=].type = #decimal
* item[=].item[=].code = $LNC#77864-7 "PROMIS fatigue - version 1.0 Tscore"
* item[=].item[=].text = "PROMIS-29 Erschöpfung - T-Score"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "iif(%fatigueRaw=4, 33.7, iif(%fatigueRaw=5, 40.3, iif(%fatigueRaw=6, 44.4, iif(%fatigueRaw=7, 47.6, iif(%fatigueRaw=8, 50.2, iif(%fatigueRaw=9, 52.5, iif(%fatigueRaw=10, 54.7, iif(%fatigueRaw=11, 56.8, iif(%fatigueRaw=12, 58.8, iif(%fatigueRaw=13, 60.8, iif(%fatigueRaw=14, 62.8, iif(%fatigueRaw=15, 64.9, iif(%fatigueRaw=16, 67.1, iif(%fatigueRaw=17, 69.4, iif(%fatigueRaw=18, 72.0, iif(%fatigueRaw=19, 75.0, iif(%fatigueRaw=20, 78.8, {})))))))))))))))))"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Sleep Disturbance Raw Score
* item[=].item[+].linkId = "promis-29-sleep-raw"
* item[=].item[=].type = #decimal
* item[=].item[=].code = $LNC#71956-7 "PROMIS-29 Sleep disturbance score"
* item[=].item[=].text = "PROMIS-29 Schlafstörungen - Rohwert"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension[=].valueCoding = $UCUM#{score} "{score}"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%sleepRaw"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Sleep Disturbance T-Score
* item[=].item[+].linkId = "promis-29-sleep-tscore"
* item[=].item[=].type = #decimal
* item[=].item[=].code = $LNC#77860-5 "PROMIS sleep disturbance - version 1.0 Tscore"
* item[=].item[=].text = "PROMIS-29 Schlafstörungen - T-Score"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "iif(%sleepRaw=4, 28.0, iif(%sleepRaw=5, 36.0, iif(%sleepRaw=6, 40.6, iif(%sleepRaw=7, 44.0, iif(%sleepRaw=8, 46.8, iif(%sleepRaw=9, 49.3, iif(%sleepRaw=10, 51.5, iif(%sleepRaw=11, 53.6, iif(%sleepRaw=12, 55.6, iif(%sleepRaw=13, 57.5, iif(%sleepRaw=14, 59.4, iif(%sleepRaw=15, 61.3, iif(%sleepRaw=16, 63.3, iif(%sleepRaw=17, 65.4, iif(%sleepRaw=18, 67.7, iif(%sleepRaw=19, 70.4, iif(%sleepRaw=20, 73.9, {})))))))))))))))))"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Social Function Raw Score
* item[=].item[+].linkId = "promis-29-social-raw"
* item[=].item[=].type = #decimal
* item[=].item[=].code = $LNC#71958-3 "PROMIS-29 Satisfaction with participation in social roles score"
* item[=].item[=].text = "PROMIS-29 Soziale Teilhabe - Rohwert"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension[=].valueCoding = $UCUM#{score} "{score}"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%socialRaw"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Social Function T-Score
* item[=].item[+].linkId = "promis-29-social-tscore"
* item[=].item[=].type = #decimal
* item[=].item[=].code = $LNC#77854-8 "PROMIS ability to participate in social roles and activities - version 2.0 Tscore"
* item[=].item[=].text = "PROMIS-29 Soziale Teilhabe - T-Score"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "iif(%socialRaw=4, 24.5, iif(%socialRaw=5, 28.0, iif(%socialRaw=6, 30.6, iif(%socialRaw=7, 32.8, iif(%socialRaw=8, 34.7, iif(%socialRaw=9, 36.5, iif(%socialRaw=10, 38.1, iif(%socialRaw=11, 39.7, iif(%socialRaw=12, 41.2, iif(%socialRaw=13, 42.6, iif(%socialRaw=14, 44.0, iif(%socialRaw=15, 45.4, iif(%socialRaw=16, 46.8, iif(%socialRaw=17, 48.2, iif(%socialRaw=18, 49.6, iif(%socialRaw=19, 51.1, iif(%socialRaw=20, 52.6, {})))))))))))))))))"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Pain Interference Raw Score
* item[=].item[+].linkId = "promis-29-pain-interference-raw"
* item[=].item[=].type = #decimal
* item[=].item[=].code = $LNC#71962-5 "PROMIS-29 Pain interference score"
* item[=].item[=].text = "PROMIS-29 Schmerzbedingte Beeinträchtigung - Rohwert"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension[=].valueCoding = $UCUM#{score} "{score}"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%painInterferenceRaw"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true

// Pain Interference T-Score
* item[=].item[+].linkId = "promis-29-pain-interference-tscore"
* item[=].item[=].type = #decimal
* item[=].item[=].code = $LNC#77865-4 "PROMIS pain interference - version 1.0 Tscore"
* item[=].item[=].text = "PROMIS-29 Schmerzbedingte Beeinträchtigung - T-Score"
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "iif(%painInterferenceRaw=4, 38.2, iif(%painInterferenceRaw=5, 44.7, iif(%painInterferenceRaw=6, 48.8, iif(%painInterferenceRaw=7, 51.9, iif(%painInterferenceRaw=8, 54.5, iif(%painInterferenceRaw=9, 56.8, iif(%painInterferenceRaw=10, 58.9, iif(%painInterferenceRaw=11, 60.9, iif(%painInterferenceRaw=12, 62.8, iif(%painInterferenceRaw=13, 64.7, iif(%painInterferenceRaw=14, 66.6, iif(%painInterferenceRaw=15, 68.6, iif(%painInterferenceRaw=16, 70.7, iif(%painInterferenceRaw=17, 72.9, iif(%painInterferenceRaw=18, 75.4, iif(%painInterferenceRaw=19, 78.5, iif(%painInterferenceRaw=20, 83.1, {})))))))))))))))))"
* item[=].item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].item[=].extension[=].valueBoolean = true