// Generische binäre Ja/Nein-Antwortskala mit ordinalValue (0/1).
//
// SCHICHT: Modul-Infrastruktur (input/fsh/profiles/), NICHT instrumentengebunden.
// Begründung: Diese Skala wird von mehreren Instrumenten geteilt (SCOFF, WI-7, PC-PTSD).
// Ein Artefakt, das mehreren Instrumenten gehört, kann in keinem Instrumenten-Ordner liegen.
// Kriterium siehe docs/design/pcor-pss-instrumente.md, Abschnitt 10.
//
// Verwendung NUR für Instrumente, deren validierte Antwortskala tatsächlich ein schlichtes
// Ja/Nein mit Gewichten 0/1 ist. Instrumente mit eigener, validierter Wortwahl (auch wenn sie
// binär sind) bekommen ein eigenes CodeSystem in ihrem Instrumenten-Ordner — die Formulierung
// ist Teil des validierten Instruments.

CodeSystem: MII_CS_PRO_Yes_No_Answers
Id: mii-cs-pro-yes-no-answers
Title: "MII CS PRO Yes/No Answers"
Description: "Generic binary yes/no answer scale with ordinal weights (no = 0, yes = 1). Shared across instruments whose validated response scale is a plain yes/no dichotomy (e.g. SCOFF, Whiteley-7, PC-PTSD). English primary with German designations."

* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-yes-no-answers"
* ^status = #active
* ^content = #complete
* ^language = #en

// ordinalValue property for SDC ordinal scoring (uri matches HL7 ordinalValue extension)
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerical ordinal value (0/1) for score calculation via .ordinal().sum()"
* ^property[=].type = #decimal

* #no "No"
  * ^designation[+].language = #de
  * ^designation[=].value = "nein"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 0
* #yes "Yes"
  * ^designation[+].language = #de
  * ^designation[=].value = "ja"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
