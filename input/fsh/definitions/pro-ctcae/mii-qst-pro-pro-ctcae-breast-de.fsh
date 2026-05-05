// PRO-CTCAE German Breast Cancer Subset Questionnaire (21 symptoms)
// Source: Hamacher S, et al. Developing tumor-specific PRO-CTCAE item sets.
//         BMC Cancer. 2023;23:638. doi:10.1186/s12885-023-11115-7
//
// 21 symptoms selected by prevalence and importance ranking in German
// outpatient breast cancer patients across 3 centers.
//
// Scoring: CQL Library via cqf-library + cqf-expression (SDC STU3)
//   - CompositeGradeResult per symptom → Tuple {score, absentReason}
//   - ACSResult for overall burden → Tuple {score, scoredCount, excludedCount}
//   - Server-side: Library/$evaluate via FastAPI ETL
//   - Client-side: calculatedExpression via form renderer

Instance: mii-qst-pro-pro-ctcae-breast-de
InstanceOf: MII_PR_PRO_Questionnaire
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-pro-ctcae-breast-de"
* name = "MII_QST_PRO_PRO_CTCAE_Breast_DE"
* title = "PRO-CTCAE Deutsches Brustkrebszentrum-Subset (21 Symptome)"
* title.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* title.extension[=].extension[0].url = "lang"
* title.extension[=].extension[0].valueCode = #en
* title.extension[=].extension[1].url = "content"
* title.extension[=].extension[1].valueString = "PRO-CTCAE German Breast Cancer Subset (21 Symptoms)"
* code[+] = $mii-cs-pro-questionnaire-catalogue#proctcae-breast-de "PRO-CTCAE German Breast Cancer Subset"
* status = #draft
* experimental = true
* description = "PRO-CTCAE Brustkrebszentrum-Subset: 21 Symptome ausgewählt nach Prävalenz und Wichtigkeit bei ambulanten Brustkrebspatientinnen (Hamacher et al., BMC Cancer 2023). Scoring via CQL Library (CompositeGrade pro Symptom + Average Composite Score)."

// Questionnaire capabilities (MII-PRO semantics — refer to score-level capabilities)
// calculatable=false: pending decision on scoring algorithm (two published algorithms exist)
// extractable=false: composite/derived scores are not 1:1 item→Observation extracts.
//                    NOTE: SDC observationExtract below remains true — that flag governs
//                    raw per-item Observation extraction at the SDC level, which is
//                    independent from this score-level capability flag.
// domainAligned=false: PRO-CTCAE is cross-entity, not aligned to a single MII PRO domain
* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = false
* extension[capabilities].extension[extractable].valueBoolean = false
* extension[capabilities].extension[domainAligned].valueBoolean = false

// SDC Observation-based extraction
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* extension[=].valueBoolean = true

// CQL Library reference (SDC STU3 cqf-library)
// TODO: Enable when CQL Library is deployed on HAPI
// * extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-library"
// * extension[=].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Library/mii-lib-pro-ctcae"

// ============================================================================
// Symptom 1: Fatigue (#53) — sev+int, rank 6
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
// Symptom 2: Numbness and Tingling (#39) — sev+int, rank 6
// ============================================================================
* item[+].linkId = "proctcae-39"
* item[=].text = "Taubheit oder Kribbeln in Händen oder Füßen"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-39a-sev"
* item[=].item[=].text = "Wie STARK hatten Sie TAUBHEIT ODER KRIBBELN IN HÄNDEN ODER FÜSSEN im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-39b-int"
* item[=].item[=].text = "Wie sehr hatten Sie TAUBHEIT ODER KRIBBELN IN HÄNDEN ODER FÜSSEN in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 3: Nausea (#9) — frq+sev, rank 4
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
// Symptom 4: Muscle Pain (#50) — frq+sev+int, rank 7
// ============================================================================
* item[+].linkId = "proctcae-50"
* item[=].text = "Muskelschmerzen"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-50a-frq"
* item[=].item[=].text = "Wie HÄUFIG hatten Sie MUSKELSCHMERZEN?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency"
* item[=].item[+].linkId = "proctcae-50b-sev"
* item[=].item[=].text = "Wie STARK hatten Sie MUSKELSCHMERZEN im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-50c-int"
* item[=].item[=].text = "Wie sehr haben MUSKELSCHMERZEN Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 5: Insomnia (#52) — sev+int, rank 6
// ============================================================================
* item[+].linkId = "proctcae-52"
* item[=].text = "Probleme beim Schlafen"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-52a-sev"
* item[=].item[=].text = "Wie STARK waren Ihre PROBLEME BEIM SCHLAFEN im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-52b-int"
* item[=].item[=].text = "Wie sehr haben PROBLEME BEIM SCHLAFEN Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 6: Hair Loss (#27) — int (amount), rank 3
// ============================================================================
* item[+].linkId = "proctcae-27"
* item[=].text = "Haarausfall"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-27a-int"
* item[=].item[=].text = "Hatten Sie HAARAUSFALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 7: Joint Pain (#51) — frq+sev+int, rank 7
// ============================================================================
* item[+].linkId = "proctcae-51"
* item[=].text = "Gelenkschmerzen (z. B. Ellenbogen, Knie, Schultern)"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-51a-frq"
* item[=].item[=].text = "Wie HÄUFIG hatten Sie GELENKSCHMERZEN (Z. B. ELLENBOGEN, KNIE, SCHULTERN)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency"
* item[=].item[+].linkId = "proctcae-51b-sev"
* item[=].item[=].text = "Wie STARK hatten Sie GELENKSCHMERZEN (Z. B. ELLENBOGEN, KNIE, SCHULTERN) im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-51c-int"
* item[=].item[=].text = "Wie sehr haben GELENKSCHMERZEN (Z. B. ELLENBOGEN, KNIE, SCHULTERN) Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 8: Blurred Vision (#41) — sev+int, rank 6
// ============================================================================
* item[+].linkId = "proctcae-41"
* item[=].text = "Verschwommenes Sehen"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-41a-sev"
* item[=].item[=].text = "Wie STARK VERSCHWOMMEN haben Sie im SCHLIMMSTEN FALL GESEHEN?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-41b-int"
* item[=].item[=].text = "Wie sehr hat Sie VERSCHWOMMENES SEHEN in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 9: Concentration (#46) — sev+int, rank 6
// ============================================================================
* item[+].linkId = "proctcae-46"
* item[=].text = "Probleme sich zu konzentrieren"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-46a-sev"
* item[=].item[=].text = "Wie STARK waren Ihre PROBLEME SICH ZU KONZENTRIEREN im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-46b-int"
* item[=].item[=].text = "Wie sehr haben Ihre PROBLEME SICH ZU KONZENTRIEREN Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 10: General Pain (#48) — frq+sev+int, rank 7
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
// Symptom 11: Diarrhea (#16) — frq only, rank 1
// ============================================================================
* item[+].linkId = "proctcae-16"
* item[=].text = "Durchfall"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-16a-frq"
* item[=].item[=].text = "Wie HÄUFIG hatten Sie DURCHFALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency"

// ============================================================================
// Symptom 12: Constipation (#15) — sev only, rank 2
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
// Symptom 13: Taste Changes (#7) — sev only, rank 2
// ============================================================================
* item[+].linkId = "proctcae-07"
* item[=].text = "Geschmacksveränderungen beim Essen oder Trinken"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-07a-sev"
* item[=].item[=].text = "Wie STARK waren Ihre GESCHMACKSVERÄNDERUNGEN BEIM ESSEN ODER TRINKEN im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"

// ============================================================================
// Symptom 14: Dizziness (#40) — sev+int, rank 6
// ============================================================================
* item[+].linkId = "proctcae-40"
* item[=].text = "Schwindel"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-40a-sev"
* item[=].item[=].text = "Wie STARK war Ihr SCHWINDEL im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-40b-int"
* item[=].item[=].text = "Wie sehr hat SCHWINDEL Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 15: Shortness of Breath (#19) — sev+int, rank 6
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
// Symptom 16: Pounding/Racing Heartbeat (#23) — frq+sev, rank 4
// ============================================================================
* item[+].linkId = "proctcae-23"
* item[=].text = "Herzklopfen, Herzrasen oder unregelmäßiger Puls"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-23a-frq"
* item[=].item[=].text = "Wie HÄUFIG hatten Sie HERZKLOPFEN, HERZRASEN ODER EINEN UNREGELMÄSSIGEN PULS?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency"
* item[=].item[+].linkId = "proctcae-23b-sev"
* item[=].item[=].text = "Wie STARK waren Ihr HERZKLOPFEN, HERZRASEN ODER UNREGELMÄSSIGER PULS im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"

// ============================================================================
// Symptom 17: Memory (#47) — sev+int, rank 6
// ============================================================================
* item[+].linkId = "proctcae-47"
* item[=].text = "Probleme mit dem Gedächtnis (Vergesslichkeit)"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-47a-sev"
* item[=].item[=].text = "Wie STARK waren Ihre PROBLEME MIT DEM GEDÄCHTNIS (VERGESSLICHKEIT) im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-47b-int"
* item[=].item[=].text = "Wie sehr haben Sie Ihre PROBLEME MIT DEM GEDÄCHTNIS (VERGESSLICHKEIT) in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 18: Arm or Leg Swelling (#22) — frq+sev+int, rank 7
// ============================================================================
* item[+].linkId = "proctcae-22"
* item[=].text = "Geschwollene Arme oder Beine"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-22a-frq"
* item[=].item[=].text = "Wie HÄUFIG hatten Sie GESCHWOLLENE ARME ODER BEINE?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency"
* item[=].item[+].linkId = "proctcae-22b-sev"
* item[=].item[=].text = "Wie STARK GESCHWOLLEN waren Ihre ARME ODER BEINE im SCHLIMMSTEN FALL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* item[=].item[+].linkId = "proctcae-22c-int"
* item[=].item[=].text = "Wie sehr haben GESCHWOLLENE ARME ODER BEINE Sie in Ihren täglichen Aktivitäten GESTÖRT?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"

// ============================================================================
// Symptom 19: Rash (#24) — presence, binary
// ============================================================================
* item[+].linkId = "proctcae-24"
* item[=].text = "Hautausschlag"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-24a-yn"
* item[=].item[=].text = "Hatten Sie einen HAUTAUSSCHLAG?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-presence"

// ============================================================================
// Symptom 20: Nail Ridging (#32) — presence, binary
// ============================================================================
* item[+].linkId = "proctcae-32"
* item[=].text = "Furchen oder Unebenheiten der Finger- oder Fußnägel"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-32a-yn"
* item[=].item[=].text = "Hatten Sie FURCHEN ODER UNEBENHEITEN DER FINGER- ODER FUSSNÄGEL?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-presence"

// ============================================================================
// Symptom 21: Nail Discoloration (#33) — presence, binary
// ============================================================================
* item[+].linkId = "proctcae-33"
* item[=].text = "Veränderungen der Farbe von Finger- oder Fußnägeln"
* item[=].type = #group
* item[=].item[+].linkId = "proctcae-33a-yn"
* item[=].item[=].text = "Hatten Sie VERÄNDERUNGEN DER FARBE VON FINGER- ODER FUSSNÄGELN?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-presence"
