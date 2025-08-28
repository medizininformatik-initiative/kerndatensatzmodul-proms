// ===== PROMIS Cognitive Function SF 4a Observation Profiles =====

// Raw Score Profile
Profile: MII_PR_PRO_PROMIS_Cognitive_Function_SF4a_Raw_Score
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-promis-cognitive-function-sf4a-raw-score
Title: "MII PR PRO PROMIS Cognitive Function SF 4a Raw Score"
Description: "Profile for PROMIS Cognitive Function Short Form 4a raw score observations (4-20 range)"

* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true

* code = $LNC#81533-2 "PROMIS short form - cognitive function 4a - version 2.0 raw score"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "{score}" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #{score} (exactly)

* method.text = "PROMIS Cognitive Function SF 4a"
* method MS

* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score"

* referenceRange MS
* referenceRange.low.value = 4
* referenceRange.high.value = 20
* referenceRange.text = "Valid range for PROMIS Cognitive Function SF 4a raw scores"

* interpretation MS
* derivedFrom MS

// T-Score Profile
Profile: MII_PR_PRO_PROMIS_Cognitive_Function_SF4a_TScore
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-promis-cognitive-function-sf4a-tscore
Title: "MII PR PRO PROMIS Cognitive Function SF 4a T-Score"
Description: "Profile for PROMIS Cognitive Function Short Form 4a T-Score observations"

* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true

* code = $LNC#81538-1 "PROMIS cognitive function - version 2.0 T-score"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "{score}" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #{score} (exactly)

* method.text = "PROMIS Cognitive Function SF 4a"
* method MS

* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-tscore"

* interpretation MS
* derivedFrom MS