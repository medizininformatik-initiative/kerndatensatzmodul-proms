// ============================================================================
// IRT Model CodeSystem and ValueSet
// ============================================================================
// Defines the Item Response Theory models supported for CAT calibrations.
// ============================================================================

CodeSystem: MII_CS_PRO_IRT_Model
Id: mii-cs-pro-irt-model
Title: "MII CS PRO IRT Model"
Description: "Item Response Theory models used for psychometric calibration in Computer Adaptive Testing"

* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-irt-model"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete

* #grm "Graded Response Model (Samejima)"
    "The Graded Response Model by Samejima (1969) for ordered polytomous items"
* #2pl "Two-Parameter Logistic Model"
    "The two-parameter logistic model for dichotomous items"
* #rsm "Rating Scale Model"
    "The Rating Scale Model by Andrich (1978) for ordered polytomous items with equal thresholds"
* #pcm "Partial Credit Model"
    "The Partial Credit Model by Masters (1982) for ordered polytomous items with unequal thresholds"

ValueSet: MII_VS_PRO_IRT_Model
Id: mii-vs-pro-irt-model
Title: "MII VS PRO IRT Model"
Description: "ValueSet of supported IRT models for CAT calibrations"

* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true

* include codes from system MII_CS_PRO_IRT_Model
