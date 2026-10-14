// ═══════════════════════════════════════════════════════════════════
// GENERIERT aus scripts/data/scoring-cases/promis29-cases.json durch
// scripts/generate-promis29-testscripts.py — NICHT von Hand editieren.
// Szenarien ändern = Case-Datei ändern und neu generieren.
// ═══════════════════════════════════════════════════════════════════

Instance: promis29-scoring
InstanceOf: TestScript
Title: "PROMIS-29 Scoring — Validierung und Persistenz"
Description: "Je Szenario: QuestionnaireResponse serverseitig validieren ($validate) und anlegen. Die Fixtures sind die IG-Beispiele promis29-*. Voraussetzung am Ziel: PROMIS-29-Questionnaire geladen. Die $extract-Prüfungen synthetisiert scripts/assemble-testscript-rundir.mjs für den CI-Lauf."
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/TestScript/promis29-scoring"
* insert Version
* name = "PROMIS29ScoringTestScript"
* status = #draft
* experimental = true
* publisher = "Medizininformatik Initiative"
* metadata.capability[+].required = true
* metadata.capability[=].validated = false
* metadata.capability[=].description = "FHIR R4 Server, PROMIS-29-Questionnaire geladen"
* metadata.capability[=].capabilities = "http://hl7.org/fhir/CapabilityStatement/base"
* fixture[+].id = "qr-physical-function-floor"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-physical-function-floor)
* fixture[+].id = "qr-physical-function-ceil"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-physical-function-ceil)
* fixture[+].id = "qr-physical-function-asym"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-physical-function-asym)
* fixture[+].id = "qr-anxiety-floor"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-anxiety-floor)
* fixture[+].id = "qr-anxiety-ceil"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-anxiety-ceil)
* fixture[+].id = "qr-anxiety-asym"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-anxiety-asym)
* fixture[+].id = "qr-depression-floor"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-depression-floor)
* fixture[+].id = "qr-depression-ceil"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-depression-ceil)
* fixture[+].id = "qr-depression-asym"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-depression-asym)
* fixture[+].id = "qr-fatigue-floor"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-fatigue-floor)
* fixture[+].id = "qr-fatigue-ceil"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-fatigue-ceil)
* fixture[+].id = "qr-fatigue-asym"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-fatigue-asym)
* fixture[+].id = "qr-sleep-floor"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-sleep-floor)
* fixture[+].id = "qr-sleep-ceil"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-sleep-ceil)
* fixture[+].id = "qr-sleep-asym"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-sleep-asym)
* fixture[+].id = "qr-social-floor"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-social-floor)
* fixture[+].id = "qr-social-ceil"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-social-ceil)
* fixture[+].id = "qr-social-asym"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-social-asym)
* fixture[+].id = "qr-pain-interference-floor"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-pain-interference-floor)
* fixture[+].id = "qr-pain-interference-ceil"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-pain-interference-ceil)
* fixture[+].id = "qr-pain-interference-asym"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-pain-interference-asym)
* fixture[+].id = "qr-social-teilantwort-guard"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(QuestionnaireResponse/promis29-social-teilantwort-guard)
* test[+].name = "case-physical-function-floor"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-physical-function-floor"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-physical-function-floor"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-physical-function-ceil"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-physical-function-ceil"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-physical-function-ceil"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-physical-function-asym"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-physical-function-asym"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-physical-function-asym"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-anxiety-floor"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-anxiety-floor"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-anxiety-floor"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-anxiety-ceil"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-anxiety-ceil"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-anxiety-ceil"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-anxiety-asym"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-anxiety-asym"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-anxiety-asym"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-depression-floor"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-depression-floor"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-depression-floor"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-depression-ceil"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-depression-ceil"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-depression-ceil"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-depression-asym"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-depression-asym"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-depression-asym"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-fatigue-floor"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-fatigue-floor"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-fatigue-floor"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-fatigue-ceil"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-fatigue-ceil"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-fatigue-ceil"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-fatigue-asym"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-fatigue-asym"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-fatigue-asym"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-sleep-floor"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-sleep-floor"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-sleep-floor"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-sleep-ceil"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-sleep-ceil"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-sleep-ceil"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-sleep-asym"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-sleep-asym"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-sleep-asym"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-social-floor"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-social-floor"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-social-floor"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-social-ceil"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-social-ceil"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-social-ceil"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-social-asym"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-social-asym"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-social-asym"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-pain-interference-floor"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-pain-interference-floor"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-pain-interference-floor"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-pain-interference-ceil"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-pain-interference-ceil"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-pain-interference-ceil"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-pain-interference-asym"
* test[=].description = "Raw: offizielle Antwortwerte (HealthMeasures/LOINC); T: Adult Profile Scoring Manual v2.1-Appendix"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-pain-interference-asym"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-pain-interference-asym"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[+].name = "case-social-teilantwort-guard"
* test[=].description = "Count-Guard: T-Tabellen gelten nur bei vollstaendig beantworteter Short Form"
* test[=].action[+].operation.method = #post
* test[=].action[=].operation.url = "/QuestionnaireResponse/$validate"
* test[=].action[=].operation.sourceId = "qr-social-teilantwort-guard"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "keine Validierungsfehler"
* test[=].action[=].assert.expression = "OperationOutcome.issue.where(severity = 'error')"
* test[=].action[=].assert.operator = #empty
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #QuestionnaireResponse
* test[=].action[=].operation.sourceId = "qr-social-teilantwort-guard"
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "angelegt"
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false

Instance: promis29-terminology
InstanceOf: TestScript
Title: "PROMIS-29 Scoring — Terminologie der Antwortoptionen"
Description: "Validiert jedes in den Szenarien verwendete Coding nativ per CodeSystem/$validate-code (Code UND Display) gegen LOINC. Voraussetzung am Ziel: LOINC-fähige Terminologie. displayLanguage=de folgt mit dem geplanten CodeSystem-Supplement (HDB-1008)."
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/TestScript/promis29-terminology"
* insert Version
* name = "PROMIS29TerminologyTestScript"
* status = #draft
* experimental = true
* publisher = "Medizininformatik Initiative"
* metadata.capability[+].required = true
* metadata.capability[=].validated = false
* metadata.capability[=].description = "FHIR R4 Terminologieserver mit LOINC"
* metadata.capability[=].capabilities = "http://hl7.org/fhir/CapabilityStatement/base"
* test[+].name = "terminology-displays"
* test[=].description = "Antwort-Codings (Code+Display) gegen LOINC"
* test[=].action[+].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13912-3&display=Unable to do"
* test[=].action[+].assert.description = "LA13912-3 (Unable to do) gültig"
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'result').valueBoolean"
* test[=].action[=].assert.value = "true"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13921-4&display=Without any difficulty"
* test[=].action[+].assert.description = "LA13921-4 (Without any difficulty) gültig"
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'result').valueBoolean"
* test[=].action[=].assert.value = "true"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13920-6&display=With some difficulty"
* test[=].action[+].assert.description = "LA13920-6 (With some difficulty) gültig"
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'result').valueBoolean"
* test[=].action[=].assert.value = "true"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13919-8&display=With much difficulty"
* test[=].action[+].assert.description = "LA13919-8 (With much difficulty) gültig"
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'result').valueBoolean"
* test[=].action[=].assert.value = "true"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code=LA6270-8&display=Never"
* test[=].action[+].assert.description = "LA6270-8 (Never) gültig"
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'result').valueBoolean"
* test[=].action[=].assert.value = "true"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code=LA9933-8&display=Always"
* test[=].action[+].assert.description = "LA9933-8 (Always) gültig"
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'result').valueBoolean"
* test[=].action[=].assert.value = "true"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code=LA10082-8&display=Sometimes"
* test[=].action[+].assert.description = "LA10082-8 (Sometimes) gültig"
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'result').valueBoolean"
* test[=].action[=].assert.value = "true"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code=LA10066-1&display=Rarely"
* test[=].action[+].assert.description = "LA10066-1 (Rarely) gültig"
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'result').valueBoolean"
* test[=].action[=].assert.value = "true"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code=LA6568-5&display=Not at all"
* test[=].action[+].assert.description = "LA6568-5 (Not at all) gültig"
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'result').valueBoolean"
* test[=].action[=].assert.value = "true"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13914-9&display=Very much"
* test[=].action[+].assert.description = "LA13914-9 (Very much) gültig"
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'result').valueBoolean"
* test[=].action[=].assert.value = "true"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13909-9&display=Somewhat"
* test[=].action[+].assert.description = "LA13909-9 (Somewhat) gültig"
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'result').valueBoolean"
* test[=].action[=].assert.value = "true"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13863-8&display=A little bit"
* test[=].action[+].assert.description = "LA13863-8 (A little bit) gültig"
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'result').valueBoolean"
* test[=].action[=].assert.value = "true"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code=LA13913-1&display=Very Good"
* test[=].action[+].assert.description = "LA13913-1 (Very Good) gültig"
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'result').valueBoolean"
* test[=].action[=].assert.value = "true"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/CodeSystem/$validate-code?url=http://loinc.org&code=LA9615-1&display=Very poor"
* test[=].action[+].assert.description = "LA9615-1 (Very poor) gültig"
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'result').valueBoolean"
* test[=].action[=].assert.value = "true"
* test[=].action[=].assert.warningOnly = false
