Profile: MII_PR_PRO_Score_Instance
Parent: Observation
Id: mii-pr-pro-score-instance
Title: "MII PR PRO Score Instance"  
Description: "MII PR PRO Score Instance"
* ^status = #draft

* identifier 0..* MS
* effectiveDateTime 0..1 MS

// * focus - dann vsl im Rahmen von PCOR-MII relevant

* status MS
* subject 1..1 
* performer 0..* MS
* method 0..1 MS
* code 1..1 MS
* value[x] MS
* value[x] only Quantity or CodeableConcept or string 
* interpretation 0..* MS
* note 0..* MS
* derivedFrom 0..* MS
//* component 0..* MS evlt. noch nich tnutzen, weil dann Observationbased-Extraction nicht mehr genutzt werden kann

