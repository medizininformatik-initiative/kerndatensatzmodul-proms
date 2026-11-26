// Measurement series for the collection context (HDB-1030): PHQ-9 total score of one patient at
// baseline (mii-exa-pro-phq-9-observation), discharge and 3-month follow-up. The series is
// formed by subject + score code + collectionContext; triggerDate of the follow-up is the
// discharge date, i.e. the reference event the interval refers to.

Instance: mii-exa-pro-phq-9-observation-discharge
InstanceOf: MII_PR_PRO_Observation_PHQ_9
Usage: #example
Title: "PHQ-9 Observation Example – Discharge"
Description: "Second point of a PHQ-9 measurement series: total score at discharge (collection context: discharge)."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9)
* status = #final
* subject = Reference(Patient/mii-exa-pro-patient)
* effectiveDateTime = "2023-10-20T10:00:00Z"
* code = $LNC#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
* valueQuantity.value = 14
* valueQuantity.code = #{score}
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* extension[collectionContext].extension[triggerType].valueCodeableConcept = $mii-cs-pro-trigger-event-type#discharge "Discharge"
* extension[collectionContext].extension[triggerDate].valueDate = "2023-10-20"

Instance: mii-exa-pro-phq-9-observation-follow-up-3m
InstanceOf: MII_PR_PRO_Observation_PHQ_9
Usage: #example
Title: "PHQ-9 Observation Example – 3-Month Follow-up"
Description: "Third point of a PHQ-9 measurement series: total score three months after discharge (collection context: follow-up; triggerDate = discharge date as reference event)."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9)
* status = #final
* subject = Reference(Patient/mii-exa-pro-patient)
* effectiveDateTime = "2024-01-22T09:30:00Z"
* code = $LNC#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
* valueQuantity.value = 8
* valueQuantity.code = #{score}
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* extension[collectionContext].extension[triggerType].valueCodeableConcept = $mii-cs-pro-trigger-event-type#follow-up "Follow-up"
* extension[collectionContext].extension[triggerDate].valueDate = "2023-10-20"
