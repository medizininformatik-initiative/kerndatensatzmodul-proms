// Score-Observations zum Beispiel mii-exa-pro-promis-global-health-response (GPH 14, GMH 12).

Instance: mii-exa-pro-promis-global-health-physical-raw
InstanceOf: mii-pr-pro-score-instance
Title: "PROMIS Global Physical Health Raw Score Example"
Description: "Global Physical Health raw score from the example QuestionnaireResponse (14 of 4-20)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+] = $LNC#71972-4 "PROMIS-10 Global Physical Health (GPH) score"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #promis-global-health-physical-raw
* code.coding[=].display = "PROMIS Global Health - Global Physical Health Raw Score (4-20)"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-11-05"
* valueQuantity.value = 14
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-promis-global-health-response"

Instance: mii-exa-pro-promis-global-health-mental-raw
InstanceOf: mii-pr-pro-score-instance
Title: "PROMIS Global Mental Health Raw Score Example"
Description: "Global Mental Health raw score from the example QuestionnaireResponse (12 of 4-20)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+] = $LNC#71970-8 "PROMIS-10 Global Mental Health (GMH) score"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #promis-global-health-mental-raw
* code.coding[=].display = "PROMIS Global Health - Global Mental Health Raw Score (4-20)"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2026-11-05"
* valueQuantity.value = 12
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-promis-global-health-response"
