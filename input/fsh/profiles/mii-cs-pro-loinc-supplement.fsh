// ============================================================================
// LOINC CodeSystem Supplement — validated answer-wording designations
// ============================================================================
// WHY THIS EXISTS (measured 2026-09-08, see qa.txt of that build):
// ~200 "Wrong Display" findings, because the module renders LOINC answer
// codes (LA…) with the VALIDATED instrument wordings (PHQ-D — Löwe et al.;
// PROMIS German — PHO/CPCOR) while tx.fhir.org carries only en-US
// designations for LA codes ($lookup LA6568-5: display "Not at all",
// designation en-US only — measured 2026-09-06). The official German LOINC
// translation does not cover the LA answer codes at all, and even if it did,
// instrument-validated wordings take precedence over generic translations.
//
// A supplement is the FHIR mechanism for exactly this: it ADDS designations
// to codes of a system we do not own, travels with the package, and works on
// every validator that loads the IG. It claims no translation authority over
// LOINC — each wording names its validated source below.
//
// The two English designations (62826-3, 62827-1) are the full PROMIS item
// wordings used as display where LOINC's canonical display is shorter.
// ============================================================================

Instance: mii-cs-pro-loinc-supplement
InstanceOf: CodeSystem
Usage: #definition
* insert InstanceVersion
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-loinc-supplement"
* name = "MII_CS_PRO_LOINC_Supplement"
* title = "MII CS PRO LOINC Supplement (validated answer wordings)"
* status = #active
* experimental = false
* content = #supplement
* supplements = "http://loinc.org"
* description = "Supplement to LOINC adding the validated German answer wordings (PHQ-D; PROMIS German via PHO/CPCOR; EQ-VAS anchors) as designations on the LOINC answer codes used by this module, plus two full PROMIS item wordings in English. Enables display validation of the instrument-validated wordings; claims no translation authority over LOINC."
* publisher = "Medizininformatik-Initiative"

// --- PHQ-D four-point frequency scale (LL358-3; Löwe et al. 2002) ---
* concept[+].code = #LA6568-5
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Überhaupt nicht"
* concept[+].code = #LA6569-3
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "An einzelnen Tagen"
* concept[+].code = #LA6570-1
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "An mehr als der Hälfte der Tage"

// --- PROMIS frequency scale (German, PHO/CPCOR) ---
* concept[+].code = #LA6270-8
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Nie"
* concept[+].code = #LA10066-1
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Selten"
* concept[+].code = #LA10082-8
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Manchmal"
* concept[+].code = #LA10044-8
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Oft"
* concept[+].code = #LA9933-8
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Immer"

// --- PROMIS intensity scale (German, PHO/CPCOR) ---
* concept[+].code = #LA13863-8
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Ein wenig"
* concept[+].code = #LA13909-9
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Mäßig"
* concept[+].code = #LA13902-4
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Ziemlich"
* concept[+].code = #LA13914-9
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Sehr"

// --- PROMIS physical function scale (German, PHO/CPCOR) ---
* concept[+].code = #LA13921-4
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Ohne jede Schwierigkeiten"
* concept[+].code = #LA13918-0
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Mit geringen Schwierigkeiten"
* concept[+].code = #LA13920-6
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Mit einigen Schwierigkeiten"
* concept[+].code = #LA13919-8
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Mit großen Schwierigkeiten"
* concept[+].code = #LA13912-3
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Kann ich gar nicht"

// --- General health / sleep quality scale (German, PHO/CPCOR) ---
* concept[+].code = #LA13913-1
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Sehr gut"
* concept[+].code = #LA8967-7
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Gut"
* concept[+].code = #LA8968-5
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Mäßig"
* concept[+].code = #LA8969-3
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Schlecht"
* concept[+].code = #LA9615-1
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Sehr schlecht"

// --- PROMIS physical function items: full item wordings (English) ---
* concept[+].code = #62826-3
* concept[=].designation[+].language = #en
* concept[=].designation[=].value = "Are you able to go up and down stairs at a normal pace?"
* concept[+].code = #62827-1
* concept[=].designation[+].language = #en
* concept[=].designation[=].value = "Are you able to go for a walk of at least 15 minutes?"
