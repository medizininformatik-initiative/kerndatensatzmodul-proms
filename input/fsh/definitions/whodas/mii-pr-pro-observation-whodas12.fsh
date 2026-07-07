Profile: MII_PR_PRO_Observation_WHODAS_12
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-observation-whodas12
Title: "MII PR PRO Observation WHODAS 2.0 12-Item"
Description: "Profile for WHODAS 2.0 12-item simple sum (disability) score Observations (0-48; higher scores indicate greater disability). No suitable LOINC code exists; SNOMED CT and the MII score catalogue are used."

* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true

// The concrete code (SNOMED 715823002 + MII score-catalogue whodas12-simple-sum) is
// carried by the instance and defined authoritatively by the ObservationDefinition;
// no LOINC code exists for WHODAS.
* code MS
* code.coding 1..* MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "{score}" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #{score} (exactly)

* method.text = "WHODAS 2.0 12-item simple sum scoring (0-48)"
* method MS

// Link to the ObservationDefinition that defines the measurable range and scoring direction
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-whodas12-simple-sum"

* interpretation MS
* derivedFrom MS
