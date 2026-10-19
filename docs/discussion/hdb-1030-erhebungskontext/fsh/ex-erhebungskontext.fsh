Invariant: erhk-1
Description: "Mindestens eines von Trigger-Ereignistyp (Routine) oder Protokollreferenz (Studie/Pfad) muss angegeben sein."
Expression: "extension.where(url = 'triggerType').exists() or extension.where(url = 'protocol').exists()"
Severity: #error

Extension: MII_EX_PRO_Erhebungskontext
Id: mii-ex-pro-erhebungskontext
Title: "Erhebungskontext (Vorschlag HDB-1030)"
Description: "VORSCHLAG aus dem Ballotkommentar HDB-1030 zum MII-Modul PRO, hier nur zur Illustration mitdefiniert. Beschreibt, welcher Punkt im Versorgungs- oder Studienverlauf eine QuestionnaireResponse bzw. Score-Observation ausgelöst hat. Zwei Modi: (a) Routine: triggerType + triggerDate; (b) Protokoll: protocol + protocolPosition, Indexdatum und Soll-Intervalle liegen dann auf ResearchSubject.period.start und in der PlanDefinition. Befüllung durch den Formular-Filler aus Launch-Context (%study, %encounter, %clinical) bzw. aus QuestionnaireResponse.basedOn, nie durch Patienteneingabe."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-erhebungskontext"
* ^status = #draft
* ^experimental = true
* ^context[0].type = #element
* ^context[0].expression = "QuestionnaireResponse"
* ^context[1].type = #element
* ^context[1].expression = "Observation"
* obeys erhk-1
* extension contains
    triggerType 0..1 MS and
    triggerDate 0..1 MS and
    protocol 0..1 MS and
    protocolPosition 0..1 MS
* extension[triggerType] ^short = "Trigger-Ereignistyp (Baseline, Entlassung, Follow-up, prä-/postoperativ, on demand …)"
* extension[triggerType].value[x] only CodeableConcept
* extension[triggerType].valueCodeableConcept from PCORTriggerEreignisVS (extensible)
* extension[triggerDate] ^short = "Datum des auslösenden Ereignisses (OP, Entlassung …), nicht das Ausfülldatum"
* extension[triggerDate].value[x] only date
* extension[protocol] ^short = "Studien-/Pfadprotokoll (PlanDefinition), aus dem der Zeitpunkt stammt"
* extension[protocol].value[x] only canonical
* extension[protocol].value[x] only Canonical(PlanDefinition)
* extension[protocolPosition] ^short = "Protokollposition: Visitencode = action.id/code der PlanDefinition"
* extension[protocolPosition].value[x] only Coding
* value[x] 0..0
