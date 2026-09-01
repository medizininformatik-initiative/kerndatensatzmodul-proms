// ISR-Z answer scale (Tritt K, et al. "Entwicklung des Fragebogens »ICD-10-Symptom-Rating« (ISR)".
// Z Psychosom Med Psychother 2008; 54(4):409-418. doi:10.13109/zptm.2008.54.4.409)
// 5-stufige Zustimmungsskala 0-4, wortgleich für alle Items der Z-Subskala.
//
// Antwortmodellierung: Fall B (docs/design/pcor-pss-instrumente.md, Abschnitt 4) — die Formulierung
// ist Teil des validierten ISR-Instruments, wir besitzen die Terminologie. Eigenes MII-CodeSystem
// mit ordinalValue-Property, gebunden über answerValueSet (siehe mii-vs-pro-isr-z-answers.fsh).
//
// Sprache: Deutsch als Originalsprache (das ISR wurde auf Deutsch entwickelt) — kein englisches
// Pendant, da keine validierte englische Fassung dieser Antwortskala vorliegt.

CodeSystem: MII_CS_PRO_ISR_Z_Answers
Id: mii-cs-pro-isr-z-answers
Title: "MII CS PRO ISR-Z Answers"
Description: "MII-controlled Zustimmungsskala des ISR (0-4), deutsches Original. ordinalValue-Property je Konzept ermöglicht SDC-Ordinalscoring via answerValueSet."

* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-isr-z-answers"
* ^status = #active
* ^content = #complete
* ^language = #de

// ordinalValue property for SDC ordinal scoring (uri matches HL7 ordinalValue extension)
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerical ordinal value (0-4) for SDC calculatedExpression scoring via .ordinal().avg()"
* ^property[=].type = #decimal

* #trifft-nicht-zu "trifft nicht zu"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 0
* #trifft-kaum-zu "trifft kaum zu"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #trifft-ziemlich-zu "trifft ziemlich zu"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2
* #trifft-deutlich-zu "trifft deutlich zu"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 3
* #trifft-extrem-zu "trifft extrem zu"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 4
