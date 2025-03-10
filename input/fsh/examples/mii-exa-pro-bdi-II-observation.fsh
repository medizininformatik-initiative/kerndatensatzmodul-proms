Instance: mii-exa-pro-bdi-ii-observation
InstanceOf: Observation
Title: "BDI-II Observation"
* status = #final
* subject = Reference(Patient/otherexamplepatient)
* effectiveDateTime = "2023-10-01T12:00:00Z"
* code = $LNC#89209-1 "Beck Depression Inventory II total score [BDI]"
* valueQuantity.value = 27
* valueQuantity.code = #{score}
* valueQuantity.unit = "{score}"
* valueQuantity.system = "http://unitsofmeasure.org"