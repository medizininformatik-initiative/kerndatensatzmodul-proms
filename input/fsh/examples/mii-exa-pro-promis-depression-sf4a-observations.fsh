Instance: mii-exa-pro-promis-depression-sf4a-raw-score
InstanceOf: MII_PR_PRO_PROMIS_Depression_SF4a_Raw_Score
Title: "MII EXA PRO PROMIS Depression SF 4a Raw Score"
Description: "Example raw score observation for PROMIS Depression Short Form 4a"
Usage: #example

* status = #final
* category = $hl7-observation-category#survey "Survey"
* code = $LNC#77821-7 "PROMIS short form - emotional distress - depression 4a - version 1.0 raw score"
* subject = Reference(Patient/mii-exa-pro-patient)
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 12
* valueQuantity.unit = "score"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom = Reference(QuestionnaireResponse/mii-exa-pro-promis-depression-sf4a-response)

Instance: mii-exa-pro-promis-depression-sf4a-tscore
InstanceOf: MII_PR_PRO_Depression_T_Score
Title: "MII EXA PRO PROMIS Depression SF 4a T-Score"
Description: "Example T-score observation for PROMIS Depression Short Form 4a"
Usage: #example

* status = #final
* category = $hl7-observation-category#survey "Survey"
* code = $LNC#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* subject = Reference(Patient/mii-exa-pro-patient)
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 62.2
* valueQuantity.unit = "score"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom = Reference(QuestionnaireResponse/mii-exa-pro-promis-depression-sf4a-response)

Instance: mii-exa-pro-patient
InstanceOf: Patient
Title: "MII EXA PRO Patient"
Description: "Example patient for PRO demonstrations"
Usage: #example

* identifier.system = "http://identifiers.org/patient-ids"
* identifier.value = "12345"
* name.family = "Mustermann"
* name.given = "Max"
* gender = #male
* birthDate = "1980-05-15"