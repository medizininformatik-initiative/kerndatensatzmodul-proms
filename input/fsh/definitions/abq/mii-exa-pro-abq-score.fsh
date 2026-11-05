// Score-Observation zum Beispiel mii-exa-pro-abq-response (Summenwert 33, Bereich 16-64).

Instance: mii-exa-pro-abq-score
InstanceOf: mii-pr-pro-score-instance
Title: "ABQ Score Observation Example"
Description: "ABQ Total Score aus der Beispiel-QuestionnaireResponse (33 von 16-64)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #abq-total
* code.coding[=].display = "ABQ Total Score (16-64)"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-11-05"
* valueQuantity.value = 33
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-abq-response"
