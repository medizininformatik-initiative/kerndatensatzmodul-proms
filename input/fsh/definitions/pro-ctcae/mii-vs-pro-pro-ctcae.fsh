// PRO-CTCAE ValueSets — Response scales
//
// Architecture: 4 base scales × opt-out modifiers = 9 format types
//
// Base scales:          frq_5, sev_5, int_5, yn_2
// + Not applicable:     sev_6 (radiation), yn_3 (periods, injection site)
// + Sexual opt-outs:    sev_7, frq_7, yn_4 (sexual function items)
//
// The opt-out options ("Not applicable", "Not sexually active", "Prefer not to answer")
// are NOT scored — they are null/missing data indicators.

// ============================================================================
// Frequency scale — 5-point (0-4): Never → Almost constantly
// Used by: 24 items (AEs with frq attribute, rank 1/4/5/7)
// ============================================================================

ValueSet: MII_VS_PRO_PRO_CTCAE_Frequency
Id: mii-vs-pro-pro-ctcae-frequency
Title: "MII VS PRO PRO-CTCAE Frequency Scale"
Description: "5-point frequency response scale for PRO-CTCAE items (0=Never, 4=Almost constantly)"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* $mii-cs-pro-pro-ctcae#proctcae-frequency-0
* $mii-cs-pro-pro-ctcae#proctcae-frequency-1
* $mii-cs-pro-pro-ctcae#proctcae-frequency-2
* $mii-cs-pro-pro-ctcae#proctcae-frequency-3
* $mii-cs-pro-pro-ctcae#proctcae-frequency-4


// ============================================================================
// Frequency scale — 7-point (sexual function): standard 5 + 2 opt-outs
// Used by: Item 67 (Ejaculation Problems)
// ============================================================================

ValueSet: MII_VS_PRO_PRO_CTCAE_Frequency_Sexual
Id: mii-vs-pro-pro-ctcae-frequency-sexual
Title: "MII VS PRO PRO-CTCAE Frequency Scale (Sexual Function)"
Description: "7-point frequency scale for sexual function items: standard 5 options plus 'Not sexually active' and 'Prefer not to answer'"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-frequency-sexual"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* $mii-cs-pro-pro-ctcae#proctcae-frequency-0
* $mii-cs-pro-pro-ctcae#proctcae-frequency-1
* $mii-cs-pro-pro-ctcae#proctcae-frequency-2
* $mii-cs-pro-pro-ctcae#proctcae-frequency-3
* $mii-cs-pro-pro-ctcae#proctcae-frequency-4
* $mii-cs-pro-pro-ctcae#proctcae-optout-not-sexually-active
* $mii-cs-pro-pro-ctcae#proctcae-optout-prefer-not-to-answer


// ============================================================================
// Severity scale — 5-point (0-4): None → Very severe
// Used by: 47 items (AEs with sev attribute, rank 2/4/6/7)
// ============================================================================

ValueSet: MII_VS_PRO_PRO_CTCAE_Severity
Id: mii-vs-pro-pro-ctcae-severity
Title: "MII VS PRO PRO-CTCAE Severity Scale"
Description: "5-point severity response scale for PRO-CTCAE items (0=None, 4=Very severe)"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* $mii-cs-pro-pro-ctcae#proctcae-severity-0
* $mii-cs-pro-pro-ctcae#proctcae-severity-1
* $mii-cs-pro-pro-ctcae#proctcae-severity-2
* $mii-cs-pro-pro-ctcae#proctcae-severity-3
* $mii-cs-pro-pro-ctcae#proctcae-severity-4


// ============================================================================
// Severity scale — 6-point (radiation): standard 5 + Not applicable
// Used by: Item 36 (Radiation Skin Reaction / Burns)
// ============================================================================

ValueSet: MII_VS_PRO_PRO_CTCAE_Severity_Radiation
Id: mii-vs-pro-pro-ctcae-severity-radiation
Title: "MII VS PRO PRO-CTCAE Severity Scale (Radiation)"
Description: "6-point severity scale for radiation items: standard 5 options plus 'Not applicable'"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity-radiation"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* $mii-cs-pro-pro-ctcae#proctcae-severity-0
* $mii-cs-pro-pro-ctcae#proctcae-severity-1
* $mii-cs-pro-pro-ctcae#proctcae-severity-2
* $mii-cs-pro-pro-ctcae#proctcae-severity-3
* $mii-cs-pro-pro-ctcae#proctcae-severity-4
* $mii-cs-pro-pro-ctcae#proctcae-optout-not-applicable


// ============================================================================
// Severity scale — 7-point (sexual function): standard 5 + 2 opt-outs
// Used by: Items 66, 68, 71 (Erection, Sexual Interest, Vaginal Sex Pain)
// ============================================================================

ValueSet: MII_VS_PRO_PRO_CTCAE_Severity_Sexual
Id: mii-vs-pro-pro-ctcae-severity-sexual
Title: "MII VS PRO PRO-CTCAE Severity Scale (Sexual Function)"
Description: "7-point severity scale for sexual function items: standard 5 options plus 'Not sexually active' and 'Prefer not to answer'"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-severity-sexual"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* $mii-cs-pro-pro-ctcae#proctcae-severity-0
* $mii-cs-pro-pro-ctcae#proctcae-severity-1
* $mii-cs-pro-pro-ctcae#proctcae-severity-2
* $mii-cs-pro-pro-ctcae#proctcae-severity-3
* $mii-cs-pro-pro-ctcae#proctcae-severity-4
* $mii-cs-pro-pro-ctcae#proctcae-optout-not-sexually-active
* $mii-cs-pro-pro-ctcae#proctcae-optout-prefer-not-to-answer


// ============================================================================
// Interference scale — 5-point (0-4): Not at all → Very much
// Used by: 27 items (AEs with int attribute, rank 3/5/6/7)
// Note: German translation uses identical wording as Severity scale
// ============================================================================

ValueSet: MII_VS_PRO_PRO_CTCAE_Interference
Id: mii-vs-pro-pro-ctcae-interference
Title: "MII VS PRO PRO-CTCAE Interference Scale"
Description: "5-point interference response scale for PRO-CTCAE items (0=Not at all, 4=Very much)"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-interference"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* $mii-cs-pro-pro-ctcae#proctcae-interference-0
* $mii-cs-pro-pro-ctcae#proctcae-interference-1
* $mii-cs-pro-pro-ctcae#proctcae-interference-2
* $mii-cs-pro-pro-ctcae#proctcae-interference-3
* $mii-cs-pro-pro-ctcae#proctcae-interference-4


// ============================================================================
// Presence scale — Binary: Yes / No
// Used by: 16 items (binary presence/absence AEs)
// ============================================================================

ValueSet: MII_VS_PRO_PRO_CTCAE_Presence
Id: mii-vs-pro-pro-ctcae-presence
Title: "MII VS PRO PRO-CTCAE Presence Scale"
Description: "Binary presence/absence response scale for PRO-CTCAE items"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-presence"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* $mii-cs-pro-pro-ctcae#proctcae-presence-1
* $mii-cs-pro-pro-ctcae#proctcae-presence-0


// ============================================================================
// Presence scale — 3-point: Yes / No / Not applicable
// Used by: Items 57, 58 (Menstrual), 79 (Injection Site Reaction)
// ============================================================================

ValueSet: MII_VS_PRO_PRO_CTCAE_Presence_NA
Id: mii-vs-pro-pro-ctcae-presence-na
Title: "MII VS PRO PRO-CTCAE Presence Scale (with Not Applicable)"
Description: "3-option presence scale: Yes / No / Not applicable"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-presence-na"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* $mii-cs-pro-pro-ctcae#proctcae-presence-1
* $mii-cs-pro-pro-ctcae#proctcae-presence-0
* $mii-cs-pro-pro-ctcae#proctcae-optout-not-applicable


// ============================================================================
// Presence scale — 4-point (sexual function): Yes / No + 2 opt-outs
// Used by: Items 69, 70 (Delayed Orgasm, Unable to Orgasm)
// ============================================================================

ValueSet: MII_VS_PRO_PRO_CTCAE_Presence_Sexual
Id: mii-vs-pro-pro-ctcae-presence-sexual
Title: "MII VS PRO PRO-CTCAE Presence Scale (Sexual Function)"
Description: "4-option presence scale for sexual function: Yes / No / Not sexually active / Prefer not to answer"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-pro-ctcae-presence-sexual"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* $mii-cs-pro-pro-ctcae#proctcae-presence-1
* $mii-cs-pro-pro-ctcae#proctcae-presence-0
* $mii-cs-pro-pro-ctcae#proctcae-optout-not-sexually-active
* $mii-cs-pro-pro-ctcae#proctcae-optout-prefer-not-to-answer
