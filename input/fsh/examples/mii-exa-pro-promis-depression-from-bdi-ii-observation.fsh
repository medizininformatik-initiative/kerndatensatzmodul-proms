Instance: mii-exa-pro-promis-depression-tscore-from-bdi-ii-observation
InstanceOf: MII_PR_PRO_Score_Instance
Usage: #example
Title: "PROMIS Depression T-Score, derived from BDI-II Observation Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* subject = Reference(Patient/otherexamplepatient)
* effectiveDateTime = "2023-10-01T12:00:00Z"
* code = $LNC#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* valueQuantity.value = 63.2
* valueQuantity.code = #{score}
* valueQuantity.unit = "{score}"
* valueQuantity.system = "http://unitsofmeasure.org"
