CodeSystem: PCORProtokollAktionstyp
Id: pcor-cs-protokoll-aktionstyp
Title: "Protokoll-Aktionstyp (Zeitpunktart)"
Description: "Art eines protokollierten Zeitpunkts in einem Studienprotokoll: Was passiert an diesem Zeitpunkt? Ein Zeitpunkt kann mehrere Aktionstypen tragen (z. B. Befragung und Untersuchung bei Aufnahme)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* #referenzereignis "Referenzereignis" "Ereignis im Versorgungs- oder Studienverlauf, auf das sich nachfolgende Zeitpunkte relativ beziehen (z. B. Entlassung, Befragungsbeginn, OP)."
* #befragung "Befragungszeitpunkt" "Patient:in oder Angehörige beantworten ein Instrument (PRO/PREM/Anamnese)."
* #untersuchung "Untersuchungszeitpunkt" "Klinische oder laborchemische Untersuchung, Probenentnahme, Messung."
* #intervention "Interventionszeitpunkt" "Gabe oder Durchführung einer Studienintervention. In nicht-interventionellen Studien nicht belegt."
* #dokumentation "Dokumentationszeitpunkt" "Erhebung durch Behandelnde oder Systeme ohne Patientenbeteiligung: Klinikerrating, Routinedaten-Extraktion, Vitalstatus."

CodeSystem: PCORANVisite
Id: pcor-cs-an-visite
Title: "PCOR-MII-AN Visitencodes"
Description: "Protokollpositionen der PCOR-MII-AN-Studie (DRKS00038048). Die Codes entsprechen den action.id-Werten der PlanDefinition pcor-mii-an-studienprotokoll und werden auf Instanzebene als Protokollposition geführt."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* #T0-AUF "Aufnahme (teil-)stationär (T0)"
* #T1-ENT "Entlassung (T1) – Referenzereignis"
* #FU-2W "Follow-up 2 Wochen nach Entlassung"
* #FU-4W "Follow-up 4 Wochen nach Entlassung"
* #FU-3M "Follow-up 3 Monate nach Entlassung"
* #FU-Q "Vierteljährliches Follow-up (BMI unter Schwelle)"
* #FU-J "Jährliches Follow-up (BMI über Schwelle)"
* #EP-18M "Primärer Endpunkt 18 Monate nach Entlassung"
* #EP-3J "Sekundärer Endpunkt 3 Jahre nach Entlassung"
* #EP-6J "Tertiärer Endpunkt 6 Jahre nach Entlassung"
* #A-T0 "Ambulanter Befragungsbeginn (T0) – Referenzereignis"
* #A-FU-Q "Ambulant: vierteljährliches Follow-up (BMI unter Schwelle)"
* #A-FU-J "Ambulant: jährliches Follow-up (BMI über Schwelle)"
* #A-EP-18M "Ambulant: primärer Endpunkt 18 Monate nach Befragungsbeginn"
* #A-EP-3J "Ambulant: sekundärer Endpunkt 3 Jahre nach Befragungsbeginn"
* #A-EP-6J "Ambulant: tertiärer Endpunkt 6 Jahre nach Befragungsbeginn"

CodeSystem: PCORTriggerEreignis
Id: pcor-cs-trigger-ereignis
Title: "Erhebungskontext: Trigger-Ereignistyp"
Description: "Welches Ereignis bzw. welcher Zweck im Versorgungs- oder Studienverlauf hat die Erhebung ausgelöst? Vorschlag aus HDB-1030. Grundlage ist der Wertebereich PROMs Trigger Event Type des NHS Wales PROMs Information Standard (CodeSystem https://fhir.nhs.wales/CodeSystem/DataStandardsWales-PSOM-TriggerEventType), ergänzt um Konzepte für Messreihen (Baseline, Follow-up), Erhebungszweck (Screening, Diagnostik, Monitoring) und Studienendpunkte. Das formale Mapping auf Wales steht in der ConceptMap pcor-cm-trigger-ereignis-to-wales."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^property[0].code = #achse
* ^property[0].description = "Ob das Konzept ein auslösendes Ereignis im Verlauf (ereignis) oder den Zweck der Erhebung (zweck) benennt. Beides kann auf Instanzebene kombiniert werden, solange die Extension nur einen Typ zulässt wird das zweckbezogene Konzept gewählt, wenn kein konkretes Ereignis vorliegt."
* ^property[0].type = #code
// --- Auslösende Ereignisse im Versorgungs- oder Studienverlauf
* #onboarding "Onboarding / Registrierung" "Registrierung für künftige Erhebungen, noch keine inhaltliche Messung."
* #onboarding ^property[0].code = #achse
* #onboarding ^property[0].valueCode = #ereignis
* #primaerversorgung "Primärversorgung" "Erhebung in der hausärztlichen oder fachärztlichen Primärversorgung vor einer Überweisung in die spezialisierte Versorgung."
* #primaerversorgung ^property[0].code = #achse
* #primaerversorgung ^property[0].valueCode = #ereignis
* #ueberweisung "Überweisung" "Nach Annahme einer Überweisung in die spezialisierte oder stationäre Versorgung."
* #ueberweisung ^property[0].code = #achse
* #ueberweisung ^property[0].valueCode = #ereignis
* #ambulanter-termin "Ambulanter Termin" "Anlässlich eines gebuchten ambulanten Termins."
* #ambulanter-termin ^property[0].code = #achse
* #ambulanter-termin ^property[0].valueCode = #ereignis
* #baseline "Baseline / Aufnahme" "Erste Messung einer Messreihe: Aufnahme, Einschluss, Befragungsbeginn."
* #baseline ^property[0].code = #achse
* #baseline ^property[0].valueCode = #ereignis
* #praeoperativ "Präoperativ / prä-interventionell" "Vor einer geplanten Intervention, z. B. im Rahmen der OP-Vorbereitung."
* #praeoperativ ^property[0].code = #achse
* #praeoperativ ^property[0].valueCode = #ereignis
* #postoperativ "Postoperativ / post-interventionell" "Nach bestätigter Intervention, i. d. R. mit definiertem Intervall."
* #postoperativ ^property[0].code = #achse
* #postoperativ ^property[0].valueCode = #ereignis
* #entlassung "Entlassung" "Zum Zeitpunkt der Entlassung aus (teil-)stationärer Behandlung."
* #entlassung ^property[0].code = #achse
* #entlassung ^property[0].valueCode = #ereignis
* #follow-up "Follow-up" "Protokollierte Nachbeobachtung in definiertem Abstand zu einem Referenzereignis nach Abschluss der Behandlungsepisode."
* #follow-up ^property[0].code = #achse
* #follow-up ^property[0].valueCode = #ereignis
* #kliniker-initiiert "Klinikerinitiiert (on demand)" "Auf Veranlassung einer behandelnden Person außerhalb eines protokollierten Zeitpunkts."
* #kliniker-initiiert ^property[0].code = #achse
* #kliniker-initiiert ^property[0].valueCode = #ereignis
* #patienten-initiiert "Patienteninitiiert (on demand)" "Von der Patientin / dem Patienten selbst ausgelöst, z. B. bei Symptomverschlechterung."
* #patienten-initiiert ^property[0].code = #achse
* #patienten-initiiert ^property[0].valueCode = #ereignis
// --- Zweck der Erhebung (wenn kein konkretes Verlaufsereignis der Auslöser ist)
* #screening "Screening" "Anlassunabhängige Reihenerhebung in einer nicht vorselektierten Population zur Identifikation von Auffälligen, z. B. PHQ-9-Depressionsscreening bei Aufnahme aller Patient:innen."
* #screening ^property[0].code = #achse
* #screening ^property[0].valueCode = #zweck
* #diagnostik "Diagnostik" "Anlassbezogene Abklärung bei Verdacht oder Symptomen, Erhebung als Teil der diagnostischen Einordnung oder Schweregradbestimmung vor Therapieentscheidung."
* #diagnostik ^property[0].code = #achse
* #diagnostik ^property[0].valueCode = #zweck
* #monitoring "Monitoring / Verlaufskontrolle" "Wiederholte Erhebung während einer laufenden Behandlung zur Steuerung oder Verlaufsbeobachtung, z. B. Symptommonitoring unter Chemotherapie oder Psychotherapie. Abgrenzung zu Follow-up: Monitoring findet innerhalb der Behandlungsepisode statt."
* #monitoring ^property[0].code = #achse
* #monitoring ^property[0].valueCode = #zweck
* #studienendpunkt "Studienendpunkt" "Erhebung zur Bestimmung eines im Studienprotokoll definierten primären, sekundären oder weiteren Endpunkts. Die Protokollposition benennt den konkreten Endpunkt."
* #studienendpunkt ^property[0].code = #achse
* #studienendpunkt ^property[0].valueCode = #zweck
// --- Rest
* #sonstiges "Sonstiges" "Kein spezifischer Auslöser aus dieser Liste trifft zu."
* #sonstiges ^property[0].code = #achse
* #sonstiges ^property[0].valueCode = #ereignis
* #unbekannt "Unbekannt" "Auslöser nicht bekannt."
* #unbekannt ^property[0].code = #achse
* #unbekannt ^property[0].valueCode = #ereignis

ValueSet: PCORTriggerEreignisVS
Id: pcor-vs-trigger-ereignis
Title: "Erhebungskontext: Trigger-Ereignistyp"
Description: "Alle Codes des CodeSystems Trigger-Ereignistyp."
* ^status = #draft
* ^experimental = true
* include codes from system PCORTriggerEreignis

// ---------------- Mapping auf NHS Wales PSOM Trigger Event Type ----------------
// Quelle: https://simplifier.net/fhir-psom-wales, CodeSystem DataStandardsWales-PSOM-TriggerEventType,
// Codes identisch mit NHS Wales Data Dictionary, Information Specification PROMs (Metadata-DSCN 2024004).
Instance: pcor-cm-trigger-ereignis-to-wales
InstanceOf: ConceptMap
Usage: #definition
Title: "Trigger-Ereignistyp (MII) → PROMs Trigger Event Type (NHS Wales PSOM)"
Description: "Mapping der MII-Trigger-Ereignistypen auf den Wertebereich PROMs Trigger Event Type des NHS Wales PROMs Standard Operating Model (PSOM). Wales kennt ausschließlich auslösende Ereignisse, keine zweckbezogenen Konzepte und keine Messreihenpositionen; diese sind daher unmatched. Einzelvalidierung (MapQual D12 = 2), Stand 2026-11-04."
* url = "https://pcor-mii.de/fhir/ConceptMap/pcor-cm-trigger-ereignis-to-wales"
* name = "PCORTriggerEreignisToWales"
* status = #draft
* experimental = true
* date = "2026-11-04"
* sourceCanonical = "https://pcor-mii.de/fhir/ValueSet/pcor-vs-trigger-ereignis"
* targetCanonical = "https://fhir.nhs.wales/ValueSet/DataStandardsWales-PSOM-TriggerEventType"
* group[+]
  * source = $Trigger
  * target = $WalesTrigger
  * element[+]
    * code = #onboarding
    * target[+].code = #10
    * target[=].display = "Onboarding"
    * target[=].equivalence = #equivalent
  * element[+]
    * code = #primaerversorgung
    * target[+].code = #11
    * target[=].display = "Primary care"
    * target[=].equivalence = #equivalent
  * element[+]
    * code = #ueberweisung
    * target[+].code = #12
    * target[=].display = "Referral"
    * target[=].equivalence = #equivalent
  * element[+]
    * code = #ambulanter-termin
    * target[+].code = #13
    * target[=].display = "Outpatient appointment"
    * target[=].equivalence = #equivalent
  * element[+]
    * code = #baseline
    * target[+].equivalence = #unmatched
    * target[=].comment = "Wales kodiert das auslösende Ereignis, nicht die Position in der Messreihe. Je nach Pfad entspricht Baseline dort 12 (Referral) oder 13 (Outpatient appointment)."
  * element[+]
    * code = #praeoperativ
    * target[+].code = #14
    * target[=].display = "Pre-op assessment"
    * target[=].equivalence = #equivalent
  * element[+]
    * code = #postoperativ
    * target[+].code = #15
    * target[=].display = "Intervention"
    * target[=].equivalence = #equivalent
    * target[=].comment = "Wales 15 gilt erst nach bestätigter Durchführung der Intervention."
  * element[+]
    * code = #entlassung
    * target[+].code = #16
    * target[=].display = "Discharge"
    * target[=].equivalence = #equivalent
  * element[+]
    * code = #follow-up
    * target[+].code = #15
    * target[=].display = "Intervention"
    * target[=].equivalence = #inexact
    * target[=].comment = "Wales leitet Follow-up-Zeitpunkte aus Trigger-Ereignis plus Trigger-Ereignisdatum ab (z. B. 15 Intervention + 6 Monate). Follow-up nach Entlassung entspräche 16."
  * element[+]
    * code = #screening
    * target[+].equivalence = #unmatched
    * target[=].comment = "Zweckbezogenes Konzept, in Wales nicht vorgesehen."
  * element[+]
    * code = #diagnostik
    * target[+].equivalence = #unmatched
    * target[=].comment = "Zweckbezogenes Konzept, in Wales nicht vorgesehen."
  * element[+]
    * code = #monitoring
    * target[+].equivalence = #unmatched
    * target[=].comment = "Zweckbezogenes Konzept, in Wales nicht vorgesehen."
  * element[+]
    * code = #studienendpunkt
    * target[+].equivalence = #unmatched
    * target[=].comment = "Wales adressiert nur Versorgungspfade, keine Studienprotokolle."
  * element[+]
    * code = #kliniker-initiiert
    * target[+].code = #17
    * target[=].display = "Clinician-initiated"
    * target[=].equivalence = #equivalent
  * element[+]
    * code = #patienten-initiiert
    * target[+].code = #18
    * target[=].display = "Patient-initiated"
    * target[=].equivalence = #equivalent
  * element[+]
    * code = #sonstiges
    * target[+].code = #71
    * target[=].display = "Other"
    * target[=].equivalence = #equivalent
  * element[+]
    * code = #unbekannt
    * target[+].code = #91
    * target[=].display = "Unknown"
    * target[=].equivalence = #equivalent
