Instance: mii-exa-pro-phq-9-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PHQ-9 Questionnaire Response Example"
* status = #completed
* subject = Reference(Patient/example)
* authored = "2023-10-01T12:00:00Z"
* questionnaire = $mii-qst-pro-phq-9
* item[0].linkId = "phq-phq9-q01"
* item[0].answer[0].valueCoding = #LA6571-9
* item[1].linkId = "phq-phq9-q02"
* item[1].answer[0].valueCoding = #LA6571-9
* item[2].linkId = "phq-phq9-q03"
* item[2].answer[0].valueCoding = #LA6571-9
* item[3].linkId = "phq-phq9-q04"
* item[3].answer[0].valueCoding = #LA6571-9
* item[4].linkId = "phq-phq9-q05"
* item[4].answer[0].valueCoding = #LA6571-9
* item[5].linkId = "phq-phq9-q06"
* item[5].answer[0].valueCoding = #LA6571-9
* item[6].linkId = "phq-phq9-q07"
* item[6].answer[0].valueCoding = #LA6571-9
* item[7].linkId = "phq-phq9-q0"
* item[7].answer[0].valueCoding = #LA6571-9
* item[8].linkId = "phq-phq9-q09"
* item[8].answer[0].valueCoding = #LA6571-9
* item[9].linkId = "phq-phq9-q10"
* item[9].answer[0].valueCoding = #LA6574-3
* item[10].linkId = "phq-phq9-score-total"
* item[10].answer[0].valueQuantity.value = 27
* item[10].answer[0].valueQuantity.code = #{score}
* item[10].answer[0].valueQuantity.unit = "{score}"
* item[10].answer[0].valueQuantity.system = $UCUM