// ===== PHYSICAL FUNCTIONING SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-pf
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Physical Functioning Score"
Description: "Physical Functioning Score from EORTC QLQ-C30"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+] = $SCT#273446001 "European Organisation for Research and Treatment of Cancer - Quality of Life questionnaire (assessment scale)"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-pf
* code.coding[=].display = "EORTC QLQ-C30 Physical Functioning Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 73.33
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"
* method.text = "EORTC QLQ-C30 Version 3.0 Scoring Manual"

// ===== ROLE FUNCTIONING SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-rf
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Role Functioning Score"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-rf
* code.coding[=].display = "EORTC QLQ-C30 Role Functioning Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 83.33
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"

// ===== EMOTIONAL FUNCTIONING SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-ef
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Emotional Functioning Score"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-ef
* code.coding[=].display = "EORTC QLQ-C30 Emotional Functioning Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 87.5
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"

// ===== COGNITIVE FUNCTIONING SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-cf
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Cognitive Functioning Score"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-cf
* code.coding[=].display = "EORTC QLQ-C30 Cognitive Functioning Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 100
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"

// ===== SOCIAL FUNCTIONING SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-sf
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Social Functioning Score"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-sf
* code.coding[=].display = "EORTC QLQ-C30 Social Functioning Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 91.67
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"

// ===== FATIGUE SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-fa
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Fatigue Score"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-fa
* code.coding[=].display = "EORTC QLQ-C30 Fatigue Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 22.22
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"

// ===== NAUSEA AND VOMITING SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-nv
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Nausea and Vomiting Score"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-nv
* code.coding[=].display = "EORTC QLQ-C30 Nausea and Vomiting Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 0
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"

// ===== PAIN SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-pa
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Pain Score"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-pa
* code.coding[=].display = "EORTC QLQ-C30 Pain Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 16.67
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"

// ===== DYSPNOEA SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-dy
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Dyspnoea Score"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-dy
* code.coding[=].display = "EORTC QLQ-C30 Dyspnoea Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 0
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"

// ===== INSOMNIA SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-sl
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Insomnia Score"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-sl
* code.coding[=].display = "EORTC QLQ-C30 Insomnia Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 33.33
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"

// ===== APPETITE LOSS SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-ap
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Appetite Loss Score"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-ap
* code.coding[=].display = "EORTC QLQ-C30 Appetite Loss Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 0
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"

// ===== CONSTIPATION SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-co
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Constipation Score"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-co
* code.coding[=].display = "EORTC QLQ-C30 Constipation Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 0
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"

// ===== DIARRHOEA SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-di
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Diarrhoea Score"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-di
* code.coding[=].display = "EORTC QLQ-C30 Diarrhoea Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 0
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"

// ===== FINANCIAL DIFFICULTIES SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-fi
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Financial Difficulties Score"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-fi
* code.coding[=].display = "EORTC QLQ-C30 Financial Difficulties Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 0
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"

// ===== GLOBAL HEALTH STATUS / QOL SCORE =====
Instance: mii-exa-pro-eortc-qlq-c30-observation-ql
InstanceOf: mii-pr-pro-score-instance
Title: "EORTC QLQ-C30 Global Health Status / Quality of Life Score"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)
* status = #final
* category.coding = $hl7-observation-category#survey "Survey"
* code.coding[+].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue"
* code.coding[=].code = #eortc-qlq-c30-ql
* code.coding[=].display = "EORTC QLQ-C30 Global Health Status / Quality of Life Score"
* subject.reference = "Patient/mii-exa-pro-patient"
* effectiveDateTime = "2024-01-15T10:30:00Z"
* valueQuantity.value = 66.67
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* derivedFrom.reference = "QuestionnaireResponse/mii-exa-pro-eortc-qlq-c30-response"