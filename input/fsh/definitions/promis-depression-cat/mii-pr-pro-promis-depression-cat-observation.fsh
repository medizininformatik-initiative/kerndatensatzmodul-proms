Profile: MII_PR_PRO_PROMIS_Depression_CAT_T_Score
Parent: Observation
Id: mii-pr-pro-promis-depression-cat-t-score
Title: "MII PR PRO PROMIS Depression CAT T-Score"
Description: "Profile for PROMIS Depression CAT-derived T-Score observations with standard error and item count components"

* insert PR_CS_VS_Version
* status MS
* status = #final

* category MS
* category = $hl7-observation-category#survey "Survey"

* code MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..1 and
    mii 0..1
* code.coding[loinc].system = "http://loinc.org" (exactly)
* code.coding[loinc].code = #77861-3
* code.coding[loinc].display = "PROMIS emotional distress - depression - version 1.0 Tscore"
* code.coding[mii].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue" (exactly)
* code.coding[mii].code = #promis-depression-cat-tscore
* code.coding[mii].display = "PROMIS Depression CAT T-Score"

* subject MS
* subject 1..1
* subject only Reference(Patient)

* effectiveDateTime MS

* method MS
* method.text = "Computer Adaptive Testing (Graded Response Model, EAP estimation)"

* valueQuantity MS
* valueQuantity 1..1
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}

* derivedFrom MS
* derivedFrom only Reference(QuestionnaireResponse)

// Link to ObservationDefinition
* extension contains http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical named instantiatesCanonical 0..1 MS

// Components for CAT-specific metadata
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    standardError 1..1 MS and
    itemCount 1..1 MS

// Standard Error of the theta estimate
* component[standardError].code = $mii-cs-pro-score-catalogue#promis-depression-cat-se "PROMIS Depression CAT Standard Error"
* component[standardError].value[x] only Quantity
* component[standardError].valueQuantity.value 1..1 MS
* component[standardError].valueQuantity.unit = "{score}"
* component[standardError].valueQuantity.system = $UCUM
* component[standardError].valueQuantity.code = #{score}

// Number of items administered in the CAT session
* component[itemCount].code = $LNC#94100-0 "Number of items used"
* component[itemCount].value[x] only integer
* component[itemCount].valueInteger 1..1 MS
