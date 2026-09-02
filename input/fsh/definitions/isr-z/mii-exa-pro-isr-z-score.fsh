// Score-Observation zum Beispiel mii-exa-pro-isr-z-response.
// ACHTUNG: Das ISR bildet Skalenwerte als MITTELWERT, nicht als Summe.
// Items 2, 1, 3 → (2+1+3)/3 = 2.0 (Bereich 0-4, nicht 0-12).

Instance: mii-exa-pro-isr-z-score
InstanceOf: mii-pr-pro-score-instance
Title: "ISR-Z Score Observation Example"
Description: "ISR-Z Skalenwert (Mittelwert) aus der Beispiel-QuestionnaireResponse: 2.0 von 4"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #isr-z-mean
* code.coding[=].display = "ISR-Z Skalenwert (Mittelwert 0-4)"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-09-01"
* valueQuantity.value = 2.0
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-isr-z-response"
