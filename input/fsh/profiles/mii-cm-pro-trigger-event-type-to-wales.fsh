// Mapping MII trigger event type -> NHS Wales PSOM PROMs Trigger Event Type.
// Source: https://simplifier.net/fhir-psom-wales, CodeSystem DataStandardsWales-PSOM-TriggerEventType
// (codes identical to NHS Wales Data Dictionary, Information Specification PROMs).
// group.source/target are set (HAPI-0838 requires group.source, see release hygiene).

Instance: mii-cm-pro-trigger-event-type-to-wales
InstanceOf: ConceptMap
Title: "MII CM PRO Trigger Event Type to NHS Wales PROMs Trigger Event Type"
Description: "Maps the MII trigger event types to the value set PROMs Trigger Event Type of the NHS Wales PROMs Standard Operating Model (PSOM). Wales knows triggering events only, no purpose concepts and no measurement-series positions; these are unmatched."
Usage: #definition
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ConceptMap/mii-cm-pro-trigger-event-type-to-wales"
* name = "MII_CM_PRO_Trigger_Event_Type_To_Wales"
* status = #draft
* experimental = false
* language = #en
* sourceCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-trigger-event-type"
* targetCanonical = "https://fhir.nhs.wales/ValueSet/DataStandardsWales-PSOM-TriggerEventType"
* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-trigger-event-type"
* group[=].target = "https://fhir.nhs.wales/CodeSystem/DataStandardsWales-PSOM-TriggerEventType"
* group[=].element[+].code = #onboarding
* group[=].element[=].display = "Onboarding / registration"
* group[=].element[=].target[+].code = #10
* group[=].element[=].target[=].display = "Onboarding"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #primary-care
* group[=].element[=].display = "Primary care"
* group[=].element[=].target[+].code = #11
* group[=].element[=].target[=].display = "Primary care"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #referral
* group[=].element[=].display = "Referral"
* group[=].element[=].target[+].code = #12
* group[=].element[=].target[=].display = "Referral"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #outpatient-appointment
* group[=].element[=].display = "Outpatient appointment"
* group[=].element[=].target[+].code = #13
* group[=].element[=].target[=].display = "Outpatient appointment"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #baseline
* group[=].element[=].display = "Baseline / admission"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Wales codes the triggering event, not the position in a measurement series; depending on the pathway baseline corresponds to 12 (Referral) or 13 (Outpatient appointment)."
* group[=].element[+].code = #pre-intervention
* group[=].element[=].display = "Pre-operative / pre-intervention"
* group[=].element[=].target[+].code = #14
* group[=].element[=].target[=].display = "Pre-op assessment"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #post-intervention
* group[=].element[=].display = "Post-operative / post-intervention"
* group[=].element[=].target[+].code = #15
* group[=].element[=].target[=].display = "Intervention"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wales 15 applies only after the intervention has been confirmed as performed."
* group[=].element[+].code = #discharge
* group[=].element[=].display = "Discharge"
* group[=].element[=].target[+].code = #16
* group[=].element[=].target[=].display = "Discharge"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #follow-up
* group[=].element[=].display = "Follow-up"
* group[=].element[=].target[+].code = #15
* group[=].element[=].target[=].display = "Intervention"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Wales derives follow-up time points from trigger event plus trigger event date (e.g. 15 Intervention + 6 months); follow-up after discharge would correspond to 16."
* group[=].element[+].code = #clinician-initiated
* group[=].element[=].display = "Clinician-initiated (on demand)"
* group[=].element[=].target[+].code = #17
* group[=].element[=].target[=].display = "Clinician-initiated"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #patient-initiated
* group[=].element[=].display = "Patient-initiated (on demand)"
* group[=].element[=].target[+].code = #18
* group[=].element[=].target[=].display = "Patient-initiated"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #screening
* group[=].element[=].display = "Screening"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Purpose concept; not part of the Wales value set."
* group[=].element[+].code = #diagnostic
* group[=].element[=].display = "Diagnostic assessment"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Purpose concept; not part of the Wales value set."
* group[=].element[+].code = #monitoring
* group[=].element[=].display = "Monitoring"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Purpose concept; not part of the Wales value set."
* group[=].element[+].code = #study-endpoint
* group[=].element[=].display = "Study endpoint"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Wales covers care pathways only, not study protocols."
* group[=].element[+].code = #other
* group[=].element[=].display = "Other"
* group[=].element[=].target[+].code = #71
* group[=].element[=].target[=].display = "Other"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #unknown
* group[=].element[=].display = "Unknown"
* group[=].element[=].target[+].code = #91
* group[=].element[=].target[=].display = "Unknown"
* group[=].element[=].target[=].equivalence = #equivalent
