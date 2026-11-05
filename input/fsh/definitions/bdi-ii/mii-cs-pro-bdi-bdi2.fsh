CodeSystem: MII_CS_PRO_BDI_BDI2_AnswerList
Id: mii-cs-pro-bdi-bdi2
Title: "MII CS PRO BDI-II"
Description: "MII CS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-bdi-bdi2"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2"

// Antwortgewichte als itemWeight-Property (Beads g3b.14). Die Gewichte lagen bis zum
// SDC-4-Upgrade (de5d6c45b2) als ordinalValue am ValueSet und gingen dort verloren.
// (Ausgeschrieben statt WeightedConcept: Klammern im Display brechen die RuleSet-Parameter.)
* insert ItemWeightProperty

* #bdi-bdi2-answer-0 "0 points"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 0
* #bdi-bdi2-answer-1 "1 point"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 1
* #bdi-bdi2-answer-2 "2 points"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 2
* #bdi-bdi2-answer-3 "3 points"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 3
* #bdi-bdi2-answer-1a "1 point (variant a)"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 1
* #bdi-bdi2-answer-1b "1 point (variant b)"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 1
* #bdi-bdi2-answer-2a "2 points (variant a)"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 2
* #bdi-bdi2-answer-2b "2 points (variant b)"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 2
* #bdi-bdi2-answer-3a "3 points (variant a)"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 3
* #bdi-bdi2-answer-3b "3 points (variant b)"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = 3
