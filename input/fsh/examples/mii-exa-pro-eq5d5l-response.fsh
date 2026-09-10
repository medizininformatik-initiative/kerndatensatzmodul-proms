Instance: mii-exa-pro-euroqol-eq5d5l-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "EQ-5D-5L Questionnaire Response Example"
* language = #de
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2023-10-01T12:00:00Z"
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable)
* item[0].linkId = "euroqol-eq5d5l-q01-MO"
* item[0].text = "BEWEGLICHKEIT / MOBILITÄT"
* item[0].answer[0].valueCoding.system = $mii-cs-pro-eq-5d-value-set
* item[0].answer[0].valueCoding.code = #2
* item[0].answer[0].valueCoding.display = "Ich habe leichte Probleme herumzugehen"
* item[1].linkId = "euroqol-eq5d5l-q02-SC"
* item[1].text = "FÜR SICH SELBST SORGEN"
* item[1].answer[0].valueCoding.system = $mii-cs-pro-eq-5d-value-set
* item[1].answer[0].valueCoding.code = #1
* item[1].answer[0].valueCoding.display = "Ich habe keine Probleme, mich selbst zu waschen oder anzuziehen"
* item[2].linkId = "euroqol-eq5d5l-q03-UA"
* item[2].text = "ALLTÄGLICHE TÄTIGKEITEN (z.B. Arbeit, Studium, Hausarbeit, Familien- / Freizeitaktivitäten)"
* item[2].answer[0].valueCoding.system = $mii-cs-pro-eq-5d-value-set
* item[2].answer[0].valueCoding.code = #2
* item[2].answer[0].valueCoding.display = "Ich habe leichte Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
* item[3].linkId = "euroqol-eq5d5l-q04-PD"
* item[3].text = "SCHMERZEN / KÖRPERLICHEN BESCHWERDEN"
* item[3].answer[0].valueCoding.system = $mii-cs-pro-eq-5d-value-set
* item[3].answer[0].valueCoding.code = #3
* item[3].answer[0].valueCoding.display = "Ich habe mäßige Schmerzen oder Beschwerden"
* item[4].linkId = "euroqol-eq5d5l-q05-AD"
* item[4].text = "ANGST / NIEDERGESCHLAGENHEIT"
* item[4].answer[0].valueCoding.system = $mii-cs-pro-eq-5d-value-set
* item[4].answer[0].valueCoding.code = #4
* item[4].answer[0].valueCoding.display = "Ich bin sehr ängstlich oder deprimiert"
* item[5].linkId = "euroqol-eq5d5l-score-profile"
* item[5].text = "Gesundheitszustand"
* item[5].answer[0].valueInteger = 21234  // Concatenated health state from answers above
* item[6].linkId = "euroqol-eq5d5l-score-index"
* item[6].text = "Indexwert"
* item[6].answer[0].valueDecimal = 0.662  // Calculated index value
* item[7].linkId = "euroqol-eq5d5l-vas"
* item[7].text = "IHRE GESUNDHEIT HEUTE"
* item[7].answer[0].valueInteger = 75  // VAS score 0-100