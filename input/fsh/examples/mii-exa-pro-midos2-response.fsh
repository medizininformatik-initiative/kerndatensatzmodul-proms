// ============================================================================
// MIDOS2 QuestionnaireResponse Example
// ============================================================================
// Szenario: Palliativpatient mit moderater Symptomlast
//   Schmerz: mittel (2), Übelkeit: leicht (1), Erbrechen: keine (0),
//   Luftnot: leicht (1), Verstopfung: mittel (2), Schwäche: stark (3),
//   Müdigkeit: stark (3), Appetitmangel: stark (3), Depressivität: mittel (2),
//   Angst: leicht (1), Anspannung: leicht (1)
//   → Symptom-Summe: 2+1+0+1+2+3+3+3+2+1+1 = 19/33
//   Wohlbefinden: eher schlecht (2)
// ============================================================================

Instance: mii-exa-pro-midos2-response-01
InstanceOf: mii-pr-pro-questionnaire-response
Title: "MII EXA PRO MIDOS2 Response"
Description: "MIDOS2 QuestionnaireResponse Beispiel — Palliativpatient mit moderater Symptomlast (Summe 19/33, Wohlbefinden eher schlecht)"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-midos-midos2"
* status = #completed
* subject.reference = "Patient/mii-exa-pro-patient"
* authored = "2026-06-01"

// Q1 — Schmerz: mittel (2)
* item[+].linkId = "midos2-q01-schmerz"
* item[=].answer.valueCoding = mii-cs-pro-midos2#midos2-severity-2 "mittlere"

// Q2 — Übelkeit: leicht (1)
* item[+].linkId = "midos2-q02-uebelkeit"
* item[=].answer.valueCoding = mii-cs-pro-midos2#midos2-severity-1 "leichte"

// Q3 — Erbrechen: keine (0)
* item[+].linkId = "midos2-q03-erbrechen"
* item[=].answer.valueCoding = mii-cs-pro-midos2#midos2-severity-0 "keine"

// Q4 — Luftnot: leicht (1)
* item[+].linkId = "midos2-q04-luftnot"
* item[=].answer.valueCoding = mii-cs-pro-midos2#midos2-severity-1 "leichte"

// Q5 — Verstopfung: mittel (2)
* item[+].linkId = "midos2-q05-verstopfung"
* item[=].answer.valueCoding = mii-cs-pro-midos2#midos2-severity-2 "mittlere"

// Q6 — Schwäche: stark (3)
* item[+].linkId = "midos2-q06-schwaeche"
* item[=].answer.valueCoding = mii-cs-pro-midos2#midos2-severity-3 "starke"

// Q7 — Müdigkeit: stark (3)
* item[+].linkId = "midos2-q07-muedigkeit"
* item[=].answer.valueCoding = mii-cs-pro-midos2#midos2-severity-3 "starke"

// Q8 — Appetitmangel: stark (3)
* item[+].linkId = "midos2-q08-appetitmangel"
* item[=].answer.valueCoding = mii-cs-pro-midos2#midos2-severity-3 "starke"

// Q9 — Depressivität: mittel (2)
* item[+].linkId = "midos2-q09-depressivitaet"
* item[=].answer.valueCoding = mii-cs-pro-midos2#midos2-severity-2 "mittlere"

// Q10 — Angst: leicht (1)
* item[+].linkId = "midos2-q10-angst"
* item[=].answer.valueCoding = mii-cs-pro-midos2#midos2-severity-1 "leichte"

// Q11 — Anspannung: leicht (1)
* item[+].linkId = "midos2-q11-anspannung"
* item[=].answer.valueCoding = mii-cs-pro-midos2#midos2-severity-1 "leichte"

// Q12 — Wohlbefinden gesamt: eher schlecht (2)
* item[+].linkId = "midos2-q12-wohlbefinden"
* item[=].answer.valueCoding = mii-cs-pro-midos2#midos2-wellbeing-2 "eher schlecht"

// Q13 — Andere Beschwerden (freitext)
* item[+].linkId = "midos2-q13-sonstiges"
* item[=].answer.valueString = "Schlafstörungen, häufiges nächtliches Erwachen"
