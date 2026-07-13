// PHQ-9 linkId migration: pre-2026.5.0 scheme (phq-phq9-q01…q10) → shared
// PHQ-D block namespace (phq-phq2a…i + phq-phq9-difficulty) introduced in 2026.5.0.
// BREAKING between released versions 2026.4.x and 2026.5.0 — this ConceptMap lets
// consumers migrate existing PHQ-9 QuestionnaireResponse item.linkId values.

Instance: mii-cm-pro-phq-9-linkid-migration
InstanceOf: ConceptMap
Title: "MII CM PRO PHQ-9 linkId Migration (2026.4.x → 2026.5.0)"
Description: "Maps PHQ-9 item linkIds from the pre-2026.5.0 scheme (phq-phq9-q01…q10) to the PHQ-D block namespace (phq-phq2a…i and phq-phq9-difficulty) introduced in 2026.5.0. Apply to existing PHQ-9 QuestionnaireResponses so their item.linkId values match the current Questionnaire. The calculated items phq-phq9-score-total and phq-phq9-promis-tscore were not renamed."
Usage: #definition
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ConceptMap/mii-cm-pro-phq-9-linkid-migration"
* status = #active
* experimental = false
* sourceCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9"
* targetCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9"

* group[+]
// 9 symptom items: phq-phq9-q0N → phq-phq2X
* group[=].element[+].code = #phq-phq9-q01
* group[=].element[=].target.code = #phq-phq2a
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #phq-phq9-q02
* group[=].element[=].target.code = #phq-phq2b
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #phq-phq9-q03
* group[=].element[=].target.code = #phq-phq2c
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #phq-phq9-q04
* group[=].element[=].target.code = #phq-phq2d
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #phq-phq9-q05
* group[=].element[=].target.code = #phq-phq2e
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #phq-phq9-q06
* group[=].element[=].target.code = #phq-phq2f
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #phq-phq9-q07
* group[=].element[=].target.code = #phq-phq2g
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #phq-phq9-q08
* group[=].element[=].target.code = #phq-phq2h
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #phq-phq9-q09
* group[=].element[=].target.code = #phq-phq2i
* group[=].element[=].target.equivalence = #equal
// functional difficulty item: phq-phq9-q10 → phq-phq9-difficulty
* group[=].element[+].code = #phq-phq9-q10
* group[=].element[=].target.code = #phq-phq9-difficulty
* group[=].element[=].target.equivalence = #equal
