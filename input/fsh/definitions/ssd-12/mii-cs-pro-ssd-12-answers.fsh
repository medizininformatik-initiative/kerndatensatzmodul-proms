// SSD-12 (Somatic Symptom Disorder – B Criteria Scale) — 5-stufige Häufigkeitsskala.
// Toussaint A, Löwe B, Brähler E, Jordan P. The Somatic Symptom Disorder – B Criteria Scale
// (SSD-12): Factorial structure, validity and population-based norms. Journal of Psychosomatic
// Research 2017; 97:9-17. doi:10.1016/j.jpsychores.2017.03.017
// (Erstvalidierung: Toussaint A, Murray AM, Voigt K, et al. Development and validation of the
// Somatic Symptom Disorder-B Criteria Scale (SSD-12). Psychosomatic Medicine 2016; 78(1):5-12.
// doi:10.1097/PSY.0000000000000240)
// German item wording: PCOR-MII Item Level Dictionary (MASTER_3EntitiesOverview.xlsx, Sheet
// "Item Level Dictionary PSS", variables SSD12_01-SSD12_12).
//
// Fall B (siehe docs/design/pcor-pss-instrumente.md, Abschnitt 4): instrumentenspezifische,
// validierte Antwortskala — eigenes MII-CodeSystem mit ordinalValue-Property und Designations,
// gebunden über answerValueSet.
//
// Sprechende Codes (englisch) mit ordinalValue 0-4; die deutsche Formulierung aus der
// Item-Datei steht als designation (#de). Die deutschen Displays sind hier die eigentlichen,
// im Instrument verwendeten Begriffe — die englischen Codes/Displays dienen ausschließlich der
// FHIR-internen Lesbarkeit (siehe mii-qst-pro-ssd-12.fsh für die Sprachwahl des Fragebogens
// selbst: language = #de).

CodeSystem: MII_CS_PRO_SSD_12_Answers
Id: mii-cs-pro-ssd-12-answers
Title: "MII CS PRO SSD-12 Answers"
Description: "MII-controlled frequency answer scale for SSD-12 (0-4). English display with German designation (original instrument wording). ordinalValue properties on each concept enable SDC ordinal scoring via answerValueSet."

* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-ssd-12-answers"
* ^status = #active
* ^content = #complete
* ^language = #en

// ordinalValue property for SDC ordinal scoring (uri matches HL7 ordinalValue extension)
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerical ordinal value (0-4) for SDC calculatedExpression scoring via .ordinal().sum()"
* ^property[=].type = #decimal

* #never "Never"
  * ^designation[+].language = #de
  * ^designation[=].value = "nie"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 0
* #rarely "Rarely"
  * ^designation[+].language = #de
  * ^designation[=].value = "selten"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #sometimes "Sometimes"
  * ^designation[+].language = #de
  * ^designation[=].value = "manchmal"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2
* #often "Often"
  * ^designation[+].language = #de
  * ^designation[=].value = "oft"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 3
* #very-often "Very often"
  * ^designation[+].language = #de
  * ^designation[=].value = "sehr oft"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 4
