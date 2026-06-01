// PRO-CTCAE Onkologisches Basisscreening (DKG-Kontext)
// Subset des PRO-CTCAE für allgemeines onkologisches Symptom-Screening.
// Symptomauswahl entspricht den MIDOS2-Symptomen — gemeinsame Problem List für
// onkologisches und palliativmedizinisches Screening.
//
// Source: PRO-CTCAE Item Library v1.0 (NCI), deutsche Übersetzung NCI-autorisiert
// Mapping-Referenz: docs/discussion/2026.4.0/midos2-proctcae-mapping.pdf
//
// 10 AEs / 23 Items:
//   Schmerz (#48), Müdigkeit (#53), Übelkeit (#9), Erbrechen (#10),
//   Appetitmangel (#8), Verstopfung (#15), Luftnot (#19),
//   Mutlosigkeit (#55) + Traurigkeit (#56) → MIDOS Depressivität,
//   Angst (#54) → MIDOS Angst + Anspannung
//
// TODO: Wenn Master Questionnaire mii-qst-pro-pro-ctcae-complete existiert,
//       derivedFrom darauf setzen und Item-Definitionen entsprechend ableiten.

Instance: mii-qst-pro-pro-ctcae-onkologisches-basisscreening
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PRO-CTCAE Onkologisches Basisscreening"
Description: "Onkologisches Basisscreening basierend auf PRO-CTCAE-Items. Erfasst die wichtigsten Symptome onkologischer Patienten mit den 5-stufigen PRO-CTCAE-Skalen (Häufigkeit, Schweregrad, Beeinträchtigung). Symptomauswahl konzeptuell parallel zu MIDOS2 für eine gemeinsame Problem List zwischen Onkologie und Palliativmedizin."
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-pro-ctcae-onkologisches-basisscreening"
* name = "MII_QST_PRO_PRO_CTCAE_Onkologisches_Basisscreening"
* status = #draft
* experimental = true
* language = #de
* publisher = "Medizininformatik-Initiative"
* copyright = "PRO-CTCAE is a product of the US National Cancer Institute (NCI). The PRO-CTCAE items, calculation algorithms, and item library are available free of charge for use in cancer clinical trials."
* code[+] = $mii-cs-pro-questionnaire-catalogue#proctcae-onkologisches-basisscreening "PRO-CTCAE Onkologisches Basisscreening (DKG, MIDOS2-äquivalente Symptome)"

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// SDC Observation-based extraction
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* extension[=].valueBoolean = true

// ============================================================================
// Instruktion
// ============================================================================
* item[0].linkId = "onkoscreen-instruction"
* item[0].type = #display
* item[0].text = "In den FOLGENDEN FRAGEN geht es darum, wie Sie sich während der LETZTEN 7 TAGE gefühlt haben. Bitte beantworten Sie ALLE Fragen."
* item[0].text.extension[0].url = $hl7-translation
* item[0].text.extension[0].extension[0].url = "lang"
* item[0].text.extension[0].extension[0].valueCode = #en
* item[0].text.extension[0].extension[1].url = "content"
* item[0].text.extension[0].extension[1].valueString = "The FOLLOWING QUESTIONS ask about how you have felt over the PAST 7 DAYS. Please answer ALL questions."

// ============================================================================
// Symptom 1 — Schmerz (AE #48 General Pain, frq+sev+int)
// ============================================================================
* item[+].linkId = "proctcae-48"
* item[=].text = "Schmerzen"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-48a-frq"
* item[=].item[=].text = "Wie HÄUFIG hatten Sie SCHMERZEN?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency"
* item[=].item[+].linkId = "proctcae-48b-sev"
* item[=].item[=].text = "Wie STARK waren Ihre SCHMERZEN im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-48c-int"
* item[=].item[=].text = "Wie sehr haben SCHMERZEN Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 2 — Müdigkeit (AE #53 Fatigue, sev+int)
// ============================================================================
* item[+].linkId = "proctcae-53"
* item[=].text = "Müdigkeit, Erschöpfung oder fehlende Energie"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-53a-sev"
* item[=].item[=].text = "Wie STARK waren Ihre MÜDIGKEIT, ERSCHÖPFUNG ODER FEHLENDE ENERGIE im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-53b-int"
* item[=].item[=].text = "Wie sehr haben MÜDIGKEIT, ERSCHÖPFUNG ODER FEHLENDE ENERGIE Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 3 — Übelkeit (AE #9 Nausea, frq+sev)
// ============================================================================
* item[+].linkId = "proctcae-09"
* item[=].text = "Übelkeit"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-09a-frq"
* item[=].item[=].text = "Wie HÄUFIG hatten Sie ÜBELKEIT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency"
* item[=].item[+].linkId = "proctcae-09b-sev"
* item[=].item[=].text = "Wie STARK war Ihre ÜBELKEIT im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"

// ============================================================================
// Symptom 4 — Erbrechen (AE #10 Vomiting, frq+sev)
// ============================================================================
* item[+].linkId = "proctcae-10"
* item[=].text = "Erbrechen"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-10a-frq"
* item[=].item[=].text = "Wie HÄUFIG mussten Sie ERBRECHEN?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency"
* item[=].item[+].linkId = "proctcae-10b-sev"
* item[=].item[=].text = "Wie STARK war Ihr ERBRECHEN im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"

// ============================================================================
// Symptom 5 — Appetitmangel (AE #8 Decreased Appetite, sev+int)
// ============================================================================
* item[+].linkId = "proctcae-08"
* item[=].text = "Appetitmangel"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-08a-sev"
* item[=].item[=].text = "Wie STARK war Ihr APPETITMANGEL im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-08b-int"
* item[=].item[=].text = "Wie sehr hat Ihr APPETITMANGEL Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 6 — Verstopfung (AE #15 Constipation, sev only)
// ============================================================================
* item[+].linkId = "proctcae-15"
* item[=].text = "Verstopfung"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-15a-sev"
* item[=].item[=].text = "Wie STARK war Ihre VERSTOPFUNG im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"

// ============================================================================
// Symptom 7 — Luftnot (AE #19 Shortness of Breath, sev+int)
// ============================================================================
* item[+].linkId = "proctcae-19"
* item[=].text = "Kurzatmigkeit"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-19a-sev"
* item[=].item[=].text = "Wie STARK war Ihre KURZATMIGKEIT im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-19b-int"
* item[=].item[=].text = "Wie sehr hat KURZATMIGKEIT Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 8 — Mutlosigkeit (AE #55 Discouraged, frq+sev+int) — MIDOS Depressivität Teil 1
// ============================================================================
* item[+].linkId = "proctcae-55"
* item[=].text = "Mutlosigkeit (Gefühl, dass einen nichts aufmuntern kann)"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-55a-frq"
* item[=].item[=].text = "Wie HÄUFIG hatten Sie das GEFÜHL, DASS SIE NICHTS AUFMUNTERN KONNTE?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency"
* item[=].item[+].linkId = "proctcae-55b-sev"
* item[=].item[=].text = "Wie STARK hatten Sie das GEFÜHL, DASS SIE NICHTS AUFMUNTERN KONNTE, im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-55c-int"
* item[=].item[=].text = "Wie sehr hat Sie das GEFÜHL, DASS SIE NICHTS AUFMUNTERN KONNTE in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 9 — Traurigkeit (AE #56 Sad, frq+sev+int) — MIDOS Depressivität Teil 2
// ============================================================================
* item[+].linkId = "proctcae-56"
* item[=].text = "Traurigkeit"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-56a-frq"
* item[=].item[=].text = "Wie HÄUFIG waren Sie TRAURIG?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency"
* item[=].item[+].linkId = "proctcae-56b-sev"
* item[=].item[=].text = "Wie STARK war Ihre TRAURIGKEIT im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-56c-int"
* item[=].item[=].text = "Wie sehr hat Ihre TRAURIGKEIT Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 10 — Angst (AE #54 Anxiety, frq+sev+int) — MIDOS Angst + Anspannung
// ============================================================================
* item[+].linkId = "proctcae-54"
* item[=].text = "Angst"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-54a-frq"
* item[=].item[=].text = "Wie HÄUFIG hatten Sie ANGST?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency"
* item[=].item[+].linkId = "proctcae-54b-sev"
* item[=].item[=].text = "Wie STARK war Ihre ANGST im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-54c-int"
* item[=].item[=].text = "Wie sehr hat ANGST Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"
