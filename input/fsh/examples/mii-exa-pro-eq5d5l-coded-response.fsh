// EQ-5D-5L Answer-Coding Variant Response Example
Instance: mii-exa-pro-euroqol-eq5d5l-coded-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "EQ-5D-5L Answer-Coding Response Example"
Description: "Example of an EQ-5D-5L questionnaire response using the answer-coding variant with MII CodeSystem"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* subject = Reference(Patient/example)
* authored = "2024-03-15T14:45:00+01:00"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-answer-coding"

// Mobility - Moderate problems (using MII CodeSystem)
* item[+].linkId = "euroqol-eq5d5l-coded-q01-MO"
* item[=].text = "BEWEGLICHKEIT / MOBILITÄT"
* item[=].answer[0].valueCoding = $mii-cs-pro-eq-5d-value-set#MO-3
* item[=].answer[0].valueCoding.display = "Ich habe mäßige Probleme herumzugehen"

// Self-Care - Slight problems
* item[+].linkId = "euroqol-eq5d5l-coded-q02-SC"
* item[=].text = "FÜR SICH SELBST SORGEN"
* item[=].answer[0].valueCoding = $mii-cs-pro-eq-5d-value-set#SC-2
* item[=].answer[0].valueCoding.display = "Ich habe leichte Probleme, mich selbst zu waschen oder anzuziehen"

// Usual Activities - Severe problems
* item[+].linkId = "euroqol-eq5d5l-coded-q03-UA"
* item[=].text = "ALLTÄGLICHE TÄTIGKEITEN (z.B. Arbeit, Studium, Hausarbeit, Familien- / Freizeitaktivitäten)"
* item[=].answer[0].valueCoding = $mii-cs-pro-eq-5d-value-set#UA-4
* item[=].answer[0].valueCoding.display = "Ich habe große Probleme, meinen alltäglichen Tätigkeiten nachzugehen"

// Pain/Discomfort - Moderate pain
* item[+].linkId = "euroqol-eq5d5l-coded-q04-PD"
* item[=].text = "SCHMERZEN / KÖRPERLICHEN BESCHWERDEN"
* item[=].answer[0].valueCoding = $mii-cs-pro-eq-5d-value-set#PD-3
* item[=].answer[0].valueCoding.display = "Ich habe mäßige Schmerzen oder Beschwerden"

// Anxiety/Depression - No anxiety
* item[+].linkId = "euroqol-eq5d5l-coded-q05-AD"
* item[=].text = "ANGST / NIEDERGESCHLAGENHEIT"
* item[=].answer[0].valueCoding = $mii-cs-pro-eq-5d-value-set#AD-1
* item[=].answer[0].valueCoding.display = "Ich bin nicht ängstlich oder deprimiert"

// Health State Profile (concatenated: 3-2-4-3-1)
* item[+].linkId = "euroqol-eq5d5l-coded-score-profile"
* item[=].text = "Gesundheitszustand"
* item[=].answer[0].valueString = "32431"

// Note: Index calculation would be commented out in this variant as indicated in the questionnaire
// The index would typically be calculated server-side using the profile value

// VAS Score
* item[+].linkId = "euroqol-eq5d5l-coded-vas"
* item[=].text = "IHRE GESUNDHEIT HEUTE"
* item[=].answer[0].valueInteger = 55

// Note: This variant does not have extractable capability
// The QuestionnaireResponse data would be stored as-is without extraction to Observations
// Processing and analysis would happen at the application layer based on the coded values