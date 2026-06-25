// ============================================================================
// WHODAS 2.0 12-Item (self-administered) - Metadata-only reference
// ============================================================================
// WHO Disability Assessment Schedule 2.0, 12-item version.
//
// LICENSING (decisive): The WHO grants clinicians the right to reproduce
// WHODAS 2.0 for use with their own patients, but ANY electronic use -
// including inclusion in an electronic data capture system or reproduction
// "in any way" - requires written permission from WHO via the WHO
// Classifications licensing process. Publishing the full item text inside a
// FHIR Questionnaire constitutes electronic reproduction. This IG therefore
// implements WHODAS 2.0 as a METADATA-ONLY reference (analogous to HADS /
// EPDS): no item wording, answer text or German translations are embedded.
//
// Capabilities:
//   - displayable  = false  (item text omitted for licensing reasons)
//   - collectable  = false  (no answerable items embedded)
//   - calculatable = true   (the simple-sum scoring method is public-domain
//                            methodology and can be applied to externally
//                            licensed/collected responses)
//   - extractable  = true   (a resulting score Observation can be extracted)
//   - domainAligned = true
//
// Instrument summary (documentation only, no item text reproduced):
//   - 6 ICF-aligned domains: Cognition, Mobility, Self-care, Getting along,
//     Life activities, Participation (2 items each = 12 items).
//   - Recall period: last 30 days.
//   - 5-point response scale: None(0), Mild(1), Moderate(2), Severe(3),
//     Extreme or cannot do(4).
//   - Simple scoring: sum of the 12 item scores, range 0-48 (higher = more
//     disability). Complex IRT-based scoring is deferred to future work.
//
// Sources: WHO (Üstün TB et al.), Measuring Health and Disability: Manual for
// WHODAS 2.0, WHO 2010, ISBN 9789241547598. German validation: Saltychev et
// al. 2021 (PMID 34014444); Kirchberger et al. (MONICA/KORA).
// ============================================================================

Instance: mii-qst-pro-whodas-whodas12
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO WHODAS 2.0 12-Item"
Description: "WHO Disability Assessment Schedule 2.0, 12-item self-administered version (WHODAS-12) - Metadata-only reference implementation. Full item content is not reproduced because electronic reproduction of WHODAS 2.0 requires written permission from WHO."
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = $mii-qst-pro-whodas-whodas12
* status = #active
* experimental = true
* language = #en
* title = "WHO Disability Assessment Schedule 2.0 - 12-Item (WHODAS-12)"
* code[mii] = $mii-cs-pro-questionnaire-catalogue#whodas-whodas12 "WHODAS 2.0 12-Item (WHO Disability Assessment Schedule 2.0, self-administered)"

* copyright = "WHODAS 2.0 © World Health Organization 2010. Reproduced/used only by reference. Electronic reproduction of the instrument requires written permission from WHO (https://www.who.int/standards/classifications/international-classification-of-functioning-disability-and-health/who-disability-assessment-schedule)."

// Capabilities - NOT displayable/collectable due to WHO licensing restrictions;
// scoring methodology (simple sum) is public, so calculatable/extractable = true
* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[collectable].valueBoolean = false
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Metadata only - no actual questionnaire items included (licensing)
* item[0].linkId = "WHODAS12.Notice"
* item[0].type = #display
* item[0].text = "This questionnaire (WHODAS 2.0, 12-item) is reproduced only as a metadata reference. The item text is not included because electronic reproduction of WHODAS 2.0 requires written permission from the World Health Organization. To license WHODAS 2.0 for an electronic data capture system, see the WHO Classifications licensing process."
