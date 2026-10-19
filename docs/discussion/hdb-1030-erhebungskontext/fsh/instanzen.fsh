// ---------------- Organisationen ----------------
Instance: pcor-mii-org-charite
InstanceOf: Organization
Usage: #example
* insert Testdaten
* name = "Charité – Universitätsmedizin Berlin"
* identifier[0].system = "https://www.medizininformatik-initiative.de/fhir/sid/organisation"
* identifier[0].value = "charite"

Instance: pcor-mii-org-ukhd
InstanceOf: Organization
Usage: #example
* insert Testdaten
* name = "Universitätsklinikum Heidelberg"

Instance: pcor-mii-loc-ukhd
InstanceOf: Location
Usage: #example
* insert Testdaten
* name = "Universitätsklinikum Heidelberg, Klinik für Allgemeine Innere Medizin und Psychosomatik (Studienzentrum)"
* managingOrganization = Reference(pcor-mii-org-ukhd)

Instance: pcor-mii-pi-friederich
InstanceOf: Practitioner
Usage: #example
* insert Testdaten
* name[0].family = "Friederich"
* name[0].given = "Hans-Christoph"
* name[0].prefix = "Prof. Dr. med."

// ---------------- Studie ----------------
Instance: pcor-mii-an
InstanceOf: MII_PR_Studie_Studie_MitProtokoll
Usage: #example
Title: "PCOR-MII-AN (ResearchStudy)"
Description: "PCOR-MII-AN nach DRKS00038048; Metadaten aus dem Registereintrag, Protokollreferenz auf den Erhebungsplan."
* insert Testdaten
* extension[Akronym].valueString = "PCOR-MII-AN"
* extension[Ethikvotum].extension[status].valueString = "Zustimmende Bewertung (2025-08-20)"
* extension[Ethikvotum].extension[kommission].valueString = "Ethikkommission der Medizinischen Fakultät Heidelberg"
* extension[Ethikvotum].extension[ethiknummer].valueString = "S-334/2025"
* extension[Finanzierung].valueString = "Bundesministerium für Forschung, Technologie und Raumfahrt (BMFTR), Förderkennzeichen 01ZZ2321A-K"
* identifier[0].system = "https://drks.de"
* identifier[0].value = "DRKS00038048"
* identifier[1].type.text = "Förderkennzeichen"
* identifier[1].system = "https://foerderportal.bund.de/foekat"
* identifier[1].value = "01ZZ2321A-K"
* title = "PCOR-MII – Patient-Centered Outcomes Research als Teil der Medizininformatik-Initiative (MII) – Anorexia nervosa"
* protocol = Reference(pcor-mii-an-studienprotokoll)
* status = #active
* category.text = "Nicht-interventionelle, prospektive Längsschnittstudie (Gesundheitssystemforschung)"
* condition[0] = $icd10gm#F50.00
* condition[1] = $icd10gm#F50.01
* condition[2] = $icd10gm#F50.08
* condition[3] = $icd10gm#F50.1
* period.start = "2025-09-01"
* period.end = "2031-09-01"
* sponsor = Reference(pcor-mii-org-charite)
* site[0] = Reference(pcor-mii-loc-ukhd)
* principalInvestigator = Reference(pcor-mii-pi-friederich)
* arm[0].name = "Einzelarm (nicht-interventionell)"
* arm[0].description = "Prospektive Daten volljähriger Patient:innen mit F50.00/F50.01/F50.08/F50.1 in ambulanter, teilstationärer oder stationärer Behandlung."
* relatedArtifact[0].type = #documentation
* relatedArtifact[0].url = "https://drks.de/search/de/trial/DRKS00038048"

// ---------------- Patient, Consent, Proband:in ----------------
Instance: pcor-mii-an-patient-001
InstanceOf: Patient
Usage: #example
* insert Testdaten
* identifier[0].system = "https://pcor-mii.de/fhir/sid/patient"
* identifier[0].value = "P-0001"
* gender = #female
* birthDate = "2001-04"

Instance: pcor-mii-an-consent-001
InstanceOf: Consent
Usage: #example
* insert Testdaten
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#research
* category[0] = $loinc#59284-0
* patient = Reference(pcor-mii-an-patient-001)
* dateTime = "2026-01-12"
* policy[0].uri = "urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791"

Instance: pcor-mii-an-proband-001
InstanceOf: MII_PR_Studie_Proband
Usage: #example
Title: "Proband:in 001 in PCOR-MII-AN"
Description: "Einschluss bei stationärer Aufnahme am 2026-01-12 (Indexdatum = period.start)."
* insert Testdaten
* identifier[subjectIdentificationCode].type = $v2-0203#ANON
* identifier[subjectIdentificationCode].system = "https://pcor-mii.de/fhir/sid/proband"
* identifier[subjectIdentificationCode].value = "AN-HD-0042"
* status = #on-study
* period.start = "2026-01-12"
* study = Reference(pcor-mii-an)
* individual = Reference(pcor-mii-an-patient-001)
* consent = Reference(pcor-mii-an-consent-001)

// ---------------- Fall (stationaerer Aufenthalt) ----------------
Instance: pcor-mii-an-encounter-001
InstanceOf: Encounter
Usage: #example
* insert Testdaten
* status = #finished
* class = $v3-ActCode#IMP
* subject = Reference(pcor-mii-an-patient-001)
* period.start = "2026-01-12"
* period.end = "2026-03-06"

// ---------------- Probandenplan (CarePlan) ----------------
Instance: pcor-mii-an-probandenplan-001
InstanceOf: MII_PR_Studie_Probandenplan
Usage: #example
Title: "Probandenplan 001 (PCOR-MII-AN, stationaeres Setting)"
Description: "Instanziierung des Erhebungsplans fuer Proband:in 001. Aufnahme 2026-01-12, Entlassung 2026-03-06 (Referenzereignis). Soll-Fenster der Folgezeitpunkte sind aus den Offsets der PlanDefinition berechnet; FU-3M wurde drei Tage nach Soll ausgefuellt."
* insert Testdaten
* instantiatesCanonical = "https://pcor-mii.de/fhir/PlanDefinition/pcor-mii-an-studienprotokoll|0.1.0"
* status = #active
* intent = #plan
* title = "PCOR-MII-AN Erhebungsplan, Proband:in AN-HD-0042"
* subject = Reference(pcor-mii-an-patient-001)
* period.start = "2026-01-12"
* supportingInfo[0] = Reference(pcor-mii-an-proband-001)
* supportingInfo[1] = Reference(pcor-mii-an-encounter-001)
// T0
* activity[0].detail.kind = #ServiceRequest
* activity[0].detail.code = $Visite#T0-AUF
* activity[0].detail.status = #completed
* activity[0].detail.scheduledPeriod.start = "2026-01-12"
* activity[0].detail.scheduledPeriod.end = "2026-01-14"
* activity[0].detail.instantiatesCanonical[0] = "https://pcor-mii.de/fhir/Questionnaire/pcor-mii-an-basisdatensatz"
* activity[0].detail.instantiatesCanonical[1] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9|2027.0.0-ballot.1"
// T1 Referenzereignis
* activity[1].detail.kind = #ServiceRequest
* activity[1].detail.code = $Visite#T1-ENT
* activity[1].detail.status = #completed
* activity[1].detail.scheduledPeriod.start = "2026-03-06"
* activity[1].detail.scheduledPeriod.end = "2026-03-06"
* activity[1].outcomeReference[0] = Reference(pcor-mii-an-qr-t1-phq9-001)
// FU-2W: 2026-03-20
* activity[2].detail.kind = #ServiceRequest
* activity[2].detail.code = $Visite#FU-2W
* activity[2].detail.status = #completed
* activity[2].detail.scheduledPeriod.start = "2026-03-18"
* activity[2].detail.scheduledPeriod.end = "2026-03-22"
// FU-4W: 2026-04-03
* activity[3].detail.kind = #ServiceRequest
* activity[3].detail.code = $Visite#FU-4W
* activity[3].detail.status = #completed
* activity[3].detail.scheduledPeriod.start = "2026-04-01"
* activity[3].detail.scheduledPeriod.end = "2026-04-05"
// FU-3M: 2026-06-06, ausgefuellt 2026-06-09
* activity[4].detail.kind = #ServiceRequest
* activity[4].detail.code = $Visite#FU-3M
* activity[4].detail.status = #completed
* activity[4].detail.scheduledPeriod.start = "2026-05-30"
* activity[4].detail.scheduledPeriod.end = "2026-06-13"
* activity[4].detail.instantiatesCanonical[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9|2027.0.0-ballot.1"
* activity[4].outcomeReference[0] = Reference(pcor-mii-an-qr-fu3m-phq9-001)
// FU-Q: naechster Termin 2026-09-06 (BMI unter Schwelle)
* activity[5].detail.kind = #ServiceRequest
* activity[5].detail.code = $Visite#FU-Q
* activity[5].detail.status = #scheduled
* activity[5].detail.description = "BMI zum FU-3M unter Studienschwelle, daher vierteljaehrlicher Rhythmus"
* activity[5].detail.scheduledTiming.repeat.boundsPeriod.start = "2026-09-06"
* activity[5].detail.scheduledTiming.repeat.boundsPeriod.end = "2027-09-06"
* activity[5].detail.scheduledTiming.repeat.frequency = 1
* activity[5].detail.scheduledTiming.repeat.period = 3
* activity[5].detail.scheduledTiming.repeat.periodUnit = #mo
// Endpunkte
* activity[6].detail.kind = #ServiceRequest
* activity[6].detail.code = $Visite#EP-18M
* activity[6].detail.status = #not-started
* activity[6].detail.scheduledPeriod.start = "2027-08-06"
* activity[6].detail.scheduledPeriod.end = "2027-10-06"
* activity[7].detail.kind = #ServiceRequest
* activity[7].detail.code = $Visite#EP-3J
* activity[7].detail.status = #not-started
* activity[7].detail.scheduledPeriod.start = "2029-02-06"
* activity[7].detail.scheduledPeriod.end = "2029-04-06"
* activity[8].detail.kind = #ServiceRequest
* activity[8].detail.code = $Visite#EP-6J
* activity[8].detail.status = #not-started
* activity[8].detail.scheduledPeriod.start = "2032-02-06"
* activity[8].detail.scheduledPeriod.end = "2032-04-06"

// ---------------- QuestionnaireResponses ----------------
// Modus b) Protokoll: Studienreferenz + Visitencode, Typ/Datum ableitbar
Instance: pcor-mii-an-qr-fu3m-phq9-001
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "PHQ-9 zu FU-3M (Protokollmodus)"
Description: "Erhebungskontext im Protokollmodus: protocol + protocolPosition, basedOn auf den Probandenplan. Trigger-Typ (Follow-up) und Soll-Datum ergeben sich aus der PlanDefinition, das Ist-Datum ist authored (3 Tage nach Soll)."
* insert Testdaten
* extension[MII_EX_PRO_Erhebungskontext].extension[protocol].valueCanonical = "https://pcor-mii.de/fhir/PlanDefinition/pcor-mii-an-studienprotokoll|0.1.0"
* extension[MII_EX_PRO_Erhebungskontext].extension[protocolPosition].valueCoding = $Visite#FU-3M
* extension[MII_EX_PRO_Erhebungskontext].extension[triggerType].valueCodeableConcept = $Trigger#follow-up
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9|2027.0.0-ballot.1"
* status = #completed
* subject = Reference(pcor-mii-an-patient-001)
* basedOn = Reference(pcor-mii-an-probandenplan-001)
* authored = "2026-06-09T10:15:00+02:00"
* source = Reference(pcor-mii-an-patient-001)
* item[0].linkId = "phq-phq2a"
* item[0].answer[0].valueCoding = $loinc#LA6569-3 "Several days"
* item[1].linkId = "phq-phq2b"
* item[1].answer[0].valueCoding = $loinc#LA6568-5 "Not at all"

// Modus a) Routine/Referenzereignis: Typ + Datum, hier bei Entlassung
Instance: pcor-mii-an-qr-t1-phq9-001
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "PHQ-9 zur Entlassung (Routinemodus)"
Description: "Erhebungskontext im Routinemodus: triggerType = entlassung, triggerDate = Entlassdatum; zusaetzlich Protokollposition T1-ENT, weil die Entlassung hier zugleich das Referenzereignis der Studie ist. Zeigt, dass beide Modi kombinierbar sind."
* insert Testdaten
* extension[MII_EX_PRO_Erhebungskontext].extension[triggerType].valueCodeableConcept = $Trigger#entlassung
* extension[MII_EX_PRO_Erhebungskontext].extension[triggerDate].valueDate = "2026-03-06"
* extension[MII_EX_PRO_Erhebungskontext].extension[protocol].valueCanonical = "https://pcor-mii.de/fhir/PlanDefinition/pcor-mii-an-studienprotokoll|0.1.0"
* extension[MII_EX_PRO_Erhebungskontext].extension[protocolPosition].valueCoding = $Visite#T1-ENT
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9|2027.0.0-ballot.1"
* status = #completed
* subject = Reference(pcor-mii-an-patient-001)
* encounter = Reference(pcor-mii-an-encounter-001)
* basedOn = Reference(pcor-mii-an-probandenplan-001)
* authored = "2026-03-06T09:00:00+01:00"
* item[0].linkId = "phq-phq2a"
* item[0].answer[0].valueCoding = $loinc#LA6570-1 "More than half the days"
* item[1].linkId = "phq-phq2b"
* item[1].answer[0].valueCoding = $loinc#LA6569-3 "Several days"
