Instance: mii-exa-pro-euroqol-eq5d5l-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PHQ-9 Questionnaire Response Example EuroQol EQ-5D-5L"
* status = #completed
* subject = Reference(Patient/example)
* authored = "2023-10-01T12:00:00Z"
* questionnaire = $mii-qst-pro-euroqol-eq5d5l
* item[0].linkId = "euroqol-eq5d5l-q01-MO"
* item[0].answer[0].valueCoding = #LA6571-9
* item[1].linkId = "euroqol-eq5d5l-q02-SC"
* item[1].answer[0].valueCoding = #LA6571-9
* item[2].linkId = "euroqol-eq5d5l-q03-UA"
* item[2].answer[0].valueCoding = #LA6571-9
* item[3].linkId = "euroqol-eq5d5l-q04-PD"
* item[3].answer[0].valueCoding = #LA6571-9
* item[4].linkId = "euroqol-eq5d5l-q05-AD"
* item[4].answer[0].valueCoding = #LA6571-9
* item[5].linkId = "euroqol-eq5d5l-score-vas"
* item[5].answer[0].valueQuantity.value = 27
* item[5].answer[0].valueQuantity.code = #{score}
* item[5].answer[0].valueQuantity.unit = "{score}"
* item[5].answer[0].valueQuantity.system = $UCUM
* item[6].linkId = "euroqol-eq5d5l-score-profile"
* item[6].answer[0].valueString.value = "12345"
* item[7].linkId = "euroqol-eq5d5l-score-index"
* item[7].answer[0].valueQuantity.value = 0.662
* item[7].answer[0].valueQuantity.code = #{score}
* item[7].answer[0].valueQuantity.unit = "{score}"
* item[7].answer[0].valueQuantity.system = $UCUM