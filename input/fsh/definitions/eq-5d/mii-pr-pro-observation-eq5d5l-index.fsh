Profile: MII_PR_PRO_Observation_EQ5D5L_Index
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-observation-eq5d5l-index
Title: "MII PR PRO Observation EQ-5D-5L Index"
Description: "Profile for EQ-5D-5L Index Score Observations with German value set reference ranges"

* insert PR_CS_VS_Version
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

* method = $SCT#73041000052103 "EuroQoL five dimension five level questionnaire"
* method MS

// Link to ObservationDefinition that defines reference ranges and measurement details
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index"

// Reference range information is defined in the ObservationDefinition (mii-obsdef-pro-score-eq5d5l-index)
// Population-specific value set ranges (German: -0.661 to 1.0) are documented there

// Literature reference
* note MS
* note ^slicing.discriminator.type = #value
* note ^slicing.discriminator.path = "text"
* note ^slicing.rules = #open
* note contains reference 0..1 MS
* note[reference].text = "Reference: Ludwig, K., Graf von der Schulenburg, JM. & Greiner, W. German Value Set for the EQ-5D-5L. PharmacoEconomics 36, 663–674 (2018). https://doi.org/10.1007/s40273-018-0615-8"

* interpretation MS
* derivedFrom MS