// Collection context (HDB-1030): trigger event type of a PRO collection.
// Ported from docs/discussion/hdb-1030-erhebungskontext/ (codes translated to English,
// German as designation). Based on NHS Wales PROMs Trigger Event Type, extended by
// measurement-series positions (baseline, follow-up), purpose concepts and study endpoint.

CodeSystem: MII_CS_PRO_Trigger_Event_Type
Id: mii-cs-pro-trigger-event-type
Title: "MII CS PRO Trigger Event Type"
Description: "Which event or purpose in the course of care or of a study triggered the collection of a questionnaire or score (collection context, HDB-1030). Based on the value set PROMs Trigger Event Type of the NHS Wales PROMs Information Standard, extended by concepts for measurement series (baseline, follow-up), collection purpose (screening, diagnostic assessment, monitoring) and study endpoints. The property `axis` marks whether a concept names a triggering event or the purpose of the collection. The mapping to NHS Wales is the ConceptMap mii-cm-pro-trigger-event-type-to-wales."
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-trigger-event-type"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^language = #en
* ^property[+].code = #axis
* ^property[=].uri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-trigger-event-type#axis"
* ^property[=].description = "Whether the concept names a triggering event in the course of care or study (event) or the purpose of the collection (purpose). While the extension carries a single trigger type, choose the purpose concept when no concrete event triggered the collection."
* ^property[=].type = #string
* #onboarding "Onboarding / registration" "Registration for future collections; no content measurement yet."
* #onboarding ^designation[+].language = #de
* #onboarding ^designation[=].value = "Onboarding / Registrierung"
* #onboarding ^property[+].code = #axis
* #onboarding ^property[=].valueString = "event"
* #primary-care "Primary care" "Collection in primary care before referral to specialised care."
* #primary-care ^designation[+].language = #de
* #primary-care ^designation[=].value = "Primärversorgung"
* #primary-care ^property[+].code = #axis
* #primary-care ^property[=].valueString = "event"
* #referral "Referral" "After acceptance of a referral to specialised or inpatient care."
* #referral ^designation[+].language = #de
* #referral ^designation[=].value = "Überweisung"
* #referral ^property[+].code = #axis
* #referral ^property[=].valueString = "event"
* #outpatient-appointment "Outpatient appointment" "On the occasion of a booked outpatient appointment."
* #outpatient-appointment ^designation[+].language = #de
* #outpatient-appointment ^designation[=].value = "Ambulanter Termin"
* #outpatient-appointment ^property[+].code = #axis
* #outpatient-appointment ^property[=].valueString = "event"
* #baseline "Baseline / admission" "First measurement of a measurement series: admission, enrolment, start of the survey."
* #baseline ^designation[+].language = #de
* #baseline ^designation[=].value = "Baseline / Aufnahme"
* #baseline ^property[+].code = #axis
* #baseline ^property[=].valueString = "event"
* #pre-intervention "Pre-operative / pre-intervention" "Before a planned intervention, e.g. as part of pre-operative assessment."
* #pre-intervention ^designation[+].language = #de
* #pre-intervention ^designation[=].value = "Präoperativ / prä-interventionell"
* #pre-intervention ^property[+].code = #axis
* #pre-intervention ^property[=].valueString = "event"
* #post-intervention "Post-operative / post-intervention" "After a confirmed intervention, usually at a defined interval."
* #post-intervention ^designation[+].language = #de
* #post-intervention ^designation[=].value = "Postoperativ / post-interventionell"
* #post-intervention ^property[+].code = #axis
* #post-intervention ^property[=].valueString = "event"
* #discharge "Discharge" "At discharge from inpatient or day-patient treatment."
* #discharge ^designation[+].language = #de
* #discharge ^designation[=].value = "Entlassung"
* #discharge ^property[+].code = #axis
* #discharge ^property[=].valueString = "event"
* #follow-up "Follow-up" "Scheduled follow-up at a defined interval to a reference event after the end of the treatment episode."
* #follow-up ^designation[+].language = #de
* #follow-up ^designation[=].value = "Follow-up"
* #follow-up ^property[+].code = #axis
* #follow-up ^property[=].valueString = "event"
* #clinician-initiated "Clinician-initiated (on demand)" "Requested by a treating professional outside a scheduled time point."
* #clinician-initiated ^designation[+].language = #de
* #clinician-initiated ^designation[=].value = "Klinikerinitiiert (on demand)"
* #clinician-initiated ^property[+].code = #axis
* #clinician-initiated ^property[=].valueString = "event"
* #patient-initiated "Patient-initiated (on demand)" "Triggered by the patient, e.g. when symptoms worsen."
* #patient-initiated ^designation[+].language = #de
* #patient-initiated ^designation[=].value = "Patienteninitiiert (on demand)"
* #patient-initiated ^property[+].code = #axis
* #patient-initiated ^property[=].valueString = "event"
* #screening "Screening" "Routine collection in a non-preselected population to identify conspicuous cases, e.g. PHQ-9 depression screening of all patients at admission."
* #screening ^designation[+].language = #de
* #screening ^designation[=].value = "Screening"
* #screening ^property[+].code = #axis
* #screening ^property[=].valueString = "purpose"
* #diagnostic "Diagnostic assessment" "Occasion-related assessment on suspicion or symptoms, as part of diagnostic classification or severity grading before a treatment decision."
* #diagnostic ^designation[+].language = #de
* #diagnostic ^designation[=].value = "Diagnostik"
* #diagnostic ^property[+].code = #axis
* #diagnostic ^property[=].valueString = "purpose"
* #monitoring "Monitoring" "Repeated collection during ongoing treatment for steering or observation, e.g. symptom monitoring during chemotherapy. Unlike follow-up, monitoring takes place within the treatment episode."
* #monitoring ^designation[+].language = #de
* #monitoring ^designation[=].value = "Monitoring / Verlaufskontrolle"
* #monitoring ^property[+].code = #axis
* #monitoring ^property[=].valueString = "purpose"
* #study-endpoint "Study endpoint" "Collection to determine a primary, secondary or further endpoint defined in a study protocol; the protocol position names the endpoint."
* #study-endpoint ^designation[+].language = #de
* #study-endpoint ^designation[=].value = "Studienendpunkt"
* #study-endpoint ^property[+].code = #axis
* #study-endpoint ^property[=].valueString = "purpose"
* #other "Other" "None of the triggers in this list applies."
* #other ^designation[+].language = #de
* #other ^designation[=].value = "Sonstiges"
* #other ^property[+].code = #axis
* #other ^property[=].valueString = "event"
* #unknown "Unknown" "Trigger not known."
* #unknown ^designation[+].language = #de
* #unknown ^designation[=].value = "Unbekannt"
* #unknown ^property[+].code = #axis
* #unknown ^property[=].valueString = "event"

ValueSet: MII_VS_PRO_Trigger_Event_Type
Id: mii-vs-pro-trigger-event-type
Title: "MII VS PRO Trigger Event Type"
Description: "All concepts of the MII CS PRO Trigger Event Type: the triggering event or purpose of a PRO collection (collection context, HDB-1030)."
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-trigger-event-type"
* ^status = #draft
* ^experimental = false
* ^language = #en
* include codes from system MII_CS_PRO_Trigger_Event_Type
