// ═══════════════════════════════════════════════════════════════════
// GENERIERT aus scripts/data/scoring-cases/promis29-cases.json durch
// scripts/generate-promis29-testscripts.py — NICHT von Hand editieren.
// Szenarien ändern = Case-Datei ändern und neu generieren.
// ═══════════════════════════════════════════════════════════════════

Instance: promis29-physical-function-floor
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — physical-function-floor"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.PhysicalFunction"
* item[=].item[+].linkId = "promis-pfa11"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13912-3 "Unable to do"
* item[=].item[+].linkId = "promis-pfa21"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13912-3 "Unable to do"
* item[=].item[+].linkId = "promis-pfa23"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13912-3 "Unable to do"
* item[=].item[+].linkId = "promis-pfa53"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13912-3 "Unable to do"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-physical-function-raw"
* item[=].item[=].answer[+].valueDecimal = 4
* item[=].item[+].linkId = "promis-29-physical-function-tscore"
* item[=].item[=].answer[+].valueDecimal = 22.5

Instance: promis29-physical-function-ceil
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — physical-function-ceil"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.PhysicalFunction"
* item[=].item[+].linkId = "promis-pfa11"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13921-4 "Without any difficulty"
* item[=].item[+].linkId = "promis-pfa21"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13921-4 "Without any difficulty"
* item[=].item[+].linkId = "promis-pfa23"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13921-4 "Without any difficulty"
* item[=].item[+].linkId = "promis-pfa53"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13921-4 "Without any difficulty"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-physical-function-raw"
* item[=].item[=].answer[+].valueDecimal = 20
* item[=].item[+].linkId = "promis-29-physical-function-tscore"
* item[=].item[=].answer[+].valueDecimal = 57.0

Instance: promis29-physical-function-asym
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — physical-function-asym"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.PhysicalFunction"
* item[=].item[+].linkId = "promis-pfa11"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13912-3 "Unable to do"
* item[=].item[+].linkId = "promis-pfa21"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13921-4 "Without any difficulty"
* item[=].item[+].linkId = "promis-pfa23"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13920-6 "With some difficulty"
* item[=].item[+].linkId = "promis-pfa53"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13919-8 "With much difficulty"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-physical-function-raw"
* item[=].item[=].answer[+].valueDecimal = 11
* item[=].item[+].linkId = "promis-29-physical-function-tscore"
* item[=].item[=].answer[+].valueDecimal = 35.6

Instance: promis29-anxiety-floor
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — anxiety-floor"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Anxiety"
* item[=].item[+].linkId = "promis-edanx01"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[+].linkId = "promis-edanx40"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[+].linkId = "promis-edanx41"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[+].linkId = "promis-edanx53"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-anxiety-raw"
* item[=].item[=].answer[+].valueDecimal = 4
* item[=].item[+].linkId = "promis-29-anxiety-tscore"
* item[=].item[=].answer[+].valueDecimal = 40.3

Instance: promis29-anxiety-ceil
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — anxiety-ceil"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Anxiety"
* item[=].item[+].linkId = "promis-edanx01"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[+].linkId = "promis-edanx40"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[+].linkId = "promis-edanx41"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[+].linkId = "promis-edanx53"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-anxiety-raw"
* item[=].item[=].answer[+].valueDecimal = 20
* item[=].item[+].linkId = "promis-29-anxiety-tscore"
* item[=].item[=].answer[+].valueDecimal = 81.6

Instance: promis29-anxiety-asym
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — anxiety-asym"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Anxiety"
* item[=].item[+].linkId = "promis-edanx01"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[+].linkId = "promis-edanx40"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[+].linkId = "promis-edanx41"
* item[=].item[=].answer[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[+].linkId = "promis-edanx53"
* item[=].item[=].answer[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-anxiety-raw"
* item[=].item[=].answer[+].valueDecimal = 11
* item[=].item[+].linkId = "promis-29-anxiety-tscore"
* item[=].item[=].answer[+].valueDecimal = 61.4

Instance: promis29-depression-floor
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — depression-floor"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Depression"
* item[=].item[+].linkId = "promis-eddep04"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[+].linkId = "promis-eddep06"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[+].linkId = "promis-eddep29"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[+].linkId = "promis-eddep41"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-depression-raw"
* item[=].item[=].answer[+].valueDecimal = 4
* item[=].item[+].linkId = "promis-29-depression-tscore"
* item[=].item[=].answer[+].valueDecimal = 41.0

Instance: promis29-depression-ceil
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — depression-ceil"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Depression"
* item[=].item[+].linkId = "promis-eddep04"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[+].linkId = "promis-eddep06"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[+].linkId = "promis-eddep29"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[+].linkId = "promis-eddep41"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-depression-raw"
* item[=].item[=].answer[+].valueDecimal = 20
* item[=].item[+].linkId = "promis-29-depression-tscore"
* item[=].item[=].answer[+].valueDecimal = 79.4

Instance: promis29-depression-asym
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — depression-asym"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Depression"
* item[=].item[+].linkId = "promis-eddep04"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[+].linkId = "promis-eddep06"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[+].linkId = "promis-eddep29"
* item[=].item[=].answer[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[+].linkId = "promis-eddep41"
* item[=].item[=].answer[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-depression-raw"
* item[=].item[=].answer[+].valueDecimal = 11
* item[=].item[+].linkId = "promis-29-depression-tscore"
* item[=].item[=].answer[+].valueDecimal = 60.5

Instance: promis29-fatigue-floor
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — fatigue-floor"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Fatigue"
* item[=].item[+].linkId = "promis-hi7"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[+].linkId = "promis-an3"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[+].linkId = "promis-fatexp41"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[+].linkId = "promis-fatexp40"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-fatigue-raw"
* item[=].item[=].answer[+].valueDecimal = 4
* item[=].item[+].linkId = "promis-29-fatigue-tscore"
* item[=].item[=].answer[+].valueDecimal = 33.7

Instance: promis29-fatigue-ceil
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — fatigue-ceil"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Fatigue"
* item[=].item[+].linkId = "promis-hi7"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[+].linkId = "promis-an3"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[+].linkId = "promis-fatexp41"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[+].linkId = "promis-fatexp40"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-fatigue-raw"
* item[=].item[=].answer[+].valueDecimal = 20
* item[=].item[+].linkId = "promis-29-fatigue-tscore"
* item[=].item[=].answer[+].valueDecimal = 75.8

Instance: promis29-fatigue-asym
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — fatigue-asym"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Fatigue"
* item[=].item[+].linkId = "promis-hi7"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[+].linkId = "promis-an3"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[+].linkId = "promis-fatexp41"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13909-9 "Somewhat"
* item[=].item[+].linkId = "promis-fatexp40"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13863-8 "A little bit"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-fatigue-raw"
* item[=].item[=].answer[+].valueDecimal = 11
* item[=].item[+].linkId = "promis-29-fatigue-tscore"
* item[=].item[=].answer[+].valueDecimal = 55.1

Instance: promis29-sleep-floor
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — sleep-floor"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Sleep"
* item[=].item[+].linkId = "promis-sleep109"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13913-1 "Very Good"
* item[=].item[+].linkId = "promis-sleep116"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[+].linkId = "promis-sleep20"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[+].linkId = "promis-sleep44"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-sleep-raw"
* item[=].item[=].answer[+].valueDecimal = 4
* item[=].item[+].linkId = "promis-29-sleep-tscore"
* item[=].item[=].answer[+].valueDecimal = 32.0

Instance: promis29-sleep-ceil
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — sleep-ceil"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Sleep"
* item[=].item[+].linkId = "promis-sleep109"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9615-1 "Very poor"
* item[=].item[+].linkId = "promis-sleep116"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[+].linkId = "promis-sleep20"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[+].linkId = "promis-sleep44"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-sleep-raw"
* item[=].item[=].answer[+].valueDecimal = 20
* item[=].item[+].linkId = "promis-29-sleep-tscore"
* item[=].item[=].answer[+].valueDecimal = 73.3

Instance: promis29-sleep-asym
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — sleep-asym"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Sleep"
* item[=].item[+].linkId = "promis-sleep109"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9615-1 "Very poor"
* item[=].item[+].linkId = "promis-sleep116"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[+].linkId = "promis-sleep20"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13909-9 "Somewhat"
* item[=].item[+].linkId = "promis-sleep44"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13863-8 "A little bit"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-sleep-raw"
* item[=].item[=].answer[+].valueDecimal = 11
* item[=].item[+].linkId = "promis-29-sleep-tscore"
* item[=].item[=].answer[+].valueDecimal = 52.4

Instance: promis29-social-floor
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — social-floor"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Social"
* item[=].item[+].linkId = "promis-srpper23-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[+].linkId = "promis-srpper11-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[+].linkId = "promis-srpper18-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[+].linkId = "promis-srpper46-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-social-raw"
* item[=].item[=].answer[+].valueDecimal = 4
* item[=].item[+].linkId = "promis-29-social-tscore"
* item[=].item[=].answer[+].valueDecimal = 27.5

Instance: promis29-social-ceil
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — social-ceil"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Social"
* item[=].item[+].linkId = "promis-srpper23-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[+].linkId = "promis-srpper11-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[+].linkId = "promis-srpper18-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[+].linkId = "promis-srpper46-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-social-raw"
* item[=].item[=].answer[+].valueDecimal = 20
* item[=].item[+].linkId = "promis-29-social-tscore"
* item[=].item[=].answer[+].valueDecimal = 64.2

Instance: promis29-social-asym
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — social-asym"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Social"
* item[=].item[+].linkId = "promis-srpper23-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[+].linkId = "promis-srpper11-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA9933-8 "Always"
* item[=].item[+].linkId = "promis-srpper18-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].item[+].linkId = "promis-srpper46-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA10066-1 "Rarely"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-social-raw"
* item[=].item[=].answer[+].valueDecimal = 13
* item[=].item[+].linkId = "promis-29-social-tscore"
* item[=].item[=].answer[+].valueDecimal = 46.2

Instance: promis29-pain-interference-floor
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — pain-interference-floor"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.PainInterference"
* item[=].item[+].linkId = "promis-painin9"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[+].linkId = "promis-painin22"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[+].linkId = "promis-painin31"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[+].linkId = "promis-painin34"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-pain-interference-raw"
* item[=].item[=].answer[+].valueDecimal = 4
* item[=].item[+].linkId = "promis-29-pain-interference-tscore"
* item[=].item[=].answer[+].valueDecimal = 41.6

Instance: promis29-pain-interference-ceil
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — pain-interference-ceil"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.PainInterference"
* item[=].item[+].linkId = "promis-painin9"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[+].linkId = "promis-painin22"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[+].linkId = "promis-painin31"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[+].linkId = "promis-painin34"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-pain-interference-raw"
* item[=].item[=].answer[+].valueDecimal = 20
* item[=].item[+].linkId = "promis-29-pain-interference-tscore"
* item[=].item[=].answer[+].valueDecimal = 75.6

Instance: promis29-pain-interference-asym
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — pain-interference-asym"
Description: "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.PainInterference"
* item[=].item[+].linkId = "promis-painin9"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6568-5 "Not at all"
* item[=].item[+].linkId = "promis-painin22"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13914-9 "Very much"
* item[=].item[+].linkId = "promis-painin31"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13909-9 "Somewhat"
* item[=].item[+].linkId = "promis-painin34"
* item[=].item[=].answer[+].valueCoding = $LNC#LA13863-8 "A little bit"
* item[+].linkId = "PROMIS-29.Scores"
* item[=].item[+].linkId = "promis-29-pain-interference-raw"
* item[=].item[=].answer[+].valueDecimal = 11
* item[=].item[+].linkId = "promis-29-pain-interference-tscore"
* item[=].item[=].answer[+].valueDecimal = 59.9

Instance: promis29-social-teilantwort-guard
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Title: "PROMIS-29 Scoring-Fixture — social-teilantwort-guard"
Description: "Count-Guard: T-Tabellen gelten nur bei vollstaendig beantworteter Short Form. Fixture des TestScript promis29-scoring; enthält die erwarteten Score-Antworten (Soll-Ergebnis eines korrekt rechnenden Form Fillers)."
Usage: #example
* language = #en
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29)
* status = #completed
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2026-10-14T08:00:00Z"
* item[+].linkId = "PROMIS-29.Social"
* item[=].item[+].linkId = "promis-srpper23-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[+].linkId = "promis-srpper11-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
* item[=].item[+].linkId = "promis-srpper18-caps"
* item[=].item[=].answer[+].valueCoding = $LNC#LA6270-8 "Never"
