Profile: MII_PR_PRO_Observation_EQ5D5L_Profile
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-observation-eq5d5l-profile
Title: "MII PR PRO Observation EQ-5D-5L Profile"
Description: "Profile for EQ-5D-5L Profile String Observations (e.g., '11111')"

* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true

// No SNOMED code available for profile, using MII code
* code = $mii-cs-pro-score-catalogue#euroqol-eq5d5l-profile "EuroQol EQ-5D-5L Profile"
* code MS

* value[x] only string
* valueString MS
* valueString 1..1
* valueString ^short = "5-digit profile string (e.g., '11111', '21232')"
* valueString ^definition = "String representation of the 5 dimension responses, where each digit represents the level chosen for that dimension (1-5)"

* method = $SCT#73041000052103 "EuroQoL five dimension five level questionnaire (assessment scale)"
* method MS

// Link to ObservationDefinition that defines measurement details
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile"

// No numeric reference range for string profile
* referenceRange 0..0
* referenceRange ^short = "Not applicable for string profiles"

* interpretation MS
* derivedFrom MS