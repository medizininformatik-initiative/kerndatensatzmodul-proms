// Collection context (Erhebungskontext), ballot comment HDB-1030.
// Ported from docs/discussion/hdb-1030-erhebungskontext/fsh/ex-erhebungskontext.fsh.

Invariant: mii-pro-cc-1
Description: "At least one of trigger event type (routine mode) or protocol reference (protocol mode) must be present."
Expression: "extension.where(url = 'triggerType').exists() or extension.where(url = 'protocol').exists()"
Severity: #error

Extension: MII_EX_PRO_Collection_Context
Id: mii-ex-pro-collection-context
Title: "MII EX PRO Collection Context"
Description: "Collection context of a QuestionnaireResponse or score Observation: which point in the course of care or of a study triggered the collection (baseline, discharge, follow-up, pre-/post-intervention, on demand, screening …). Two modes, combinable: (a) routine: triggerType + triggerDate; (b) protocol: protocol + protocolPosition, with index date and target intervals in the study protocol (PlanDefinition) and ResearchSubject.period.start. Filled by the form filler or the ordering system from the launch context or from QuestionnaireResponse.basedOn, never by patient input. A score Observation carries the same value as the QuestionnaireResponse it is derived from. Not to be confused with the recall period reported inside an instrument (\"over the last two weeks\")."
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-collection-context"
* ^status = #draft
* ^context[+].type = #element
* ^context[=].expression = "QuestionnaireResponse"
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* obeys mii-pro-cc-1
* extension contains
    triggerType 0..1 MS and
    triggerDate 0..1 MS and
    protocol 0..1 MS and
    protocolPosition 0..1 MS
* extension[triggerType] ^short = "Trigger event type (baseline, discharge, follow-up, pre-/post-intervention, on demand, screening …)"
* extension[triggerType].value[x] only CodeableConcept
* extension[triggerType].valueCodeableConcept from MII_VS_PRO_Trigger_Event_Type (extensible)
* extension[triggerDate] ^short = "Date of the triggering event (surgery, discharge …), not the completion date"
* extension[triggerDate].value[x] only date
* extension[protocol] ^short = "Study or care-pathway protocol (PlanDefinition) defining the time point"
* extension[protocol].value[x] only Canonical(PlanDefinition)
* extension[protocolPosition] ^short = "Position in the protocol, e.g. visit code (PlanDefinition.action.id or action.code)"
* extension[protocolPosition].value[x] only Coding
* value[x] 0..0
