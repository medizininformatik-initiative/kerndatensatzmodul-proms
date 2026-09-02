// Score-Observation zum Beispiel mii-exa-pro-wi-7-response.
// Wert 3 entspricht der Summe der dort gesetzten Antworten (Bereich 0-7).

Instance: mii-exa-pro-wi-7-score
InstanceOf: mii-pr-pro-score-instance
Title: "WI-7 Score Observation Example"
Description: "Whiteley-7 Total Score aus der Beispiel-QuestionnaireResponse (3 von 7)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #wi-7-total
* code.coding[=].display = "Whiteley-7 Total Score (0-7)"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-09-01"
* valueQuantity.value = 3
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-wi-7-response"
