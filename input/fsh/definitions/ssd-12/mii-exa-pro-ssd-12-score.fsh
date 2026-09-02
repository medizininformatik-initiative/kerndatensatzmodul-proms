// Score-Observation zum Beispiel mii-exa-pro-ssd-12-response.
// Wert 24 entspricht der Summe der dort gesetzten Antworten (Bereich 0-48).

Instance: mii-exa-pro-ssd-12-score
InstanceOf: mii-pr-pro-score-instance
Title: "SSD-12 Score Observation Example"
Description: "SSD-12 Total Score aus der Beispiel-QuestionnaireResponse (24 von 48)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #ssd-12-total
* code.coding[=].display = "SSD-12 Total Score (0-48)"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-09-01"
* valueQuantity.value = 24
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-ssd-12-response"
