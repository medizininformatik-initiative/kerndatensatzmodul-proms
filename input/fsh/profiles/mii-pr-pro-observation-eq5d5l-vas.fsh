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

// Absolute reference range 0-100
* referenceRange MS
* referenceRange.low.value = 0
* referenceRange.low.unit = "1"
* referenceRange.low.system = $UCUM
* referenceRange.low.code = #1
* referenceRange.high.value = 100
* referenceRange.high.unit = "1" 
* referenceRange.high.system = $UCUM
* referenceRange.high.code = #1
* referenceRange.type = http://terminology.hl7.org/CodeSystem/referencerange-meaning#absolute "Absolute Range"
* referenceRange.text = "EQ-5D-5L VAS scale range"

// Health score correlation extension
* referenceRange.extension contains MII_EX_PRO_Score_Score_Health_Correlation named ScoreHealthCorrelation 0..1 MS
* referenceRange.extension[ScoreHealthCorrelation].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase "Increased score indicates improvement"
* referenceRange.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher score indicates better health status"

* interpretation MS
* derivedFrom MS