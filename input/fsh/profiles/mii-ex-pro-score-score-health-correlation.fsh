Extension: MII_EX_PRO_Score_Score_Health_Correlation
Id: mii-ex-pro-score-score-health-correlation
Title: "MII Ex PRO Score Score Health Correlation"
Description: "MII Ex PRO Score Score Health Correlation"
* insert PR_CS_VS_Version
* ^context.type = #element
* ^context.expression = "ObservationDefinition.qualifiedInterval.range"
* ^url = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-score-score-health-correlation"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/measure-improvement-notation" (exactly)
* valueCodeableConcept.coding.code 1..1 MS 
* valueCodeableConcept.text MS