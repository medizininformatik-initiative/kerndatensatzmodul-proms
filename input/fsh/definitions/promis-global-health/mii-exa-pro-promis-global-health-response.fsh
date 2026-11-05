// PROMIS Global Health v1.2 example — all 10 items answered.
// Expected scores (v1.2 recoding):
//   GPH = Global03 Good(3) + Global06 Mostly(4) + Global07 pain 5 → recoded 3 + Global08 Mild(→4) = 14
//   GMH = Global02 Very good(4) + Global04 Good(3) + Global05 Fair(2) + Global10 Sometimes(→3) = 12
// Global01 (Good) and Global09 (Very good) are single indicators and not scored.

Instance: mii-exa-pro-promis-global-health-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "PROMIS Global Health Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #en
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-11-05T10:00:00Z"
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-global-health)
* item[+].linkId = "promis-global01"
* item[=].answer[0].valueCoding = $LNC#LA8967-7 "Good"
* item[+].linkId = "promis-global02"
* item[=].answer[0].valueCoding = $LNC#LA13913-1 "Very good"
* item[+].linkId = "promis-global03"
* item[=].answer[0].valueCoding = $LNC#LA8967-7 "Good"
* item[+].linkId = "promis-global04"
* item[=].answer[0].valueCoding = $LNC#LA8967-7 "Good"
* item[+].linkId = "promis-global05"
* item[=].answer[0].valueCoding = $LNC#LA8968-5 "Fair"
* item[+].linkId = "promis-global09"
* item[=].answer[0].valueCoding = $LNC#LA13913-1 "Very good"
* item[+].linkId = "promis-global06"
* item[=].answer[0].valueCoding = $LNC#LA13938-8 "Mostly"
* item[+].linkId = "promis-global10"
* item[=].answer[0].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[+].linkId = "promis-global08"
* item[=].answer[0].valueCoding = $LNC#LA6752-5 "Mild"
* item[+].linkId = "promis-global07"
* item[=].answer[0].valueInteger = 5
* item[+].linkId = "promis-global-health-score-physical-raw"
* item[=].answer[0].valueDecimal = 14
* item[+].linkId = "promis-global-health-score-mental-raw"
* item[=].answer[0].valueDecimal = 12
