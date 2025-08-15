Profile: MII_PR_PRO_PROMIS_Depression_SF4a_Raw_Score
Parent: Observation
Id: mii-pr-pro-promis-depression-sf4a-raw-score
Title: "MII PR PRO PROMIS Depression SF 4a Raw Score"
Description: "Profile for PROMIS Depression Short Form 4a raw score observations (4-20 range)"

* status MS
* status = #final

* category MS
* category = $hl7-observation-category#survey "Survey"

* code MS
* code = $LNC#77821-7 "PROMIS short form - emotional distress - depression 4a - version 1.0 raw score"

* subject MS
* subject only Reference(Patient)

* effectiveDateTime MS

* valueQuantity MS
* valueQuantity.value MS
* valueQuantity.unit = "score"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}

* referenceRange MS
* referenceRange.low.value = 4
* referenceRange.high.value = 20
* referenceRange.text = "Valid range for PROMIS Depression SF 4a raw scores"

* derivedFrom MS
* derivedFrom only Reference(QuestionnaireResponse)

// Link to ObservationDefinition that defines reference ranges and measurement details
* extension contains http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical named instantiatesCanonical 0..1 MS

* component ..0

Profile: MII_PR_PRO_Depression_T_Score
Parent: Observation
Id: mii-pr-pro-depression-t-score
Title: "MII PR PRO Depression Domain T-Score"
Description: "Generic profile for depression domain T-score observations (all depression questionnaires)"

* status MS
* status = #final

* category MS
* category = $hl7-observation-category#survey "Survey"

* code MS
* code = $LNC#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* subject MS
* subject only Reference(Patient)

* effectiveDateTime MS

* valueQuantity MS
* valueQuantity.value MS
* valueQuantity.unit = "score"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}

* referenceRange MS
* referenceRange.text = "Depression T-score interpretation based on European population data"

* derivedFrom MS
* derivedFrom only Reference(QuestionnaireResponse)

// Link to ObservationDefinition that defines reference ranges and measurement details
* extension contains http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical named instantiatesCanonical 0..1 MS
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-depression-t-score"

* component ..0