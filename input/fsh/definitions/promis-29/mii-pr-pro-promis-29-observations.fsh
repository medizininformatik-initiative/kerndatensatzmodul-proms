// ===== PROMIS-29 T-Score Observation Profiles =====

// Physical Function T-Score
Profile: MII_PR_PRO_PROMIS_29_Physical_Function_TScore
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-promis-29-physical-function-tscore
Title: "MII PR PRO PROMIS-29 Physical Function T-Score"
Description: "Profile for PROMIS-29 Physical Function T-Score Observations"

* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true

* code = $LNC#91721-1 "PROMIS physical function - version 2.0 T-score"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "{score}" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #{score} (exactly)

* method.text = "PROMIS-29 Profile v2.1"
* method MS

* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore"

* interpretation MS
* derivedFrom MS

// Anxiety T-Score
Profile: MII_PR_PRO_PROMIS_29_Anxiety_TScore
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-promis-29-anxiety-tscore
Title: "MII PR PRO PROMIS-29 Anxiety T-Score"
Description: "Profile for PROMIS-29 Anxiety T-Score Observations"

* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true

* code = $LNC#71967-4 "PROMIS-29 Anxiety score T-score"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "{score}" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #{score} (exactly)

* method.text = "PROMIS-29 Profile v2.1"
* method MS

* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore"

* interpretation MS
* derivedFrom MS

// Depression T-Score
Profile: MII_PR_PRO_PROMIS_29_Depression_TScore
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-promis-29-depression-tscore
Title: "MII PR PRO PROMIS-29 Depression T-Score"
Description: "Profile for PROMIS-29 Depression T-Score Observations"

* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true

* code = $LNC#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "{score}" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #{score} (exactly)

* method.text = "PROMIS-29 Profile v2.1"
* method MS

* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-depression-tscore"

* interpretation MS
* derivedFrom MS

// Fatigue T-Score
Profile: MII_PR_PRO_PROMIS_29_Fatigue_TScore
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-promis-29-fatigue-tscore
Title: "MII PR PRO PROMIS-29 Fatigue T-Score"
Description: "Profile for PROMIS-29 Fatigue T-Score Observations"

* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true

* code = $LNC#77864-7 "PROMIS fatigue - version 1.0 Tscore"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "{score}" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #{score} (exactly)

* method.text = "PROMIS-29 Profile v2.1"
* method MS

* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-fatigue-tscore"

* interpretation MS
* derivedFrom MS

// Sleep Disturbance T-Score
Profile: MII_PR_PRO_PROMIS_29_Sleep_Disturbance_TScore
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-promis-29-sleep-disturbance-tscore
Title: "MII PR PRO PROMIS-29 Sleep Disturbance T-Score"
Description: "Profile for PROMIS-29 Sleep Disturbance T-Score Observations"

* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true

* code = $LNC#77860-5 "PROMIS sleep disturbance - version 1.0 Tscore"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "{score}" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #{score} (exactly)

* method.text = "PROMIS-29 Profile v2.1"
* method MS

* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore"

* interpretation MS
* derivedFrom MS

// Social Function T-Score
Profile: MII_PR_PRO_PROMIS_29_Social_Function_TScore
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-promis-29-social-function-tscore
Title: "MII PR PRO PROMIS-29 Social Function T-Score"
Description: "Profile for PROMIS-29 Ability to Participate in Social Roles and Activities T-Score Observations"

* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true

* code = $LNC#77854-8 "PROMIS ability to participate in social roles and activities - version 2.0 Tscore"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "{score}" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #{score} (exactly)

* method.text = "PROMIS-29 Profile v2.1"
* method MS

* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-social-function-tscore"

* interpretation MS
* derivedFrom MS

// Pain Interference T-Score
Profile: MII_PR_PRO_PROMIS_29_Pain_Interference_TScore
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-promis-29-pain-interference-tscore
Title: "MII PR PRO PROMIS-29 Pain Interference T-Score"
Description: "Profile for PROMIS-29 Pain Interference T-Score Observations"

* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true

* code = $LNC#77865-4 "PROMIS pain interference - version 1.0 Tscore"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "{score}" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #{score} (exactly)

* method.text = "PROMIS-29 Profile v2.1"
* method MS

* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-pain-interference-tscore"

* interpretation MS
* derivedFrom MS

// Pain Intensity (Single Item)
Profile: MII_PR_PRO_PROMIS_29_Pain_Intensity
Parent: MII_PR_PRO_Score_Instance
Id: mii-pr-pro-promis-29-pain-intensity
Title: "MII PR PRO PROMIS-29 Pain Intensity"
Description: "Profile for PROMIS-29 Pain Intensity single item Observations"

* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true

* code = $LNC#75261-8 "How intense was your average pain in the past 7 days [PROMIS]"
* code MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "1" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #1 (exactly)

* method.text = "PROMIS-29 Profile v2.1 - Pain Intensity single item"
* method MS

* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity"

* interpretation MS
* derivedFrom MS