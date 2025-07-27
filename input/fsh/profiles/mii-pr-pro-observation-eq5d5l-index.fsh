Profile: MII_PR_PRO_Observation_EQ5D5L_Index
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-observation-eq5d5l-index
Title: "MII PR PRO Observation EQ-5D-5L Index"
Description: "Profile for EQ-5D-5L Index Score Observations with German value set reference ranges"

* ^status = #draft
* ^experimental = true

* code = $SCT#736534008 "EuroQol five dimension five level index value (observable entity)"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "1" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #1 (exactly)

* method = $SCT#73041000052103 "EuroQoL five dimension five level questionnaire (assessment scale)"
* method MS

// German-specific absolute reference range with health correlation
* referenceRange MS
* referenceRange.low.value = -0.661
* referenceRange.low.unit = "1"
* referenceRange.low.system = $UCUM
* referenceRange.low.code = #1
* referenceRange.high.value = 1.000
* referenceRange.high.unit = "1" 
* referenceRange.high.system = $UCUM
* referenceRange.high.code = #1
* referenceRange.type = http://terminology.hl7.org/CodeSystem/referencerange-meaning#absolute "Absolute Range"
* referenceRange.appliesTo = urn:iso:std:iso:3166#DE "Germany"
* referenceRange.text = "German EQ-5D-5L value set range (Ludwig et al. 2018)"

// Health score correlation extension
* referenceRange.extension contains MII_EX_PRO_Score_Score_Health_Correlation named ScoreHealthCorrelation 0..1 MS
* referenceRange.extension[ScoreHealthCorrelation].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase "Increased score indicates improvement"
* referenceRange.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher score indicates better health status"

// Literature reference
* note MS
* note ^slicing.discriminator.type = #value
* note ^slicing.discriminator.path = "text"
* note ^slicing.rules = #open
* note contains reference 0..1 MS
* note[reference].text = "Reference: Ludwig, K., Graf von der Schulenburg, JM. & Greiner, W. German Value Set for the EQ-5D-5L. PharmacoEconomics 36, 663–674 (2018). https://doi.org/10.1007/s40273-018-0615-8"

* interpretation MS
* derivedFrom MS