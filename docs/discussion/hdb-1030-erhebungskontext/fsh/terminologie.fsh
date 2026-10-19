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
Description: "Welches Ereignis im Versorgungs- oder Studienverlauf hat die Erhebung ausgelöst? Vorschlag aus HDB-1030; die Definitionen nennen den korrespondierenden Code des NHS Wales PROMs Information Standard (PROMs Trigger Event Type)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* #onboarding "Onboarding / Registrierung" "Registrierung für künftige Erhebungen, noch keine inhaltliche Messung (Wales 10)."
* #ueberweisung "Überweisung" "Nach Annahme einer Überweisung (Wales 12)."
* #ambulanter-termin "Ambulanter Termin" "Anlässlich eines ambulanten Termins (Wales 13)."
* #baseline "Baseline / Aufnahme" "Erste Messung einer Messreihe: Aufnahme, Einschluss, Befragungsbeginn."
* #praeoperativ "Präoperativ / prä-interventionell" "Vor einer geplanten Intervention, z. B. im Rahmen der OP-Vorbereitung (Wales 14)."
* #postoperativ "Postoperativ / post-interventionell" "Nach bestätigter Intervention, i. d. R. mit definiertem Intervall (Wales 15)."
* #entlassung "Entlassung" "Zum Zeitpunkt der Entlassung aus (teil-)stationärer Behandlung (Wales 16)."
* #follow-up "Follow-up" "Protokollierte Nachbeobachtung in definiertem Abstand zum Referenzereignis."
* #screening "Screening" "Anlassunabhängige Reihenerhebung."
* #kliniker-initiiert "Klinikerinitiiert (on demand)" "Auf Veranlassung einer behandelnden Person außerhalb eines protokollierten Zeitpunkts (Wales 17)."
* #patienten-initiiert "Patienteninitiiert (on demand)" "Von der Patientin / dem Patienten selbst ausgelöst, z. B. bei Symptomverschlechterung (Wales 18)."
* #unbekannt "Unbekannt" "Auslöser nicht bekannt (Wales 91)."

ValueSet: PCORTriggerEreignisVS
Id: pcor-vs-trigger-ereignis
Title: "Erhebungskontext: Trigger-Ereignistyp"
Description: "Alle Codes des CodeSystems Trigger-Ereignistyp."
* ^status = #draft
* ^experimental = true
* include codes from system PCORTriggerEreignis
