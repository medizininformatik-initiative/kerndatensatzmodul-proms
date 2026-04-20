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
  * ^designation[0].value = "Nicht zutreffend"
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

// ============================================================================
// AEs #20-80: TODO — continue from NCI German PDF pages 6+
// Pattern established above. Remaining 59 AEs with ~90 items to complete.
// ============================================================================
