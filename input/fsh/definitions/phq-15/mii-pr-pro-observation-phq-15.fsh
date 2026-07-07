Profile: MII_PR_PRO_Observation_PHQ_15
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-observation-phq-15
Title: "MII PR PRO Observation PHQ-15"
Description: "Profile for Patient Health Questionnaire-15 (PHQ-15) total somatic symptom severity score Observations (0-30; higher scores indicate greater somatic symptom burden)."

* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true

* code = $LNC#70273-8 "Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "{score}" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #{score} (exactly)

* method.coding = $LNC#69728-4 "Patient Health Questionnaire 15 item (PHQ-15) [Reported]"
* method.text = "Patient Health Questionnaire-15 (PHQ-15)"
* method MS

// Link to the ObservationDefinition that defines reference ranges (incl. Kroenke severity bands)
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-15"

* interpretation MS
* derivedFrom MS
