// Example Observation-based Extraction, see https://build.fhir.org/ig/HL7/sdc/extraction.html#obs-extract
Instance: mii-exa-pro-gad-7-observation
InstanceOf: MII_PR_PRO_Score_Instance
Usage: #example
Title: "GAD-7 Observation Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* subject = Reference(Patient/mii-exa-pro-patient)
* effectiveDateTime = "2024-03-15T10:30:00Z"
* code = $LNC#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
* valueQuantity.value = 13
* valueQuantity.code = #{score}
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
