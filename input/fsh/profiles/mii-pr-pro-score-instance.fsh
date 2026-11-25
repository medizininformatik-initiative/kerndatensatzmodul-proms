Profile: MII_PR_PRO_Score_Instance
Parent: Observation
Id: mii-pr-pro-score-instance
Title: "MII PR PRO Score Instance"  
Description: "MII PR PRO Score Instance"
* insert PR_CS_VS_Version
* ^status = #active

* identifier 0..* MS
* effectiveDateTime 0..1 MS
* extension 0..* MS
// Collection context (HDB-1030): same value as on the QuestionnaireResponse in derivedFrom.
* extension contains MII_EX_PRO_Collection_Context named collectionContext 0..1 MS
* extension[collectionContext] ^short = "Collection context, copied from the source QuestionnaireResponse"
* basedOn MS
* encounter MS
* extension contains http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical
	 named instantiatesCanonical 0..1 MS

* focus MS
* status MS
* subject 1..1 
* performer 0..* MS
* method 0..1 MS
* code 1..1 MS
* value[x] MS
* value[x] only Quantity or CodeableConcept or string 
* interpretation 0..* MS
* note 0..* MS
* derivedFrom 0..* MS

