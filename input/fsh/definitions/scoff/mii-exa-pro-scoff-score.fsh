// Score-Observation zum Beispiel mii-exa-pro-scoff-response.
// Wert 3 entspricht der Summe der dort gesetzten Antworten (Bereich 0-5).

Instance: mii-exa-pro-scoff-score
InstanceOf: mii-pr-pro-score-instance
Title: "SCOFF Score Observation Example"
Description: "SCOFF Total Score aus der Beispiel-QuestionnaireResponse (3 von 5)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #scoff-total
* code.coding[=].display = "SCOFF Total Score (0-5)"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-09-01"
* valueQuantity.value = 3
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-scoff-response"
