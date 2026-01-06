Instance: mii-exa-pro-bdi-ii-observation
InstanceOf: MII_PR_PRO_Score_Instance
Usage: #example
Title: "BDI-II Observation Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2023-10-01T12:00:00Z"
* code = $LNC#89209-1 "Beck Depression Inventory II total score [BDI]"
* valueQuantity.value = 19
* valueQuantity.code = #{score}
* valueQuantity.unit = "{score}"
* valueQuantity.system = "http://unitsofmeasure.org"