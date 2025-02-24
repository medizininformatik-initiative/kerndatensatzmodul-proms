Instance: mii-exa-pro-phq-9-observation
InstanceOf: Observation
Title: "PHQ-9 Observation"
* status = #final
* subject = Reference(Patient/example)
* effectiveDateTime = "2023-10-01T12:00:00Z"
* code = $LNC#44261-6 "PHQ-9 quick depression assessment Total score"
* valueQuantity.value = 27
* valueQuantity.code = #{score}
* valueQuantity.unit = "{score}"
* valueQuantity.system = "http://unitsofmeasure.org"