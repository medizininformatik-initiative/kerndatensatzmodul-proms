Profile: MII_PR_PRO_Observation_BDI_II
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-observation-bdi-ii
Title: "MII PR PRO Observation BDI-II"
Description: "Profile for Beck Depression Inventory II (BDI-II) Total Score Observations"

* ^status = #draft
* ^experimental = true

* code = $LNC#89209-1 "Beck Depression Inventory II total score"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "{score}" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #{score} (exactly)

* method.coding = $LNC#89209-1 "Beck Depression Inventory II total score"
* method.text = "Beck Depression Inventory II (BDI-II)"
* method MS

// Link to ObservationDefinition that defines reference ranges and measurement details
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-bdi-ii"

// Reference range information is defined in the ObservationDefinition (mii-obsdef-pro-score-bdi-ii)
// Score range 0-63, higher scores indicate more severe depression

* interpretation MS
* derivedFrom MS