// MIDOS2 CodeSystem — Item codes and DGP-Antwortskalen
// Source: Stiel S, et al. Validierung MIDOS2. Der Schmerz. 2012 (DOI 10.1007/s00482-011-1124-7)
//         Stiel S, et al. Evaluation und Weiterentwicklung der MIDOS.
//         Der Schmerz. 2010;24(4):416-424 (DOI 10.1007/s00482-010-0972-5)
// License: DGP (Deutsche Gesellschaft für Palliativmedizin) — frei für klinische und Forschungszwecke
//
// TODO: Source-Verifikation gegen Original-PDF von Stiel et al. ausstehend (Bead 5jd)
//       Item-Reihenfolge und genaue Wordings müssen 1:1 mit Original abgeglichen werden.
//
// Struktur:
//   1. DGP-Severity-Skala — 4-stufig (kein/leicht/mittel/stark), für 11 Symptom-Items
//   2. Wohlbefinden-Skala — 4-stufig (sehr gut/eher gut/eher schlecht/sehr schlecht)
//   3. Item-Codes — 11 Symptome + 1 Wohlbefinden + 1 freitext

CodeSystem: MII_CS_PRO_MIDOS2
Id: mii-cs-pro-midos2
Title: "MII CS PRO MIDOS2 Items and Response Scales"
Description: "CodeSystem for the Minimal Documentation System v2 (MIDOS2) — German palliative care symptom screening instrument. Contains item codes, DGP-4-stufige Severity-Skala, and 4-stufige Wohlbefinden-Skala. German primary language, English translations as designations."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-midos2"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^copyright = "MIDOS2 ist ein Instrument der Deutschen Gesellschaft für Palliativmedizin (DGP), frei verwendbar für klinische und Forschungszwecke."

// ============================================================================
// SECTION 1: DGP-Severity-Skala (4-stufig, 0-3) — für 11 Symptom-Items
// ============================================================================

* #midos2-severity-0 "keine"
  * ^designation[0].language = #en
  * ^designation[0].value = "none"
* #midos2-severity-1 "leichte"
  * ^designation[0].language = #en
  * ^designation[0].value = "mild"
* #midos2-severity-2 "mittlere"
  * ^designation[0].language = #en
  * ^designation[0].value = "moderate"
* #midos2-severity-3 "starke"
  * ^designation[0].language = #en
  * ^designation[0].value = "severe"

// ============================================================================
// SECTION 2: Wohlbefinden-Skala (4-stufig) — für Wohlbefinden-Item
// ============================================================================

* #midos2-wellbeing-0 "sehr gut"
  * ^designation[0].language = #en
  * ^designation[0].value = "very good"
* #midos2-wellbeing-1 "eher gut"
  * ^designation[0].language = #en
  * ^designation[0].value = "rather good"
* #midos2-wellbeing-2 "eher schlecht"
  * ^designation[0].language = #en
  * ^designation[0].value = "rather poor"
* #midos2-wellbeing-3 "sehr schlecht"
  * ^designation[0].language = #en
  * ^designation[0].value = "very poor"

// ============================================================================
// SECTION 3: Item codes — 11 Symptome + 1 Wohlbefinden + 1 freitext
// SNOMED-Properties: kanonische Symptom-Referenzen wo verfügbar
// TODO: SNOMED-Codes via Snowstorm verifizieren (Termserver-Reset ausstehend)
// ============================================================================

* ^property[0].code = #snomed
* ^property[0].type = #code
* ^property[0].description = "SNOMED CT Equivalent für externe Interoperabilität"

// Q1 — Schmerz
* #midos2-q01-schmerz "Schmerz"
  * ^designation[0].language = #en
  * ^designation[0].value = "Pain"
  * ^property[0].code = #snomed
  * ^property[0].valueCode = #22253000

// Q2 — Übelkeit
* #midos2-q02-uebelkeit "Übelkeit"
  * ^designation[0].language = #en
  * ^designation[0].value = "Nausea"
  * ^property[0].code = #snomed
  * ^property[0].valueCode = #422587007

// Q3 — Erbrechen
* #midos2-q03-erbrechen "Erbrechen"
  * ^designation[0].language = #en
  * ^designation[0].value = "Vomiting"
  * ^property[0].code = #snomed
  * ^property[0].valueCode = #422400008

// Q4 — Luftnot
* #midos2-q04-luftnot "Luftnot"
  * ^designation[0].language = #en
  * ^designation[0].value = "Shortness of breath"
  * ^property[0].code = #snomed
  * ^property[0].valueCode = #267036007

// Q5 — Verstopfung
* #midos2-q05-verstopfung "Verstopfung"
  * ^designation[0].language = #en
  * ^designation[0].value = "Constipation"
  * ^property[0].code = #snomed
  * ^property[0].valueCode = #14760008

// Q6 — Schwäche
// TODO: SNOMED — Kandidat 13791008 |Asthenia (finding)|, Verifikation ausstehend
* #midos2-q06-schwaeche "Schwäche"
  * ^designation[0].language = #en
  * ^designation[0].value = "Weakness"

// Q7 — Müdigkeit
* #midos2-q07-muedigkeit "Müdigkeit"
  * ^designation[0].language = #en
  * ^designation[0].value = "Tiredness"
  * ^property[0].code = #snomed
  * ^property[0].valueCode = #84229001

// Q8 — Appetitmangel
* #midos2-q08-appetitmangel "Appetitmangel"
  * ^designation[0].language = #en
  * ^designation[0].value = "Loss of appetite"
  * ^property[0].code = #snomed
  * ^property[0].valueCode = #79890006

// Q9 — Depressivität
* #midos2-q09-depressivitaet "Depressivität"
  * ^designation[0].language = #en
  * ^designation[0].value = "Depression"
  * ^property[0].code = #snomed
  * ^property[0].valueCode = #35489007

// Q10 — Angst
* #midos2-q10-angst "Angst"
  * ^designation[0].language = #en
  * ^designation[0].value = "Anxiety"
  * ^property[0].code = #snomed
  * ^property[0].valueCode = #48694002

// Q11 — Anspannung
// TODO: SNOMED — Kandidat 225445004 |Feeling tense|, Verifikation ausstehend
* #midos2-q11-anspannung "Anspannung"
  * ^designation[0].language = #en
  * ^designation[0].value = "Tension"

// Q12 — Wohlbefinden gesamt
* #midos2-q12-wohlbefinden "Wohlbefinden"
  * ^designation[0].language = #en
  * ^designation[0].value = "Overall wellbeing"

// Q13 — Andere Beschwerden (freitext)
* #midos2-q13-sonstiges "Andere Beschwerden"
  * ^designation[0].language = #en
  * ^designation[0].value = "Other complaints"
