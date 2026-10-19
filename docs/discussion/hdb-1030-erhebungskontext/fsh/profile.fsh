ValueSet: PCORProtokollAktionstypVS
Id: pcor-vs-protokoll-aktionstyp
Title: "Protokoll-Aktionstyp (Zeitpunktart)"
Description: "Alle Codes des CodeSystems Protokoll-Aktionstyp."
* ^status = #draft
* ^experimental = true
* include codes from system PCORProtokollAktionstyp

// ---------------------------------------------------------------------------
// 1. Studienprotokoll (PlanDefinition) – Vorschlag fuer das Modul Forschungsvorhaben
// ---------------------------------------------------------------------------
Profile: MII_PR_Studie_Studienprotokoll
Parent: PlanDefinition
Id: mii-pr-studie-studienprotokoll
Title: "MII PR Studie Studienprotokoll (Vorschlag)"
Description: "VORSCHLAG fuer das MII-Modul Medizinisches Forschungsvorhaben: maschinenlesbarer Erhebungsplan eines Forschungsvorhabens. Beschreibt die protokollierten Zeitpunkte (Befragung, Untersuchung, Intervention, Dokumentation) als Aktionen mit Visitencode, Ausloeser, Zeitbezug zu einem Referenzereignis und den dort einzusetzenden Definitionen (Questionnaire, ActivityDefinition). Instanziiert wird das Protokoll je Proband:in als Probandenplan (CarePlan)."
* ^status = #draft
* ^experimental = true
* url MS
* version MS
* name MS
* title 1..1 MS
* type 1..1 MS
* type = $pdt#clinical-protocol
* status MS
* subject[x] MS
* subject[x] only CodeableConcept
* date MS
* publisher MS
* description MS
* relatedArtifact MS
* relatedArtifact ^short = "Studienregister-Eintrag, Protokollpublikation, SAP"
* goal MS
* goal.description MS
* goal ^short = "Endpunkte der Studie in Prosa oder kodiert"
* action 1..* MS
* action ^short = "Setting-Gruppe oder protokollierter Zeitpunkt; verschachtelt"
* action.id MS
* action.id ^short = "Visitencode (eindeutig innerhalb der PlanDefinition); wird auf Instanzebene als Protokollposition gefuehrt"
* action.prefix MS
* action.title 1..1 MS
* action.description MS
* action.code MS
* action.code ^short = "Zeitpunktart(en): Referenzereignis, Befragung, Untersuchung, Intervention, Dokumentation – zusaetzlich der Visitencode aus dem studienspezifischen CodeSystem"
* action.code ^binding.strength = #extensible
* action.code ^binding.valueSet = Canonical(PCORProtokollAktionstypVS)
* action.code ^binding.description = "Mindestens ein Code sollte die Zeitpunktart nennen; weitere Codes (Visitencode) sind frei."
* action.trigger MS
* action.trigger ^short = "Ausloesendes Ereignis fuer Referenzereignisse (named-event: admission, discharge, enrolment, surgery …)"
* action.condition MS
* action.condition ^short = "Anwendbarkeit: Setting, BMI-Schwelle, Arm"
* action.relatedAction MS
* action.relatedAction.actionId MS
* action.relatedAction.relationship MS
* action.relatedAction.offset[x] MS
* action.relatedAction ^short = "Zeitbezug zum Referenzereignis: relationship + offsetDuration (z. B. after-end 18 'mo')"
* action.timing[x] MS
* action.timing[x] ^short = "Wiederholungsmuster (Timing) oder Toleranzfenster (Range/Duration)"
* action.definition[x] MS
* action.definition[x] ^short = "Was ist zu tun: Questionnaire (Befragung), ActivityDefinition (Untersuchung/Intervention)"
* action.groupingBehavior MS
* action.action MS

// ---------------------------------------------------------------------------
// 2. Studie mit must-support Protokollreferenz – abgeleitet vom MII-Profil
// ---------------------------------------------------------------------------
Profile: MII_PR_Studie_Studie_MitProtokoll
Parent: MII_PR_Studie_Studie
Id: mii-pr-studie-studie-mit-protokoll
Title: "MII PR Studie Studie mit Protokollreferenz (Vorschlag)"
Description: "VORSCHLAG: identisch mit MII_PR_Studie_Studie, zusaetzlich ResearchStudy.protocol als must-support mit Ziel auf das Studienprotokoll-Profil. Im Ballotkommentar als Aenderung am bestehenden Profil gemeint, hier als abgeleitetes Profil, damit das Beispiel validierbar bleibt."
* ^status = #draft
* ^experimental = true
* protocol MS
* protocol only Reference(MII_PR_Studie_Studienprotokoll)
* protocol ^short = "Erhebungsplan der Studie (Zeitpunkte, Visiten, Endpunkte)"

// ---------------------------------------------------------------------------
// 3. Probandenplan (CarePlan) – patientenspezifische Instanz des Protokolls
// ---------------------------------------------------------------------------
Profile: MII_PR_Studie_Probandenplan
Parent: CarePlan
Id: mii-pr-studie-probandenplan
Title: "MII PR Studie Probandenplan (Vorschlag)"
Description: "VORSCHLAG fuer das MII-Modul Medizinisches Forschungsvorhaben: der auf eine Probandin / einen Probanden angewendete Erhebungsplan. Instanziiert das Studienprotokoll (PlanDefinition), traegt pro protokolliertem Zeitpunkt eine activity mit Visitencode, Soll-Fenster, Status und – nach Durchfuehrung – der Referenz auf das Ergebnis (QuestionnaireResponse, Observation, Procedure). QuestionnaireResponse.basedOn und Observation.basedOn zeigen auf diesen Plan; das Indexdatum liegt auf ResearchSubject.period.start."
* ^status = #draft
* ^experimental = true
* instantiatesCanonical 1..* MS
* instantiatesCanonical only Canonical(MII_PR_Studie_Studienprotokoll)
* status MS
* intent MS
* intent = #plan
* title MS
* subject MS
* subject only Reference(Patient)
* period MS
* period.start 1..1 MS
* period.start ^short = "Indexdatum des Plans (i. d. R. = ResearchSubject.period.start oder Datum des Referenzereignisses)"
* supportingInfo MS
* supportingInfo ^short = "Proband:in (ResearchSubject) und ggf. der Fall des Referenzereignisses (Encounter)"
* activity 1..* MS
* activity.outcomeReference MS
* activity.outcomeReference ^short = "Ergebnis des Zeitpunkts: QuestionnaireResponse, Observation, Procedure, Specimen"
* activity.detail 1..1 MS
* activity.detail.kind MS
* activity.detail.instantiatesCanonical MS
* activity.detail.instantiatesCanonical ^short = "Konkretes Instrument / Aktivitaet dieses Zeitpunkts (Questionnaire, ActivityDefinition)"
* activity.detail.code 1..1 MS
* activity.detail.code ^short = "Visitencode = action.id/code der PlanDefinition"
* activity.detail.status MS
* activity.detail.scheduled[x] MS
* activity.detail.scheduled[x] only Period or Timing
* activity.detail.scheduled[x] ^short = "Soll-Fenster (Period) oder Wiederholungsmuster (Timing)"
* activity.detail.description MS
