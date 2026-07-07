// PHQ-15 (Kroenke K, Spitzer RL, Williams JBW. The PHQ-15: Validity of a New Measure for Evaluating the
// Severity of Somatic Symptoms. Psychosomatic Medicine 2002; 64(2):258–266)
// German version: PHQ-D (Löwe B, Spitzer RL, Zipfel S, Herzog W. PHQ-D. Gesundheitsfragebogen für
// Patienten. Pfizer, Karlsruhe 2002)
// German validation: Gräfe K, Zipfel S, Herzog W, Löwe B. Diagnostica 2004; 50(4):171–181.
// doi:10.1026/0012-1924.50.4.171
// License: frei verfügbar (public domain, no permission required)
//
// Design: English-primary displays (PHQ original) with German designations (PHQ-D).
// ordinalValue property (0/1/2) declared on each concept so that SDC .ordinal() can resolve
// weights when this CS is expanded via mii-vs-pro-phq-15-answers as answerValueSet.
// Note: in-form .ordinal() resolution from answerValueSet is engine-dependent;
// server-side scoring via CQL/StructureMap is tracked separately.

CodeSystem: MII_CS_PRO_PHQ_15_Answers
Id: mii-cs-pro-phq-15-answers
Title: "MII CS PRO PHQ-15 Answers"
Description: "MII-controlled bother severity answer scale for PHQ-15 (0–2). English primary with German designations. ordinalValue properties on each concept enable SDC ordinal scoring via answerValueSet."

* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-phq-15-answers"
* ^status = #active
* ^content = #complete
* ^language = #en

// ordinalValue property for SDC ordinal scoring (uri matches HL7 ordinalValue extension)
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerical ordinal value (0–2) for SDC calculatedExpression scoring via .ordinal().sum()"
* ^property[=].type = #decimal

* #not-bothered "Not bothered at all"
  * ^designation[+].language = #de
  * ^designation[=].value = "Nicht beeinträchtigt"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 0
* #bothered-a-little "Bothered a little"
  * ^designation[+].language = #de
  * ^designation[=].value = "Wenig beeinträchtigt"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #bothered-a-lot "Bothered a lot"
  * ^designation[+].language = #de
  * ^designation[=].value = "Stark beeinträchtigt"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2
