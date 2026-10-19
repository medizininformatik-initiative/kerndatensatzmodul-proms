Instance: pcor-mii-an-studienprotokoll
InstanceOf: MII_PR_Studie_Studienprotokoll
Usage: #definition
Title: "PCOR-MII-AN: Erhebungsplan"
Description: "Erhebungsplan der PCOR-MII-AN-Studie (DRKS00038048), rekonstruiert aus dem DRKS-Eintrag vom 13.11.2025. Zwei Settings: (teil-)stationaer mit Entlassung als Referenzereignis, ambulant mit Befragungsbeginn als Referenzereignis. Beispiel zur Illustration der vorgeschlagenen Profile; kein offizielles Studiendokument."
* url = $Protokoll
* version = "0.1.0"
* name = "PCOR_MII_AN_Studienprotokoll"
* title = "PCOR-MII-AN: Erhebungsplan (Befragungs-, Untersuchungs- und Dokumentationszeitpunkte)"
* type = $pdt#clinical-protocol
* status = #draft
* experimental = true
* date = "2026-10-19"
* publisher = "PCOR-MII (Beispiel, nicht autorisiert)"
* description = "Prospektive, nicht-interventionelle Laengsschnittstudie. Stationaer/teilstationaer: Befragung bei Aufnahme und Entlassung, 2 und 4 Wochen sowie 3 Monate nach Entlassung, danach BMI-abhaengig vierteljaehrlich oder jaehrlich. Ambulant: Befragungsbeginn, danach vierteljaehrlich, BMI-adaptiv. Endpunkte 18 Monate (primaer), 3 Jahre (sekundaer), 6 Jahre (tertiaer) nach Entlassung bzw. Befragungsbeginn. Zusaetzlich Klinikerrating, Blut-/Stuhlproben waehrend des Aufenthalts und Extraktion von Routinedaten."
* subjectCodeableConcept = $resource-types#Patient
* relatedArtifact[0].type = #documentation
* relatedArtifact[0].label = "DRKS00038048"
* relatedArtifact[0].display = "Deutsches Register Klinischer Studien: PCOR-MII-AN"
* relatedArtifact[0].url = "https://drks.de/search/de/trial/DRKS00038048"
* relatedArtifact[1].type = #citation
* relatedArtifact[1].citation = "Integrating the Patient Perspective into Healthcare and Real-World Evidence: The Multi-site, Cross-Disease, Patient-Centered Outcomes Research Project in the Medical Informatics Initiative (PCOR-MII). J Healthc Inform Res 2025. doi:10.1007/s41666-025-00187-8"
* goal[0].category.text = "Primaerer Endpunkt"
* goal[0].description.text = "Symptomausprägung 18 Monate nach Entlassung (stationaer/teilstationaer) bzw. 18 Monate nach Befragungsbeginn (ambulant)"
* goal[1].category.text = "Sekundaerer Endpunkt"
* goal[1].description.text = "Verlauf 3 Jahre nach Entlassung bzw. Befragungsbeginn"
* goal[2].category.text = "Tertiaerer Endpunkt"
* goal[2].description.text = "Langzeitverlauf 6 Jahre nach Entlassung bzw. Befragungsbeginn"

// ===================== Setting A: (teil-)stationaer =====================
* action[0].id = "stationaer"
* action[0].prefix = "S"
* action[0].title = "Setting (teil-)stationaer"
* action[0].description = "Gilt fuer Patient:innen in voll- oder teilstationaerer Behandlung. Referenzereignis fuer alle Folgezeitpunkte ist die Entlassung (T1)."
* action[0].groupingBehavior = #logical-group
* action[0].condition[0].kind = #applicability
* action[0].condition[0].expression.description = "Aufnahme in voll- oder teilstationaere Behandlung"
* action[0].condition[0].expression.language = #text/fhirpath
* action[0].condition[0].expression.expression = "%encounter.class.code = 'IMP' or %encounter.class.code = 'SS'"

// --- T0 Aufnahme
* action[0].action[0].id = "T0-AUF"
* action[0].action[0].prefix = "T0"
* action[0].action[0].title = "Aufnahme"
* action[0].action[0].code[0] = $Visite#T0-AUF
* action[0].action[0].trigger[0].type = #named-event
* action[0].action[0].trigger[0].name = "admission"
* action[0].action[0].groupingBehavior = #logical-group
* action[0].action[0].action[0].title = "Befragung: PCOR-MII-Basisdatensatz (73 Items, standortabhaengig erweitert)"
* action[0].action[0].action[0].code[0] = $Aktionstyp#befragung
* action[0].action[0].action[0].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"
* action[0].action[0].action[1].title = "Befragung: PHQ-9 vollstaendig (nur Validierungsstandorte)"
* action[0].action[0].action[1].code[0] = $Aktionstyp#befragung
* action[0].action[0].action[1].definitionCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9|2027.0.0-ballot.1"
* action[0].action[0].action[2].title = "Befragung: GAD-7 vollstaendig (nur Validierungsstandorte)"
* action[0].action[0].action[2].code[0] = $Aktionstyp#befragung
* action[0].action[0].action[2].definitionCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7|2027.0.0-ballot.1"
* action[0].action[0].action[3].title = "Untersuchung: Blut- und Stuhlprobe (Analyse im Studienzentrum Heidelberg)"
* action[0].action[0].action[3].code[0] = $Aktionstyp#untersuchung
* action[0].action[0].action[4].title = "Dokumentation: Klinikerrating zu Einschraenkungen"
* action[0].action[0].action[4].code[0] = $Aktionstyp#dokumentation

// --- T1 Entlassung (Referenzereignis)
* action[0].action[1].id = "T1-ENT"
* action[0].action[1].prefix = "T1"
* action[0].action[1].title = "Entlassung (Referenzereignis)"
* action[0].action[1].code[0] = $Visite#T1-ENT
* action[0].action[1].code[1] = $Aktionstyp#referenzereignis
* action[0].action[1].trigger[0].type = #named-event
* action[0].action[1].trigger[0].name = "discharge"
* action[0].action[1].groupingBehavior = #logical-group
* action[0].action[1].action[0].title = "Befragung: PCOR-MII-Basisdatensatz"
* action[0].action[1].action[0].code[0] = $Aktionstyp#befragung
* action[0].action[1].action[0].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"
* action[0].action[1].action[1].title = "Dokumentation: Klinikerrating zu Einschraenkungen"
* action[0].action[1].action[1].code[0] = $Aktionstyp#dokumentation

// --- Follow-ups relativ zur Entlassung
* action[0].action[2].id = "FU-2W"
* action[0].action[2].title = "Follow-up 2 Wochen nach Entlassung"
* action[0].action[2].code[0] = $Visite#FU-2W
* action[0].action[2].code[1] = $Aktionstyp#befragung
* action[0].action[2].relatedAction[0].actionId = "T1-ENT"
* action[0].action[2].relatedAction[0].relationship = #after-end
* action[0].action[2].relatedAction[0].offsetDuration = 2 'wk'
* action[0].action[2].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"

* action[0].action[3].id = "FU-4W"
* action[0].action[3].title = "Follow-up 4 Wochen nach Entlassung"
* action[0].action[3].code[0] = $Visite#FU-4W
* action[0].action[3].code[1] = $Aktionstyp#befragung
* action[0].action[3].relatedAction[0].actionId = "T1-ENT"
* action[0].action[3].relatedAction[0].relationship = #after-end
* action[0].action[3].relatedAction[0].offsetDuration = 4 'wk'
* action[0].action[3].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"

* action[0].action[4].id = "FU-3M"
* action[0].action[4].title = "Follow-up 3 Monate nach Entlassung"
* action[0].action[4].code[0] = $Visite#FU-3M
* action[0].action[4].code[1] = $Aktionstyp#befragung
* action[0].action[4].relatedAction[0].actionId = "T1-ENT"
* action[0].action[4].relatedAction[0].relationship = #after-end
* action[0].action[4].relatedAction[0].offsetDuration = 3 'mo'
* action[0].action[4].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"

* action[0].action[5].id = "FU-Q"
* action[0].action[5].title = "Vierteljaehrliches Follow-up (BMI unter Studienschwelle)"
* action[0].action[5].description = "Ab 3 Monaten nach Entlassung alle 3 Monate, solange der aktuelle BMI unter der studienspezifischen Schwelle liegt. Laeuft bis zum primaeren Endpunkt."
* action[0].action[5].code[0] = $Visite#FU-Q
* action[0].action[5].code[1] = $Aktionstyp#befragung
* action[0].action[5].condition[0].kind = #applicability
* action[0].action[5].condition[0].expression.description = "Aktueller BMI unterhalb der studienspezifischen Schwelle (Schwellenwert im Studienprotokoll, hier nicht abgebildet)"
* action[0].action[5].condition[0].expression.language = #text/cql
* action[0].action[5].condition[0].expression.expression = "BMIUnterStudienschwelle"
* action[0].action[5].relatedAction[0].actionId = "FU-3M"
* action[0].action[5].relatedAction[0].relationship = #after-end
* action[0].action[5].relatedAction[0].offsetDuration = 3 'mo'
* action[0].action[5].timingTiming.repeat.frequency = 1
* action[0].action[5].timingTiming.repeat.period = 3
* action[0].action[5].timingTiming.repeat.periodUnit = #mo
* action[0].action[5].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"

* action[0].action[6].id = "FU-J"
* action[0].action[6].title = "Jaehrliches Follow-up (BMI ueber Studienschwelle)"
* action[0].action[6].code[0] = $Visite#FU-J
* action[0].action[6].code[1] = $Aktionstyp#befragung
* action[0].action[6].condition[0].kind = #applicability
* action[0].action[6].condition[0].expression.description = "Aktueller BMI auf oder ueber der studienspezifischen Schwelle"
* action[0].action[6].condition[0].expression.language = #text/cql
* action[0].action[6].condition[0].expression.expression = "BMIUeberStudienschwelle"
* action[0].action[6].relatedAction[0].actionId = "FU-3M"
* action[0].action[6].relatedAction[0].relationship = #after-end
* action[0].action[6].relatedAction[0].offsetDuration = 1 'a'
* action[0].action[6].timingTiming.repeat.frequency = 1
* action[0].action[6].timingTiming.repeat.period = 1
* action[0].action[6].timingTiming.repeat.periodUnit = #a
* action[0].action[6].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"

// --- Endpunkte
* action[0].action[7].id = "EP-18M"
* action[0].action[7].title = "Primaerer Endpunkt: 18 Monate nach Entlassung"
* action[0].action[7].code[0] = $Visite#EP-18M
* action[0].action[7].relatedAction[0].actionId = "T1-ENT"
* action[0].action[7].relatedAction[0].relationship = #after-end
* action[0].action[7].relatedAction[0].offsetDuration = 18 'mo'
* action[0].action[7].timingRange.low = 17 'mo'
* action[0].action[7].timingRange.high = 19 'mo'
* action[0].action[7].groupingBehavior = #logical-group
* action[0].action[7].action[0].title = "Befragung: PCOR-MII-Basisdatensatz"
* action[0].action[7].action[0].code[0] = $Aktionstyp#befragung
* action[0].action[7].action[0].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"
* action[0].action[7].action[1].title = "Dokumentation: Extraktion von Routinedaten aus der elektronischen Patientenakte"
* action[0].action[7].action[1].code[0] = $Aktionstyp#dokumentation

* action[0].action[8].id = "EP-3J"
* action[0].action[8].title = "Sekundaerer Endpunkt: 3 Jahre nach Entlassung"
* action[0].action[8].code[0] = $Visite#EP-3J
* action[0].action[8].code[1] = $Aktionstyp#befragung
* action[0].action[8].code[2] = $Aktionstyp#dokumentation
* action[0].action[8].relatedAction[0].actionId = "T1-ENT"
* action[0].action[8].relatedAction[0].relationship = #after-end
* action[0].action[8].relatedAction[0].offsetDuration = 3 'a'
* action[0].action[8].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"

* action[0].action[9].id = "EP-6J"
* action[0].action[9].title = "Tertiaerer Endpunkt: 6 Jahre nach Entlassung"
* action[0].action[9].code[0] = $Visite#EP-6J
* action[0].action[9].code[1] = $Aktionstyp#befragung
* action[0].action[9].code[2] = $Aktionstyp#dokumentation
* action[0].action[9].relatedAction[0].actionId = "T1-ENT"
* action[0].action[9].relatedAction[0].relationship = #after-end
* action[0].action[9].relatedAction[0].offsetDuration = 6 'a'
* action[0].action[9].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"

// ===================== Setting B: ambulant =====================
* action[1].id = "ambulant"
* action[1].prefix = "A"
* action[1].title = "Setting ambulant"
* action[1].description = "Gilt fuer Patient:innen in ambulanter Behandlung. Referenzereignis ist der Befragungsbeginn (A-T0); der Rhythmus startet direkt vierteljaehrlich und passt sich dem BMI an."
* action[1].groupingBehavior = #logical-group
* action[1].condition[0].kind = #applicability
* action[1].condition[0].expression.description = "Ambulante Behandlung"
* action[1].condition[0].expression.language = #text/fhirpath
* action[1].condition[0].expression.expression = "%encounter.class.code = 'AMB'"

* action[1].action[0].id = "A-T0"
* action[1].action[0].prefix = "T0"
* action[1].action[0].title = "Befragungsbeginn ambulant (Referenzereignis)"
* action[1].action[0].code[0] = $Visite#A-T0
* action[1].action[0].code[1] = $Aktionstyp#referenzereignis
* action[1].action[0].code[2] = $Aktionstyp#befragung
* action[1].action[0].trigger[0].type = #named-event
* action[1].action[0].trigger[0].name = "study-enrolment"
* action[1].action[0].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"

* action[1].action[1].id = "A-FU-Q"
* action[1].action[1].title = "Vierteljaehrliches Follow-up (BMI unter Studienschwelle)"
* action[1].action[1].code[0] = $Visite#A-FU-Q
* action[1].action[1].code[1] = $Aktionstyp#befragung
* action[1].action[1].condition[0].kind = #applicability
* action[1].action[1].condition[0].expression.language = #text/cql
* action[1].action[1].condition[0].expression.expression = "BMIUnterStudienschwelle"
* action[1].action[1].relatedAction[0].actionId = "A-T0"
* action[1].action[1].relatedAction[0].relationship = #after-end
* action[1].action[1].relatedAction[0].offsetDuration = 3 'mo'
* action[1].action[1].timingTiming.repeat.frequency = 1
* action[1].action[1].timingTiming.repeat.period = 3
* action[1].action[1].timingTiming.repeat.periodUnit = #mo
* action[1].action[1].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"

* action[1].action[2].id = "A-FU-J"
* action[1].action[2].title = "Jaehrliches Follow-up (BMI ueber Studienschwelle)"
* action[1].action[2].code[0] = $Visite#A-FU-J
* action[1].action[2].code[1] = $Aktionstyp#befragung
* action[1].action[2].condition[0].kind = #applicability
* action[1].action[2].condition[0].expression.language = #text/cql
* action[1].action[2].condition[0].expression.expression = "BMIUeberStudienschwelle"
* action[1].action[2].relatedAction[0].actionId = "A-T0"
* action[1].action[2].relatedAction[0].relationship = #after-end
* action[1].action[2].relatedAction[0].offsetDuration = 1 'a'
* action[1].action[2].timingTiming.repeat.frequency = 1
* action[1].action[2].timingTiming.repeat.period = 1
* action[1].action[2].timingTiming.repeat.periodUnit = #a
* action[1].action[2].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"

* action[1].action[3].id = "A-EP-18M"
* action[1].action[3].title = "Primaerer Endpunkt: 18 Monate nach Befragungsbeginn"
* action[1].action[3].code[0] = $Visite#A-EP-18M
* action[1].action[3].code[1] = $Aktionstyp#befragung
* action[1].action[3].code[2] = $Aktionstyp#dokumentation
* action[1].action[3].relatedAction[0].actionId = "A-T0"
* action[1].action[3].relatedAction[0].relationship = #after-end
* action[1].action[3].relatedAction[0].offsetDuration = 18 'mo'
* action[1].action[3].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"

* action[1].action[4].id = "A-EP-3J"
* action[1].action[4].title = "Sekundaerer Endpunkt: 3 Jahre nach Befragungsbeginn"
* action[1].action[4].code[0] = $Visite#A-EP-3J
* action[1].action[4].code[1] = $Aktionstyp#befragung
* action[1].action[4].relatedAction[0].actionId = "A-T0"
* action[1].action[4].relatedAction[0].relationship = #after-end
* action[1].action[4].relatedAction[0].offsetDuration = 3 'a'
* action[1].action[4].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"

* action[1].action[5].id = "A-EP-6J"
* action[1].action[5].title = "Tertiaerer Endpunkt: 6 Jahre nach Befragungsbeginn"
* action[1].action[5].code[0] = $Visite#A-EP-6J
* action[1].action[5].code[1] = $Aktionstyp#befragung
* action[1].action[5].relatedAction[0].actionId = "A-T0"
* action[1].action[5].relatedAction[0].relationship = #after-end
* action[1].action[5].relatedAction[0].offsetDuration = 6 'a'
* action[1].action[5].definitionCanonical = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"
