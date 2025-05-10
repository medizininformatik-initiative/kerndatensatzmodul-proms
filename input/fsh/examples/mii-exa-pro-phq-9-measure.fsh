// Example Observation-based Extraction, see https://build.fhir.org/ig/HL7/sdc/extraction.html#obs-extract
Instance: mii-exa-pro-phq-9-measure
InstanceOf: Measure
Title: "PHQ-9 Observation Example"

* status = #active
* identifier[+].system = $LNC
* identifier[=].value = "44261-6"
//* code = $LNC#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"

//* method = $LNC#72166-2 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]" // check loinc code, also check whether makes sense for german , or how to deal with PHQ-8
// höchstens in MeasureReport.evaluatedRessource = Reference(QuestionnaireResponse) -> QuestionnaireResponse.instantiatesCanonical = Reference(Questionnaire) 

* relatedArtifact[+].type = #derived-from
* relatedArtifact[=].label = "PHQ-9 Developmental Publication" 
* relatedArtifact[=].display = "The psychometric properties of depression screening tools in primary healthcare settings: A systematic review" 
* relatedArtifact[=].citation = "Sarira El-Den, Timothy F. Chen, Yuh-Lin Gan, Eling Wong, Claire L. O’Reilly,The psychometric properties of depression screening tools in primary healthcare settings: A systematic review,Journal of Affective Disorders,Volume 225,2018,Pages 503-522,ISSN 0165-0327"
* relatedArtifact[=].url = "https://doi.org/10.1016/j.jad.2017.08.060"
// add reference https://doi.org/10.1016/j.jad.2017.08.060 for developmental publication

/*
* valueQuantity.value = 27
* valueQuantity.code = #{score}
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
*/