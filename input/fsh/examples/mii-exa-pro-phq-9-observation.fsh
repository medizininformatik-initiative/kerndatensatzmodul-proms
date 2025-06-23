// Example Observation-based Extraction, see https://build.fhir.org/ig/HL7/sdc/extraction.html#obs-extract
Instance: mii-exa-pro-phq-9-observation
InstanceOf: MII_PR_PRO_Score_Instance
Title: "PHQ-9 Observation Example"
* status = #final
// * basedOn = Reference(mii-obsdef-pro-score-phq-9) geht nicht weil Observation.instantiatesCanonical erst in R5 kommt, und die R4 extension kein ObservationDefinition unterstützt, aber dafür Measure
* subject = Reference(Patient/example)
* effectiveDateTime = "2023-10-01T12:00:00Z"
* code = $LNC#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
* valueQuantity.value = 27
* valueQuantity.code = #{score}
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
