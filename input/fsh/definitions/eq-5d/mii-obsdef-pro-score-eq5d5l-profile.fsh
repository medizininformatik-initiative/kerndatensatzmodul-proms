Instance: mii-obsdef-pro-score-eq5d5l-profile
InstanceOf: MII_PR_PRO_Score_Blueprint
Title: "MII ObsDef PRO Score EQ-5D-5L Profile"
Description: "EuroQol 5 Dimensions 5 Levels (EQ-5D-5L) Profile"

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[mii] = $mii-cs-pro-score-catalogue#euroqol-eq5d5l-profile "EuroQol EQ-5D-5L Profile"

* permittedDataType = #string
* multipleResultsAllowed = false
* method = $SCT#73041000052103 "EuroQoL five dimension five level questionnaire (assessment scale)" 
// add reference https://doi.org/10.1016/j.jad.2017.08.060 for developmental publication

