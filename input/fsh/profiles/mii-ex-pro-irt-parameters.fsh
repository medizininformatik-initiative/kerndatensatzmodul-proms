// ============================================================================
// IRT Parameter Extensions for CAT Calibration Libraries
// ============================================================================
// Extensions for IRT (Item Response Theory) calibration resources.
// Used on Library instances that contain IRT calibration data.
// ============================================================================

Extension: MII_EX_PRO_IRT_Model
Id: mii-ex-pro-irt-model
Title: "MII EX PRO IRT Model"
Description: "Specifies the Item Response Theory model used for calibration (e.g., GRM, 2PL)"

* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* ^context[+].type = #element
* ^context[=].expression = "Library"
* value[x] only Coding
* valueCoding from https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-irt-model (required)

Extension: MII_EX_PRO_CAT_Stopping_Rule
Id: mii-ex-pro-cat-stopping-rule
Title: "MII EX PRO CAT Stopping Rule"
Description: "Defines stopping criteria for Computer Adaptive Testing sessions"

* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* ^context[+].type = #element
* ^context[=].expression = "Library"
* extension contains
    maxItems 0..1 MS and
    minItems 0..1 MS and
    seThreshold 0..1 MS
* extension[maxItems].value[x] only integer
* extension[maxItems] ^short = "Maximum number of items to administer"
* extension[minItems].value[x] only integer
* extension[minItems] ^short = "Minimum number of items before stopping is allowed"
* extension[seThreshold].value[x] only decimal
* extension[seThreshold] ^short = "Standard error threshold below which testing can stop"
