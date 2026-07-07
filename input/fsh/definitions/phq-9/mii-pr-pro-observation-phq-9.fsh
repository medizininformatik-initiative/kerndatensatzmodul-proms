Profile: MII_PR_PRO_Observation_PHQ_9
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-observation-phq-9
Title: "MII PR PRO Observation PHQ-9"
Description: "Profile for Patient Health Questionnaire-9 (PHQ-9) total score Observations (0-27; higher scores indicate more severe depression)."

* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true

* code = $LNC#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "{score}" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #{score} (exactly)

* method.coding = $LNC#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"
* method.text = "Patient Health Questionnaire-9 (PHQ-9)"
* method MS

// Link to the ObservationDefinition that defines reference ranges and measurement details
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9"

* interpretation MS
* derivedFrom MS
