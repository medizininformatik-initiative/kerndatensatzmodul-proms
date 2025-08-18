Profile: MII_PR_PRO_Observation_EQ5D5L_VAS
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-observation-eq5d5l-vas
Title: "MII PR PRO Observation EQ-5D-5L VAS"
Description: "Profile for EQ-5D-5L Visual Analogue Scale Score Observations"

* ^status = #draft
* ^experimental = true

* code = $SCT#736535009 "EuroQol visual analogue score (observable entity)"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "1" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #1 (exactly)

* method = $SCT#73041000052103 "EuroQoL five dimension five level questionnaire (assessment scale)"
* method MS

// Link to ObservationDefinition that defines reference ranges and measurement details
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas"

// Reference range information is defined in the ObservationDefinition (mii-obsdef-pro-score-eq5d5l-vas)
// No need to duplicate scale ranges in the profile

* interpretation MS
* derivedFrom MS