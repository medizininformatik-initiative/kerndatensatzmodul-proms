// PRO-CTCAE CodeSystem — MII-controlled Item Library
// Source: NCI PRO-CTCAE Item Library v1.0
// English primary, German designations from NCI-authorized German translation
// Reference: https://healthcaredelivery.cancer.gov/pro-ctcae/
//
// Structure:
//   1. Answer codes for 3 response scales (frequency, severity, interference)
//      + binary presence/absence scales
//   2. 78 Adverse Event group codes with properties:
//      - attributes: which scales apply (frq, sev, int, presence)
//      - item count: how many items per AE
//   3. 124 individual item codes nested under their AE group
//
// TODO: German designations from NCI PDF (healthcaredelivery.cancer.gov/pro-ctcae/instruments/pro-ctcae/pro-ctcae_german.pdf)

CodeSystem: MII_CS_PRO_PRO_CTCAE
Id: mii-cs-pro-pro-ctcae
Title: "MII CS PRO PRO-CTCAE Item Library"
Description: "CodeSystem for the Patient-Reported Outcomes version of the Common Terminology Criteria for Adverse Events (PRO-CTCAE). Contains all 124 items across 78 adverse events with English primary text and German designations from the NCI-authorized translation. Item Library Version 1.0."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-pro-ctcae"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^copyright = "PRO-CTCAE is a product of the US National Cancer Institute (NCI). The PRO-CTCAE items, calculation algorithms, and item library are available free of charge for use in cancer clinical trials."

// Properties to classify AE groups
* ^property[0].code = #attributes
* ^property[0].type = #string
* ^property[0].description = "Which item attributes apply to this AE (frq, sev, int, presence)"
* ^property[1].code = #rank
* ^property[1].type = #integer
* ^property[1].description = "Composite grading rank (1=frq, 2=sev, 3=int, 4=frq+sev, 5=frq+int, 6=sev+int, 7=frq+sev+int)"

// ============================================================================
// SECTION 1: Answer codes — Frequency scale (0-4)
// Scoring weights applied at Questionnaire level via ordinalValue extensions
// ============================================================================

* #proctcae-frequency-0 "Never"
  * ^designation[0].language = #de
  * ^designation[0].value = "Nie"
* #proctcae-frequency-1 "Rarely"
  * ^designation[0].language = #de
  * ^designation[0].value = "Selten"
* #proctcae-frequency-2 "Occasionally"
  * ^designation[0].language = #de
  * ^designation[0].value = "Gelegentlich"
* #proctcae-frequency-3 "Frequently"
  * ^designation[0].language = #de
  * ^designation[0].value = "Häufig"
* #proctcae-frequency-4 "Almost constantly"
  * ^designation[0].language = #de
  * ^designation[0].value = "Fast immer"

// ============================================================================
// SECTION 2: Answer codes — Severity scale (0-4)
// ============================================================================

* #proctcae-severity-0 "None"
  * ^designation[0].language = #de
  * ^designation[0].value = "Gar nicht"
* #proctcae-severity-1 "Mild"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ein wenig"
* #proctcae-severity-2 "Moderate"
  * ^designation[0].language = #de
  * ^designation[0].value = "Mäßig"
* #proctcae-severity-3 "Severe"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ziemlich"
* #proctcae-severity-4 "Very severe"
  * ^designation[0].language = #de
  * ^designation[0].value = "Sehr"

// ============================================================================
// SECTION 3: Answer codes — Interference scale (0-4)
// Note: German translation uses identical wording as Severity scale
// ============================================================================

* #proctcae-interference-0 "Not at all"
  * ^designation[0].language = #de
  * ^designation[0].value = "Gar nicht"
* #proctcae-interference-1 "A little bit"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ein wenig"
* #proctcae-interference-2 "Somewhat"
  * ^designation[0].language = #de
  * ^designation[0].value = "Mäßig"
* #proctcae-interference-3 "Quite a bit"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ziemlich"
* #proctcae-interference-4 "Very much"
  * ^designation[0].language = #de
  * ^designation[0].value = "Sehr"

// ============================================================================
// SECTION 4: Answer codes — Presence/absence (binary)
// ============================================================================

* #proctcae-presence-0 "No"
  * ^designation[0].language = #de
  * ^designation[0].value = "Nein"
* #proctcae-presence-1 "Yes"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ja"

// ============================================================================
// SECTION 5: Opt-out codes — Non-scored response modifiers
// Used by sexual function items (66-71), radiation (36), menstrual/injection (57,58,79)
// These are NOT scored in the Composite Grading Algorithm — they indicate missing data.
// ============================================================================

* #proctcae-optout-not-applicable "Not applicable"
  * ^designation[0].language = #de
  * ^designation[0].value = "Trifft nicht auf mich zu"
* #proctcae-optout-not-sexually-active "Not sexually active"
  * ^designation[0].language = #de
  * ^designation[0].value = "Nicht sexuell aktiv"
* #proctcae-optout-prefer-not-to-answer "Prefer not to answer"
  * ^designation[0].language = #de
  * ^designation[0].value = "Möchte nicht antworten"

// ============================================================================
// SECTION 5: Adverse Event groups (78 AEs) with nested item codes (124 items)
//
// Naming: proctcae-ae-{NCI number} for AE groups
//         proctcae-{NCI number}{A/B/C}-{attribute} for individual items
//
// Each AE group has properties:
//   - attributes: "frq", "sev", "int", "frq sev", "sev int", "frq sev int", "presence"
//   - rank: composite grading rank (1-7) per ProAE map_ref
//
// TODO: Complete all 78 AEs with 124 items from NCI Item Library
//       Add German designations from NCI-authorized translation
// ============================================================================

// --- AE #1: Dry Mouth (sev only, rank 2) ---
* #proctcae-ae-01 "Dry Mouth"
  * ^designation[0].language = #de
  * ^designation[0].value = "Mundtrockenheit"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-01a-sev "Dry Mouth Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihre MUNDTROCKENHEIT im SCHLIMMSTEN FALL?"

// --- AE #2: Difficulty Swallowing (sev only, rank 2) ---
* #proctcae-ae-02 "Difficulty Swallowing"
  * ^designation[0].language = #de
  * ^designation[0].value = "Schwierigkeiten beim Schlucken"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-02a-sev "Difficulty Swallowing Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihre SCHWIERIGKEITEN BEIM SCHLUCKEN im SCHLIMMSTEN FALL?"

// --- AE #3: Mouth or Throat Sores (sev+int, rank 6) ---
* #proctcae-ae-03 "Mouth or Throat Sores"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wunde oder offene Stellen in Mund oder Hals"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 6
* #proctcae-03a-sev "Mouth or Throat Sores Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK hatten Sie WUNDE ODER OFFENE STELLEN IN MUND ODER HALS im SCHLIMMSTEN FALL?"
* #proctcae-03b-int "Mouth or Throat Sores Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr haben WUNDE ODER OFFENE STELLEN IN MUND ODER HALS Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #4: Cracking at Corners of Mouth (sev only, rank 2) ---
* #proctcae-ae-04 "Cracking at Corners of Mouth"
  * ^designation[0].language = #de
  * ^designation[0].value = "Rissige Mundwinkel"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-04a-sev "Cracking at Corners of Mouth Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK hatten Sie RISSIGE MUNDWINKEL im SCHLIMMSTEN FALL?"

// --- AE #5: Voice Quality Changes (presence, binary) ---
* #proctcae-ae-05 "Voice Quality Changes"
  * ^designation[0].language = #de
  * ^designation[0].value = "Veränderung der Stimme"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-05a-yn "Voice Quality Changes Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie irgendeine VERÄNDERUNG DER STIMME?"

// --- AE #6: Hoarseness (sev only, rank 2) ---
* #proctcae-ae-06 "Hoarseness"
  * ^designation[0].language = #de
  * ^designation[0].value = "Heiserkeit"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-06a-sev "Hoarseness Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihre HEISERKEIT im SCHLIMMSTEN FALL?"

// --- AE #7: Taste Changes (sev only, rank 2) ---
* #proctcae-ae-07 "Taste Changes"
  * ^designation[0].language = #de
  * ^designation[0].value = "Geschmacksveränderungen beim Essen oder Trinken"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-07a-sev "Taste Changes Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihre GESCHMACKSVERÄNDERUNGEN BEIM ESSEN ODER TRINKEN im SCHLIMMSTEN FALL?"

// --- AE #8: Decreased Appetite (sev+int, rank 6) ---
* #proctcae-ae-08 "Decreased Appetite"
  * ^designation[0].language = #de
  * ^designation[0].value = "Appetitmangel"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 6
* #proctcae-08a-sev "Decreased Appetite Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihr APPETITMANGEL im SCHLIMMSTEN FALL?"
* #proctcae-08b-int "Decreased Appetite Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr hat Ihr APPETITMANGEL Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #9: Nausea (frq+sev, rank 4) ---
* #proctcae-ae-09 "Nausea"
  * ^designation[0].language = #de
  * ^designation[0].value = "Übelkeit"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 4
* #proctcae-09a-frq "Nausea Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie ÜBELKEIT?"
* #proctcae-09b-sev "Nausea Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihre ÜBELKEIT im SCHLIMMSTEN FALL?"

// --- AE #10: Vomiting (frq+sev, rank 4) ---
* #proctcae-ae-10 "Vomiting"
  * ^designation[0].language = #de
  * ^designation[0].value = "Erbrechen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 4
* #proctcae-10a-frq "Vomiting Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG mussten Sie ERBRECHEN?"
* #proctcae-10b-sev "Vomiting Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihr ERBRECHEN im SCHLIMMSTEN FALL?"

// --- AE #11: Heartburn (frq+sev, rank 4) ---
* #proctcae-ae-11 "Heartburn"
  * ^designation[0].language = #de
  * ^designation[0].value = "Sodbrennen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 4
* #proctcae-11a-frq "Heartburn Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie SODBRENNEN?"
* #proctcae-11b-sev "Heartburn Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihr SODBRENNEN im SCHLIMMSTEN FALL?"

// --- AE #12: Increased Flatulence (presence, binary) ---
* #proctcae-ae-12 "Increased Flatulence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Winde lassen (Flatulenz)"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-12a-yn "Increased Flatulence Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Mussten Sie HÄUFIGER WINDE LASSEN (FLATULENZ)?"

// --- AE #13: Bloating (frq+sev, rank 4) ---
* #proctcae-ae-13 "Bloating"
  * ^designation[0].language = #de
  * ^designation[0].value = "Einen geblähten Bauch"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 4
* #proctcae-13a-frq "Bloating Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie EINEN GEBLÄHTEN BAUCH?"
* #proctcae-13b-sev "Bloating Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK GEBLÄHT war Ihr BAUCH im SCHLIMMSTEN FALL?"

// --- AE #14: Hiccups (frq+sev, rank 4) ---
* #proctcae-ae-14 "Hiccups"
  * ^designation[0].language = #de
  * ^designation[0].value = "Schluckauf"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 4
* #proctcae-14a-frq "Hiccups Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie SCHLUCKAUF?"
* #proctcae-14b-sev "Hiccups Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihr SCHLUCKAUF im SCHLIMMSTEN FALL?"

// --- AE #15: Constipation (sev only, rank 2) ---
* #proctcae-ae-15 "Constipation"
  * ^designation[0].language = #de
  * ^designation[0].value = "Verstopfung"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-15a-sev "Constipation Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihre VERSTOPFUNG im SCHLIMMSTEN FALL?"

// --- AE #16: Diarrhea (frq only, rank 1) ---
* #proctcae-ae-16 "Diarrhea"
  * ^designation[0].language = #de
  * ^designation[0].value = "Durchfall"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 1
* #proctcae-16a-frq "Diarrhea Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie DURCHFALL?"

// --- AE #17: Pain in Abdomen (frq+sev+int, rank 7) ---
* #proctcae-ae-17 "Pain in Abdomen"
  * ^designation[0].language = #de
  * ^designation[0].value = "Bauchschmerzen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 7
* #proctcae-17a-frq "Pain in Abdomen Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie BAUCHSCHMERZEN?"
* #proctcae-17b-sev "Pain in Abdomen Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihre BAUCHSCHMERZEN im SCHLIMMSTEN FALL?"
* #proctcae-17c-int "Pain in Abdomen Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr haben BAUCHSCHMERZEN Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #18: Fecal Incontinence (frq+int, rank 5) ---
* #proctcae-ae-18 "Fecal Incontinence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Stuhlgang nicht kontrollieren oder halten können (Stuhlinkontinenz)"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 5
* #proctcae-18a-frq "Fecal Incontinence Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG konnten Sie Ihren STUHLGANG NICHT KONTROLLIEREN ODER HALTEN?"
* #proctcae-18b-int "Fecal Incontinence Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr wurden Sie in Ihren täglichen Aktivitäten GESTÖRT, weil Sie Ihren STUHLGANG NICHT KONTROLLIEREN ODER HALTEN konnten?"

// --- AE #19: Shortness of Breath (sev+int, rank 6) ---
* #proctcae-ae-19 "Shortness of Breath"
  * ^designation[0].language = #de
  * ^designation[0].value = "Kurzatmigkeit"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 6
* #proctcae-19a-sev "Shortness of Breath Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihre KURZATMIGKEIT im SCHLIMMSTEN FALL?"
* #proctcae-19b-int "Shortness of Breath Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr hat KURZATMIGKEIT Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #20: Cough (sev+int, rank 6) ---
* #proctcae-ae-20 "Cough"
  * ^designation[0].language = #de
  * ^designation[0].value = "Husten"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 6
* #proctcae-20a-sev "Cough Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihr HUSTEN im SCHLIMMSTEN FALL?"
* #proctcae-20b-int "Cough Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr hat HUSTEN Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #21: Wheezing (sev only, rank 2) ---
* #proctcae-ae-21 "Wheezing"
  * ^designation[0].language = #de
  * ^designation[0].value = "Giemen (pfeifendes Atemgeräusch) der Lunge"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-21a-sev "Wheezing Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK hatten Sie ein GIEMEN (PFEIFENDES ATEMGERÄUSCH) DER LUNGE im SCHLIMMSTEN FALL?"

// --- AE #22: Arm or Leg Swelling (frq+sev+int, rank 7) ---
* #proctcae-ae-22 "Arm or Leg Swelling"
  * ^designation[0].language = #de
  * ^designation[0].value = "Geschwollene Arme oder Beine"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 7
* #proctcae-22a-frq "Arm or Leg Swelling Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie GESCHWOLLENE ARME ODER BEINE?"
* #proctcae-22b-sev "Arm or Leg Swelling Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK GESCHWOLLEN waren Ihre ARME ODER BEINE im SCHLIMMSTEN FALL?"
* #proctcae-22c-int "Arm or Leg Swelling Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr haben GESCHWOLLENE ARME ODER BEINE Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #23: Pounding or Racing Heartbeat (frq+sev, rank 4) ---
* #proctcae-ae-23 "Pounding or Racing Heartbeat"
  * ^designation[0].language = #de
  * ^designation[0].value = "Herzklopfen, Herzrasen oder unregelmäßiger Puls"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 4
* #proctcae-23a-frq "Pounding or Racing Heartbeat Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie HERZKLOPFEN, HERZRASEN ODER EINEN UNREGELMÄSSIGEN PULS?"
* #proctcae-23b-sev "Pounding or Racing Heartbeat Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihr HERZKLOPFEN, HERZRASEN ODER UNREGELMÄSSIGER PULS im SCHLIMMSTEN FALL?"

// --- AE #24: Rash (presence, binary) ---
* #proctcae-ae-24 "Rash"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hautausschlag"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-24a-yn "Rash Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie einen HAUTAUSSCHLAG?"

// --- AE #25: Skin Dryness (sev only, rank 2) ---
* #proctcae-ae-25 "Skin Dryness"
  * ^designation[0].language = #de
  * ^designation[0].value = "Trockene Haut"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-25a-sev "Skin Dryness Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie TROCKEN war Ihre Haut im SCHLIMMSTEN FALL?"

// --- AE #26: Acne (sev only, rank 2) ---
* #proctcae-ae-26 "Acne"
  * ^designation[0].language = #de
  * ^designation[0].value = "Akne oder Pickel im Gesicht oder auf dem Brustkorb"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-26a-sev "Acne Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK ausgeprägt hatten Sie AKNE ODER PICKEL IM GESICHT ODER AUF DEM BRUSTKORB im SCHLIMMSTEN FALL?"

// --- AE #27: Hair Loss (int only, rank 3) ---
* #proctcae-ae-27 "Hair Loss"
  * ^designation[0].language = #de
  * ^designation[0].value = "Haarausfall"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 3
* #proctcae-27a-int "Hair Loss Amount"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie HAARAUSFALL?"

// --- AE #28: Itching (sev only, rank 2) ---
* #proctcae-ae-28 "Itching"
  * ^designation[0].language = #de
  * ^designation[0].value = "Juckreiz"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-28a-sev "Itching Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war IHR JUCKREIZ im SCHLIMMSTEN FALL?"

// --- AE #29: Hives (presence, binary) ---
* #proctcae-ae-29 "Hives"
  * ^designation[0].language = #de
  * ^designation[0].value = "Nesselfieber (eine juckende, rote Hautschwellung)"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-29a-yn "Hives Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie NESSELFIEBER (EINE JUCKENDE, ROTE HAUTSCHWELLUNG)?"

// --- AE #30: Hand-Foot Syndrome (sev only, rank 2) ---
* #proctcae-ae-30 "Hand-Foot Syndrome"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hand-Fuss-Syndrom (ein Hautausschlag der Hände oder Füße, der Brennen, Abschälen der Haut, Rötung oder Schmerzen machen kann)"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-30a-sev "Hand-Foot Syndrome Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihr HAND-FUSS-SYNDROM im SCHLIMMSTEN FALL?"

// --- AE #31: Nail Loss (presence, binary) ---
* #proctcae-ae-31 "Nail Loss"
  * ^designation[0].language = #de
  * ^designation[0].value = "Verlust von Finger- oder Fußnägeln"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-31a-yn "Nail Loss Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Sind Ihnen FINGER- ODER FUSSNÄGEL AUSGEFALLEN?"

// --- AE #32: Nail Ridging (presence, binary) ---
* #proctcae-ae-32 "Nail Ridging"
  * ^designation[0].language = #de
  * ^designation[0].value = "Furchen oder Unebenheiten der Finger- oder Fußnägel"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-32a-yn "Nail Ridging Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie FURCHEN ODER UNEBENHEITEN DER FINGER- ODER FUSSNÄGEL?"

// --- AE #33: Nail Discoloration (presence, binary) ---
* #proctcae-ae-33 "Nail Discoloration"
  * ^designation[0].language = #de
  * ^designation[0].value = "Veränderungen der Farbe von Finger- oder Fußnägeln"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-33a-yn "Nail Discoloration Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie VERÄNDERUNGEN DER FARBE VON FINGER- ODER FUSSNÄGELN?"

// --- AE #34: Sensitivity to Sunlight (presence, binary) ---
* #proctcae-ae-34 "Sensitivity to Sunlight"
  * ^designation[0].language = #de
  * ^designation[0].value = "Erhöhte Sonnenlichtempfindlichkeit der Haut"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-34a-yn "Sensitivity to Sunlight Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie eine ERHÖHTE SONNENLICHTEMPFINDLICHKEIT DER HAUT?"

// --- AE #35: Bed/Pressure Sores (presence, binary) ---
* #proctcae-ae-35 "Bed Sores"
  * ^designation[0].language = #de
  * ^designation[0].value = "Druckstellen (Dekubitus)"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-35a-yn "Bed Sores Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie DRUCKSTELLEN (DEKUBITUS)?"

// --- AE #36: Radiation Skin Reaction (sev+NA, rank 2, sev_6 scale) ---
* #proctcae-ae-36 "Radiation Skin Reaction"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hautverbrennungen nach einer Bestrahlung"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-36a-sev "Radiation Skin Reaction Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK ausgeprägt waren Ihre HAUTVERBRENNUNGEN NACH EINER BESTRAHLUNG im SCHLIMMSTEN FALL?"

// --- AE #37: Skin Darkening (presence, binary) ---
* #proctcae-ae-37 "Skin Darkening"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ungewöhnliche dunkle Veränderung der Haut"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-37a-yn "Skin Darkening Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie eine UNGEWÖHNLICHE DUNKLE VERÄNDERUNG DER HAUT?"

// --- AE #38: Stretch Marks (presence, binary) ---
* #proctcae-ae-38 "Stretch Marks"
  * ^designation[0].language = #de
  * ^designation[0].value = "Dehnungsstreifen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-38a-yn "Stretch Marks Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie DEHNUNGSSTREIFEN?"

// --- AE #39: Numbness and Tingling (sev+int, rank 6) ---
* #proctcae-ae-39 "Numbness and Tingling"
  * ^designation[0].language = #de
  * ^designation[0].value = "Taubheit oder Kribbeln in Händen oder Füßen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 6
* #proctcae-39a-sev "Numbness and Tingling Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK hatten Sie TAUBHEIT ODER KRIBBELN IN HÄNDEN ODER FÜSSEN im SCHLIMMSTEN FALL?"
* #proctcae-39b-int "Numbness and Tingling Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr hatten Sie TAUBHEIT ODER KRIBBELN IN HÄNDEN ODER FÜSSEN in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #40: Dizziness (sev+int, rank 6) ---
* #proctcae-ae-40 "Dizziness"
  * ^designation[0].language = #de
  * ^designation[0].value = "Schwindel"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 6
* #proctcae-40a-sev "Dizziness Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihr SCHWINDEL im SCHLIMMSTEN FALL?"
* #proctcae-40b-int "Dizziness Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr hat SCHWINDEL Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #41: Blurred Vision (sev+int, rank 6) ---
* #proctcae-ae-41 "Blurred Vision"
  * ^designation[0].language = #de
  * ^designation[0].value = "Verschwommenes Sehen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 6
* #proctcae-41a-sev "Blurred Vision Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK VERSCHWOMMEN haben Sie im SCHLIMMSTEN FALL GESEHEN?"
* #proctcae-41b-int "Blurred Vision Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr hat Sie VERSCHWOMMENES SEHEN in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #42: Flashing Lights (presence, binary) ---
* #proctcae-ae-42 "Flashing Lights"
  * ^designation[0].language = #de
  * ^designation[0].value = "Blitze vor den Augen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-42a-yn "Flashing Lights Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Haben Sie BLITZE VOR DEN AUGEN gesehen?"

// --- AE #43: Visual Floaters (presence, binary) ---
* #proctcae-ae-43 "Visual Floaters"
  * ^designation[0].language = #de
  * ^designation[0].value = "Schwimmende Punkte, Linien oder Mücken vor den Augen (Mouches volantes)"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-43a-yn "Visual Floaters Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Sahen Sie SCHWIMMENDE PUNKTE, LINIEN ODER MÜCKEN VOR DEN AUGEN (MOUCHES VOLANTES)?"

// --- AE #44: Watery Eyes (sev+int, rank 6) ---
* #proctcae-ae-44 "Watery Eyes"
  * ^designation[0].language = #de
  * ^designation[0].value = "Tränende Augen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 6
* #proctcae-44a-sev "Watery Eyes Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK hatten Sie TRÄNENDE AUGEN im SCHLIMMSTEN FALL?"
* #proctcae-44b-int "Watery Eyes Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr haben TRÄNENDE AUGEN Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #45: Ringing in Ears (sev only, rank 2) ---
* #proctcae-ae-45 "Ringing in Ears"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ohrgeräusche (z. B. Pfeifen in den Ohren)"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-45a-sev "Ringing in Ears Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihre OHRGERÄUSCHE (Z. B. PFEIFEN IN DEN OHREN) im SCHLIMMSTEN FALL?"

// --- AE #46: Concentration (sev+int, rank 6) ---
* #proctcae-ae-46 "Concentration"
  * ^designation[0].language = #de
  * ^designation[0].value = "Probleme sich zu konzentrieren"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 6
* #proctcae-46a-sev "Concentration Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihre PROBLEME SICH ZU KONZENTRIEREN im SCHLIMMSTEN FALL?"
* #proctcae-46b-int "Concentration Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr haben Ihre PROBLEME SICH ZU KONZENTRIEREN Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #47: Memory (sev+int, rank 6) ---
* #proctcae-ae-47 "Memory"
  * ^designation[0].language = #de
  * ^designation[0].value = "Probleme mit dem Gedächtnis (Vergesslichkeit)"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 6
* #proctcae-47a-sev "Memory Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihre PROBLEME MIT DEM GEDÄCHTNIS (VERGESSLICHKEIT) im SCHLIMMSTEN FALL?"
* #proctcae-47b-int "Memory Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr haben Sie Ihre PROBLEME MIT DEM GEDÄCHTNIS (VERGESSLICHKEIT) in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #48: General Pain (frq+sev+int, rank 7) ---
* #proctcae-ae-48 "General Pain"
  * ^designation[0].language = #de
  * ^designation[0].value = "Schmerzen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 7
* #proctcae-48a-frq "General Pain Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie SCHMERZEN?"
* #proctcae-48b-sev "General Pain Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihre SCHMERZEN im SCHLIMMSTEN FALL?"
* #proctcae-48c-int "General Pain Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr haben SCHMERZEN Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #49: Headache (frq+sev+int, rank 7) ---
* #proctcae-ae-49 "Headache"
  * ^designation[0].language = #de
  * ^designation[0].value = "Kopfschmerzen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 7
* #proctcae-49a-frq "Headache Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie KOPFSCHMERZEN?"
* #proctcae-49b-sev "Headache Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihre KOPFSCHMERZEN im SCHLIMMSTEN FALL?"
* #proctcae-49c-int "Headache Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr haben KOPFSCHMERZEN Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #50: Muscle Pain (frq+sev+int, rank 7) ---
* #proctcae-ae-50 "Muscle Pain"
  * ^designation[0].language = #de
  * ^designation[0].value = "Muskelschmerzen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 7
* #proctcae-50a-frq "Muscle Pain Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie MUSKELSCHMERZEN?"
* #proctcae-50b-sev "Muscle Pain Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK hatten Sie MUSKELSCHMERZEN im SCHLIMMSTEN FALL?"
* #proctcae-50c-int "Muscle Pain Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr haben MUSKELSCHMERZEN Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #51: Joint Pain (frq+sev+int, rank 7) ---
* #proctcae-ae-51 "Joint Pain"
  * ^designation[0].language = #de
  * ^designation[0].value = "Gelenkschmerzen (z. B. Ellenbogen, Knie, Schultern)"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 7
* #proctcae-51a-frq "Joint Pain Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie GELENKSCHMERZEN (Z. B. ELLENBOGEN, KNIE, SCHULTERN)?"
* #proctcae-51b-sev "Joint Pain Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK hatten Sie GELENKSCHMERZEN (Z. B. ELLENBOGEN, KNIE, SCHULTERN) im SCHLIMMSTEN FALL?"
* #proctcae-51c-int "Joint Pain Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr haben GELENKSCHMERZEN (Z. B. ELLENBOGEN, KNIE, SCHULTERN) Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #52: Insomnia (sev+int, rank 6) ---
* #proctcae-ae-52 "Insomnia"
  * ^designation[0].language = #de
  * ^designation[0].value = "Probleme beim Schlafen (wie z. B. Schwierigkeiten beim Einschlafen, Durchschlafen oder zu frühes Aufwachen)"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 6
* #proctcae-52a-sev "Insomnia Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihre PROBLEME BEIM SCHLAFEN im SCHLIMMSTEN FALL?"
* #proctcae-52b-int "Insomnia Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr haben PROBLEME BEIM SCHLAFEN Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #53: Fatigue (sev+int, rank 6) ---
* #proctcae-ae-53 "Fatigue"
  * ^designation[0].language = #de
  * ^designation[0].value = "Müdigkeit, Erschöpfung oder fehlende Energie"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 6
* #proctcae-53a-sev "Fatigue Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihre MÜDIGKEIT, ERSCHÖPFUNG ODER FEHLENDE ENERGIE im SCHLIMMSTEN FALL?"
* #proctcae-53b-int "Fatigue Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr haben MÜDIGKEIT, ERSCHÖPFUNG ODER FEHLENDE ENERGIE Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #54: Anxiety (frq+sev+int, rank 7) ---
* #proctcae-ae-54 "Anxiety"
  * ^designation[0].language = #de
  * ^designation[0].value = "Angst"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 7
* #proctcae-54a-frq "Anxiety Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie ANGST?"
* #proctcae-54b-sev "Anxiety Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihre ANGST im SCHLIMMSTEN FALL?"
* #proctcae-54c-int "Anxiety Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr hat ANGST Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #55: Discouraged (frq+sev+int, rank 7) ---
* #proctcae-ae-55 "Discouraged"
  * ^designation[0].language = #de
  * ^designation[0].value = "Mutlosigkeit (Gefühl, dass einen nichts aufmuntern kann)"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 7
* #proctcae-55a-frq "Discouraged Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie das GEFÜHL, DASS SIE NICHTS AUFMUNTERN KONNTE?"
* #proctcae-55b-sev "Discouraged Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK hatten Sie das GEFÜHL, DASS SIE NICHTS AUFMUNTERN KONNTE, im SCHLIMMSTEN FALL?"
* #proctcae-55c-int "Discouraged Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr hat Sie das GEFÜHL, DASS SIE NICHTS AUFMUNTERN KONNTE in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #56: Sad (frq+sev+int, rank 7) ---
* #proctcae-ae-56 "Sad"
  * ^designation[0].language = #de
  * ^designation[0].value = "Traurigkeit"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 7
* #proctcae-56a-frq "Sad Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG waren Sie TRAURIG?"
* #proctcae-56b-sev "Sad Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihre TRAURIGKEIT im SCHLIMMSTEN FALL?"
* #proctcae-56c-int "Sad Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr hat Ihre TRAURIGKEIT Sie in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #57: Irregular Periods (presence+NA, yn_3) ---
* #proctcae-ae-57 "Irregular Periods"
  * ^designation[0].language = #de
  * ^designation[0].value = "Unregelmäßige Regelblutung"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-57a-yn "Irregular Periods Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie eine UNREGELMÄSSIGE REGELBLUTUNG?"

// --- AE #58: Missed Periods (presence+NA, yn_3) ---
* #proctcae-ae-58 "Missed Expected Menstrual Period"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ausbleiben einer erwarteten Regelblutung"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-58a-yn "Missed Periods Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ist bei Ihnen eine ERWARTETE REGELBLUTUNG ausgeblieben?"

// --- AE #59: Vaginal Discharge (int only, rank 3) ---
* #proctcae-ae-59 "Vaginal Discharge"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ungewöhnlicher Ausfluss der Scheide"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 3
* #proctcae-59a-int "Vaginal Discharge Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie einen UNGEWÖHNLICHEN AUSFLUSS DER SCHEIDE?"

// --- AE #60: Vaginal Dryness (sev only, rank 2) ---
* #proctcae-ae-60 "Vaginal Dryness"
  * ^designation[0].language = #de
  * ^designation[0].value = "Scheidentrockenheit"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-60a-sev "Vaginal Dryness Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihre SCHEIDENTROCKENHEIT im SCHLIMMSTEN FALL?"

// --- AE #61: Painful Urination (sev only, rank 2) ---
* #proctcae-ae-61 "Painful Urination"
  * ^designation[0].language = #de
  * ^designation[0].value = "Schmerzen oder Brennen beim Wasserlassen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-61a-sev "Painful Urination Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihre SCHMERZEN ODER BRENNEN BEIM WASSERLASSEN im SCHLIMMSTEN FALL?"

// --- AE #62: Urinary Urgency (frq+int, rank 5) ---
* #proctcae-ae-62 "Urinary Urgency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Plötzlicher starker Drang zum Wasserlassen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 5
* #proctcae-62a-frq "Urinary Urgency Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie einen PLÖTZLICHEN STARKEN DRANG ZUM WASSERLASSEN?"
* #proctcae-62b-int "Urinary Urgency Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr wurden Sie durch einen PLÖTZLICHEN STARKEN DRANG ZUM WASSERLASSEN in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #63: Urinary Frequency (frq+int, rank 5) ---
* #proctcae-ae-63 "Urinary Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Häufiges Wasserlassen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 5
* #proctcae-63a-frq "Urinary Frequency Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Mussten Sie HÄUFIGER WASSER LASSEN als üblich?"
* #proctcae-63b-int "Urinary Frequency Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr hat Sie HÄUFIGES WASSERLASSEN in Ihren täglichen Aktivitäten GESTÖRT?"

// --- AE #64: Urine Color Change (presence, binary) ---
* #proctcae-ae-64 "Urine Color Change"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ungewöhnliche Veränderung der Urinfarbe"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-64a-yn "Urine Color Change Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie eine UNGEWÖHNLICHE VERÄNDERUNG DER URINFARBE?"

// --- AE #65: Urinary Incontinence (frq+int, rank 5) ---
* #proctcae-ae-65 "Urinary Incontinence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Urin nicht halten können (Urininkontinenz)"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq int"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 5
* #proctcae-65a-frq "Urinary Incontinence Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG konnten Sie Ihren URIN NICHT HALTEN (URININKONTINENZ)?"
* #proctcae-65b-int "Urinary Incontinence Interference"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie sehr wurden Sie in Ihren täglichen Aktivitäten GESTÖRT, weil Sie Ihren URIN NICHT HALTEN KONNTEN (URININKONTINENZ)?"

// --- AE #66: Erection Difficulty (sev+sexual opt-outs, sev_7, rank 2) ---
* #proctcae-ae-66 "Achieve and Maintain Erection"
  * ^designation[0].language = #de
  * ^designation[0].value = "Probleme eine Erektion zu bekommen oder zu halten"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-66a-sev "Erection Difficulty Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihre PROBLEME EINE EREKTION ZU BEKOMMEN ODER ZU HALTEN im SCHLIMMSTEN FALL?"

// --- AE #67: Ejaculation Problems (frq+sexual opt-outs, frq_7, rank 1) ---
* #proctcae-ae-67 "Ejaculation"
  * ^designation[0].language = #de
  * ^designation[0].value = "Probleme einen Samenerguss zu bekommen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 1
* #proctcae-67a-frq "Ejaculation Problems Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie PROBLEME EINEN SAMENERGUSS ZU BEKOMMEN?"

// --- AE #68: Decreased Sexual Interest (sev+sexual opt-outs, sev_7, rank 2) ---
* #proctcae-ae-68 "Decreased Libido"
  * ^designation[0].language = #de
  * ^designation[0].value = "Weniger Interesse an Sexualität"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-68a-sev "Decreased Sexual Interest Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK vermindert war Ihr INTERESSE AN SEXUALITÄT im SCHLIMMSTEN FALL?"

// --- AE #69: Delayed Orgasm (presence+sexual opt-outs, yn_4) ---
* #proctcae-ae-69 "Delayed Orgasm"
  * ^designation[0].language = #de
  * ^designation[0].value = "Es dauert zu lange bis man einen Orgasmus oder Höhepunkt bekommen kann"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-69a-yn "Delayed Orgasm Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie das Gefühl, dass es ZU LANGE DAUERT BIS SIE EINEN ORGASMUS ODER HÖHEPUNKT BEKOMMEN KÖNNEN?"

// --- AE #70: Unable to Have Orgasm (presence+sexual opt-outs, yn_4) ---
* #proctcae-ae-70 "Unable to Have Orgasm"
  * ^designation[0].language = #de
  * ^designation[0].value = "Nicht in der Lage sein, einen Orgasmus oder Höhepunkt zu bekommen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-70a-yn "Unable to Have Orgasm Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Waren Sie nicht IN DER LAGE EINEN ORGASMUS ODER HÖHEPUNKT ZU BEKOMMEN?"

// --- AE #71: Pain During Vaginal Sex (sev+sexual opt-outs, sev_7, rank 2) ---
* #proctcae-ae-71 "Pain with Sexual Intercourse"
  * ^designation[0].language = #de
  * ^designation[0].value = "Schmerzen der Scheide beim Geschlechtsverkehr"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-71a-sev "Pain During Vaginal Sex Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihre SCHMERZEN DER SCHEIDE BEIM GESCHLECHTSVERKEHR im SCHLIMMSTEN FALL?"

// --- AE #72: Breast Swelling and Tenderness (sev only, rank 2) ---
* #proctcae-ae-72 "Breast Swelling and Tenderness"
  * ^designation[0].language = #de
  * ^designation[0].value = "Schwellung oder Druckempfindlichkeit der Brust"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-72a-sev "Breast Swelling and Tenderness Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK hatten Sie eine SCHWELLUNG ODER DRUCKEMPFINDLICHKEIT DER BRUST im SCHLIMMSTEN FALL?"

// --- AE #73: Bruising (presence, binary) ---
* #proctcae-ae-73 "Bruising"
  * ^designation[0].language = #de
  * ^designation[0].value = "Leicht blaue Flecken bekommen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-73a-yn "Bruising Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Haben Sie LEICHT BLAUE FLECKEN BEKOMMEN?"

// --- AE #74: Chills (frq+sev, rank 4) ---
* #proctcae-ae-74 "Chills"
  * ^designation[0].language = #de
  * ^designation[0].value = "Schüttelfrost"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 4
* #proctcae-74a-frq "Chills Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie SCHÜTTELFROST?"
* #proctcae-74b-sev "Chills Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihr SCHÜTTELFROST im SCHLIMMSTEN FALL?"

// --- AE #75: Increased Sweating (frq+sev, rank 4) ---
* #proctcae-ae-75 "Increased Sweating"
  * ^designation[0].language = #de
  * ^designation[0].value = "Unerwartetes oder starkes Schwitzen während des Tages oder der Nacht (nicht in Verbindung mit Hitzewallungen)"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 4
* #proctcae-75a-frq "Increased Sweating Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie UNERWARTETES ODER STARKES SCHWITZEN WÄHREND DES TAGES ODER DER NACHT?"
* #proctcae-75b-sev "Increased Sweating Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK hatten Sie UNERWARTETES ODER STARKES SCHWITZEN WÄHREND DES TAGES ODER DER NACHT im SCHLIMMSTEN FALL?"

// --- AE #76: Decreased Sweating (presence, binary) ---
* #proctcae-ae-76 "Decreased Sweating"
  * ^designation[0].language = #de
  * ^designation[0].value = "Vermindertes Schwitzen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-76a-yn "Decreased Sweating Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Konnten Sie UNERWARTET WENIGER SCHWITZEN?"

// --- AE #77: Hot Flashes (frq+sev, rank 4) ---
* #proctcae-ae-77 "Hot Flashes"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hitzewallungen"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 4
* #proctcae-77a-frq "Hot Flashes Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie HITZEWALLUNGEN?"
* #proctcae-77b-sev "Hot Flashes Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK waren Ihre HITZEWALLUNGEN im SCHLIMMSTEN FALL?"

// --- AE #78: Nosebleed (frq+sev, rank 4) ---
* #proctcae-ae-78 "Nosebleed"
  * ^designation[0].language = #de
  * ^designation[0].value = "Nasenbluten"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "frq sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 4
* #proctcae-78a-frq "Nosebleed Frequency"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie HÄUFIG hatten Sie NASENBLUTEN?"
* #proctcae-78b-sev "Nosebleed Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihr NASENBLUTEN im SCHLIMMSTEN FALL?"

// --- AE #79: Injection Site Reaction (presence+NA, yn_3) ---
* #proctcae-ae-79 "Pain and Swelling at Injection Site"
  * ^designation[0].language = #de
  * ^designation[0].value = "Schmerzen, Schwellung oder Rötung der Haut an einer Einstichstelle von einer Infusion oder Spritze"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "presence"
* #proctcae-79a-yn "Injection Site Reaction Presence"
  * ^designation[0].language = #de
  * ^designation[0].value = "Hatten Sie SCHMERZEN, EINE SCHWELLUNG ODER RÖTUNG DER HAUT AN EINER EINSTICHSTELLE VON EINER INFUSION ODER SPRITZE?"

// --- AE #80: Body Odor (sev only, rank 2) ---
* #proctcae-ae-80 "Body Odor"
  * ^designation[0].language = #de
  * ^designation[0].value = "Körpergeruch"
  * ^property[0].code = #attributes
  * ^property[0].valueString = "sev"
  * ^property[1].code = #rank
  * ^property[1].valueInteger = 2
* #proctcae-80a-sev "Body Odor Severity"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wie STARK war Ihr KÖRPERGERUCH im SCHLIMMSTEN FALL?"
