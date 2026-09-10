// ============================================================================
// PRO-CTCAE Onkologisches Basisscreening QuestionnaireResponse Example
// ============================================================================
// Szenario: Onkologischer Patient unter Chemotherapie mit moderater Symptomlast.
// Skalen-Werte:
//   Schmerz: häufig (3) / mäßig (2) / ein wenig (1)
//   Müdigkeit: ziemlich (3) / mäßig (2)
//   Übelkeit: gelegentlich (2) / ein wenig (1)
//   Erbrechen: selten (1) / gar nicht (0)
//   Appetitmangel: mäßig (2) / ein wenig (1)
//   Verstopfung: ein wenig (1)
//   Kurzatmigkeit: ein wenig (1) / gar nicht (0)
//   Mutlosigkeit: gelegentlich (2) / mäßig (2) / ein wenig (1)
//   Traurigkeit: gelegentlich (2) / ein wenig (1) / gar nicht (0)
//   Angst: gelegentlich (2) / mäßig (2) / ein wenig (1)
// ============================================================================

Instance: mii-exa-pro-pro-ctcae-onkologisches-basisscreening-response-01
InstanceOf: mii-pr-pro-questionnaire-response
Title: "MII EXA PRO PRO-CTCAE Onkologisches Basisscreening Response"
Description: "PRO-CTCAE Onkologisches Basisscreening Beispiel — Onkologischer Patient unter Chemotherapie mit moderater Symptomlast"
Usage: #example
* language = #de
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-pro-ctcae-onkologisches-basisscreening)
* status = #completed
* subject.reference = "Patient/mii-exa-pro-patient"
* authored = "2026-06-01"

// ===== Schmerz (AE #48) =====
* item[+].linkId = "proctcae-48"
* item[=].text = "Schmerzen"
* item[=].item[+].linkId = "proctcae-48a-frq"
* item[=].item[=].text = "Wie HÄUFIG hatten Sie SCHMERZEN?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-frequency-3 "Frequently"
* item[=].item[+].linkId = "proctcae-48b-sev"
* item[=].item[=].text = "Wie STARK waren Ihre SCHMERZEN im SCHLIMMSTEN FALL?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-severity-2 "Moderate"
* item[=].item[+].linkId = "proctcae-48c-int"
* item[=].item[=].text = "Wie sehr haben SCHMERZEN Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-interference-1 "A little bit"

// ===== Müdigkeit (AE #53) =====
* item[+].linkId = "proctcae-53"
* item[=].text = "Müdigkeit, Erschöpfung oder fehlende Energie"
* item[=].item[+].linkId = "proctcae-53a-sev"
* item[=].item[=].text = "Wie STARK waren Ihre MÜDIGKEIT, ERSCHÖPFUNG ODER FEHLENDE ENERGIE im SCHLIMMSTEN FALL?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-severity-3 "Severe"
* item[=].item[+].linkId = "proctcae-53b-int"
* item[=].item[=].text = "Wie sehr haben MÜDIGKEIT, ERSCHÖPFUNG ODER FEHLENDE ENERGIE Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-interference-2 "Somewhat"

// ===== Übelkeit (AE #9) =====
* item[+].linkId = "proctcae-09"
* item[=].text = "Übelkeit"
* item[=].item[+].linkId = "proctcae-09a-frq"
* item[=].item[=].text = "Wie HÄUFIG hatten Sie ÜBELKEIT?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-frequency-2 "Occasionally"
* item[=].item[+].linkId = "proctcae-09b-sev"
* item[=].item[=].text = "Wie STARK war Ihre ÜBELKEIT im SCHLIMMSTEN FALL?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-severity-1 "Mild"

// ===== Erbrechen (AE #10) =====
* item[+].linkId = "proctcae-10"
* item[=].text = "Erbrechen"
* item[=].item[+].linkId = "proctcae-10a-frq"
* item[=].item[=].text = "Wie HÄUFIG mussten Sie ERBRECHEN?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-frequency-1 "Rarely"
* item[=].item[+].linkId = "proctcae-10b-sev"
* item[=].item[=].text = "Wie STARK war Ihr ERBRECHEN im SCHLIMMSTEN FALL?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-severity-0 "None"

// ===== Appetitmangel (AE #8) =====
* item[+].linkId = "proctcae-08"
* item[=].text = "Appetitmangel"
* item[=].item[+].linkId = "proctcae-08a-sev"
* item[=].item[=].text = "Wie STARK war Ihr APPETITMANGEL im SCHLIMMSTEN FALL?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-severity-2 "Moderate"
* item[=].item[+].linkId = "proctcae-08b-int"
* item[=].item[=].text = "Wie sehr hat Ihr APPETITMANGEL Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-interference-1 "A little bit"

// ===== Verstopfung (AE #15) =====
* item[+].linkId = "proctcae-15"
* item[=].text = "Verstopfung"
* item[=].item[+].linkId = "proctcae-15a-sev"
* item[=].item[=].text = "Wie STARK war Ihre VERSTOPFUNG im SCHLIMMSTEN FALL?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-severity-1 "Mild"

// ===== Kurzatmigkeit (AE #19) =====
* item[+].linkId = "proctcae-19"
* item[=].text = "Kurzatmigkeit"
* item[=].item[+].linkId = "proctcae-19a-sev"
* item[=].item[=].text = "Wie STARK war Ihre KURZATMIGKEIT im SCHLIMMSTEN FALL?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-severity-1 "Mild"
* item[=].item[+].linkId = "proctcae-19b-int"
* item[=].item[=].text = "Wie sehr hat KURZATMIGKEIT Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-interference-0 "Not at all"

// ===== Mutlosigkeit (AE #55) =====
* item[+].linkId = "proctcae-55"
* item[=].text = "Mutlosigkeit (Gefühl, dass einen nichts aufmuntern kann)"
* item[=].item[+].linkId = "proctcae-55a-frq"
* item[=].item[=].text = "Wie HÄUFIG hatten Sie das GEFÜHL, DASS SIE NICHTS AUFMUNTERN KONNTE?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-frequency-2 "Occasionally"
* item[=].item[+].linkId = "proctcae-55b-sev"
* item[=].item[=].text = "Wie STARK hatten Sie das GEFÜHL, DASS SIE NICHTS AUFMUNTERN KONNTE, im SCHLIMMSTEN FALL?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-severity-2 "Moderate"
* item[=].item[+].linkId = "proctcae-55c-int"
* item[=].item[=].text = "Wie sehr hat Sie das GEFÜHL, DASS SIE NICHTS AUFMUNTERN KONNTE in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-interference-1 "A little bit"

// ===== Traurigkeit (AE #56) =====
* item[+].linkId = "proctcae-56"
* item[=].text = "Traurigkeit"
* item[=].item[+].linkId = "proctcae-56a-frq"
* item[=].item[=].text = "Wie HÄUFIG waren Sie TRAURIG?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-frequency-2 "Occasionally"
* item[=].item[+].linkId = "proctcae-56b-sev"
* item[=].item[=].text = "Wie STARK war Ihre TRAURIGKEIT im SCHLIMMSTEN FALL?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-severity-1 "Mild"
* item[=].item[+].linkId = "proctcae-56c-int"
* item[=].item[=].text = "Wie sehr hat Ihre TRAURIGKEIT Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-interference-0 "Not at all"

// ===== Angst (AE #54) =====
* item[+].linkId = "proctcae-54"
* item[=].text = "Angst"
* item[=].item[+].linkId = "proctcae-54a-frq"
* item[=].item[=].text = "Wie HÄUFIG hatten Sie ANGST?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-frequency-2 "Occasionally"
* item[=].item[+].linkId = "proctcae-54b-sev"
* item[=].item[=].text = "Wie STARK war Ihre ANGST im SCHLIMMSTEN FALL?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-severity-2 "Moderate"
* item[=].item[+].linkId = "proctcae-54c-int"
* item[=].item[=].text = "Wie sehr hat ANGST Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].answer.valueCoding = mii-cs-pro-pro-ctcae#proctcae-interference-1 "A little bit"
