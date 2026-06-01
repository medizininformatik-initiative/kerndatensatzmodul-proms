// MIDOS2 Questionnaire — Minimal Documentation System v2 (DGP)
// Source: Stiel S, et al. Der Schmerz. 2010;24(4):416-424 (Original-MIDOS-Validierung)
//         Stiel S, et al. Der Schmerz. 2012 (MIDOS2-Erweiterung)
// License: DGP (Deutsche Gesellschaft für Palliativmedizin)
//
// TODO: Source-Verifikation Item-Wordings und Reihenfolge (Bead 5jd)
//
// Struktur: 11 Symptom-Items (DGP-Severity-Skala) + 1 Wohlbefinden + 1 freitext
// Sprache: Deutsch primary, Englisch translation

Instance: mii-qst-pro-midos-midos2
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO MIDOS2"
Description: "MIDOS2 (Minimales Dokumentationssystem für Palliativpatienten, v2) — Symptom-Screening für die Palliativmedizin nach DGP. 11 Symptom-Items mit 4-stufiger DGP-Skala, ein Wohlbefinden-Item, ein offenes Item für sonstige Beschwerden."
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-midos-midos2"
* name = "MII_QST_PRO_MIDOS_MIDOS2"
* status = #draft
* experimental = true
* language = #de
* publisher = "Medizininformatik-Initiative"
* copyright = "MIDOS2 ist ein Instrument der Deutschen Gesellschaft für Palliativmedizin (DGP), frei verwendbar für klinische und Forschungszwecke."
* code[+] = $mii-cs-pro-questionnaire-catalogue#midos-midos2 "MIDOS2 (Minimales Dokumentationssystem für Palliativpatienten, DGP)"

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// FHIR Variable: Symptom-Sum-Score (Summe der 11 Symptom-Items, max 33)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "symptomSumScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^midos2-q(0[1-9]|1[01])-')).answer.value.ordinal().sum()"

// ============================================================================
// Display item: Instruktion
// ============================================================================

* item[0].linkId = "midos2-instruction"
* item[0].type = #display
* item[0].text = "Bitte geben Sie an, wie stark Sie in den letzten Tagen unter folgenden Beschwerden gelitten haben."
* item[0].text.extension[0].url = $hl7-translation
* item[0].text.extension[0].extension[0].url = "lang"
* item[0].text.extension[0].extension[0].valueCode = #en
* item[0].text.extension[0].extension[1].url = "content"
* item[0].text.extension[0].extension[1].valueString = "Please indicate how severely you have suffered from the following complaints over the past few days."

// ============================================================================
// Q1 — Schmerz
// ============================================================================
* item[+].linkId = "midos2-q01-schmerz"
* item[=].type = #choice
* item[=].prefix = "1"
* item[=].code = mii-cs-pro-midos2#midos2-q01-schmerz
* item[=].text = "Schmerz"
* item[=].text.extension[0].url = $hl7-translation
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #en
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Pain"
* item[=].required = true
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"

// ============================================================================
// Q2 — Übelkeit
// ============================================================================
* item[+].linkId = "midos2-q02-uebelkeit"
* item[=].type = #choice
* item[=].prefix = "2"
* item[=].code = mii-cs-pro-midos2#midos2-q02-uebelkeit
* item[=].text = "Übelkeit"
* item[=].text.extension[0].url = $hl7-translation
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #en
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Nausea"
* item[=].required = true
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"

// ============================================================================
// Q3 — Erbrechen
// ============================================================================
* item[+].linkId = "midos2-q03-erbrechen"
* item[=].type = #choice
* item[=].prefix = "3"
* item[=].code = mii-cs-pro-midos2#midos2-q03-erbrechen
* item[=].text = "Erbrechen"
* item[=].text.extension[0].url = $hl7-translation
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #en
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Vomiting"
* item[=].required = true
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"

// ============================================================================
// Q4 — Luftnot
// ============================================================================
* item[+].linkId = "midos2-q04-luftnot"
* item[=].type = #choice
* item[=].prefix = "4"
* item[=].code = mii-cs-pro-midos2#midos2-q04-luftnot
* item[=].text = "Luftnot"
* item[=].text.extension[0].url = $hl7-translation
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #en
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Shortness of breath"
* item[=].required = true
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"

// ============================================================================
// Q5 — Verstopfung
// ============================================================================
* item[+].linkId = "midos2-q05-verstopfung"
* item[=].type = #choice
* item[=].prefix = "5"
* item[=].code = mii-cs-pro-midos2#midos2-q05-verstopfung
* item[=].text = "Verstopfung"
* item[=].text.extension[0].url = $hl7-translation
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #en
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Constipation"
* item[=].required = true
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"

// ============================================================================
// Q6 — Schwäche
// ============================================================================
* item[+].linkId = "midos2-q06-schwaeche"
* item[=].type = #choice
* item[=].prefix = "6"
* item[=].code = mii-cs-pro-midos2#midos2-q06-schwaeche
* item[=].text = "Schwäche"
* item[=].text.extension[0].url = $hl7-translation
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #en
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Weakness"
* item[=].required = true
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"

// ============================================================================
// Q7 — Müdigkeit
// ============================================================================
* item[+].linkId = "midos2-q07-muedigkeit"
* item[=].type = #choice
* item[=].prefix = "7"
* item[=].code = mii-cs-pro-midos2#midos2-q07-muedigkeit
* item[=].text = "Müdigkeit"
* item[=].text.extension[0].url = $hl7-translation
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #en
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Tiredness"
* item[=].required = true
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"

// ============================================================================
// Q8 — Appetitmangel
// ============================================================================
* item[+].linkId = "midos2-q08-appetitmangel"
* item[=].type = #choice
* item[=].prefix = "8"
* item[=].code = mii-cs-pro-midos2#midos2-q08-appetitmangel
* item[=].text = "Appetitmangel"
* item[=].text.extension[0].url = $hl7-translation
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #en
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Loss of appetite"
* item[=].required = true
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"

// ============================================================================
// Q9 — Depressivität
// ============================================================================
* item[+].linkId = "midos2-q09-depressivitaet"
* item[=].type = #choice
* item[=].prefix = "9"
* item[=].code = mii-cs-pro-midos2#midos2-q09-depressivitaet
* item[=].text = "Depressivität"
* item[=].text.extension[0].url = $hl7-translation
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #en
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Depression"
* item[=].required = true
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"

// ============================================================================
// Q10 — Angst
// ============================================================================
* item[+].linkId = "midos2-q10-angst"
* item[=].type = #choice
* item[=].prefix = "10"
* item[=].code = mii-cs-pro-midos2#midos2-q10-angst
* item[=].text = "Angst"
* item[=].text.extension[0].url = $hl7-translation
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #en
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Anxiety"
* item[=].required = true
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"

// ============================================================================
// Q11 — Anspannung
// ============================================================================
* item[+].linkId = "midos2-q11-anspannung"
* item[=].type = #choice
* item[=].prefix = "11"
* item[=].code = mii-cs-pro-midos2#midos2-q11-anspannung
* item[=].text = "Anspannung"
* item[=].text.extension[0].url = $hl7-translation
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #en
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Tension"
* item[=].required = true
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-severity"

// ============================================================================
// Q12 — Wohlbefinden gesamt (eigene 4-stufige Skala)
// ============================================================================
* item[+].linkId = "midos2-q12-wohlbefinden"
* item[=].type = #choice
* item[=].prefix = "12"
* item[=].code = mii-cs-pro-midos2#midos2-q12-wohlbefinden
* item[=].text = "Wie würden Sie Ihr Wohlbefinden insgesamt einschätzen?"
* item[=].text.extension[0].url = $hl7-translation
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #en
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "How would you rate your overall wellbeing?"
* item[=].required = true
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-midos2-wellbeing"

// ============================================================================
// Q13 — Sonstige Beschwerden (freitext)
// ============================================================================
* item[+].linkId = "midos2-q13-sonstiges"
* item[=].type = #string
* item[=].prefix = "13"
* item[=].code = mii-cs-pro-midos2#midos2-q13-sonstiges
* item[=].text = "Andere Beschwerden (bitte angeben)"
* item[=].text.extension[0].url = $hl7-translation
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #en
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Other complaints (please specify)"
* item[=].required = false
