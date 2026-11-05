// Score-Observation zum Beispiel mii-exa-pro-phq-panic-response.
// Wert 3 entspricht der Anzahl der dort gesetzten Ja-Antworten (Bereich 0-4).

Instance: mii-exa-pro-phq-panic-score
InstanceOf: mii-pr-pro-score-instance
Title: "PHQ-D Panikblock Score Observation Example"
Description: "PHQ-D Panikblock yes-count from the example QuestionnaireResponse (3 of 4)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #phq-panic-count
* code.coding[=].display = "PHQ-D Panikblock Yes-Count (0-4, screening items 3a-3d)"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-11-05"
* valueQuantity.value = 3
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-phq-panic-response"
