// Score-Observation zum Beispiel mii-exa-pro-gad-7-response.
// Wert 7 entspricht der Summe der dort gesetzten Antworten (leichte Angstsymptomatik).

Instance: mii-exa-pro-gad-7-score
InstanceOf: mii-pr-pro-score-instance
Title: "GAD-7 Score Observation Example"
Description: "GAD-7 Summenwert aus der Beispiel-QuestionnaireResponse: 7 von 21"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+] = $LNC#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #phq-gad7-total
* code.coding[=].display = "GAD-7 Total Score (0-21)"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-09-02"
* valueQuantity.value = 7
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-gad-7-response"
