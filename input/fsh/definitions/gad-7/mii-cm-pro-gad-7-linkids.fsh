// GAD-7: Abbildung der üblichen Instrumenten-Nummerierung auf den PHQ-D-Block-Namespace.
//
// Der GAD-7 ist in Literatur, Fremdsystemen und Papierfassungen durchgängig als "Item 1" bis
// "Item 7" bekannt. Im MII-PRO-Modul tragen die Items dagegen die kanonischen linkIds des
// PHQ-D-Blocks (phq-phq5a…g), damit dieselbe Frage instrumentenübergreifend denselben linkId
// trägt — die GAD-Items 1 und 2 bilden zugleich den GAD-2 und gehen in den PHQ-4 ein.
//
// ABGRENZUNG: Dies ist KEINE Migrations-ConceptMap. Der GAD-7 wurde nie mit einem anderen
// Schema veröffentlicht; das Schema phq-gad7-q01…q07 existierte nur auf einem ungemergten
// Entwicklungsbranch. Diese Map ist eine Lesehilfe für Implementierende, die Daten aus
// Fremdsystemen mit der konventionellen Nummerierung übernehmen.

Instance: mii-cm-pro-gad-7-linkids
InstanceOf: ConceptMap
Title: "MII CM PRO GAD-7 Item-Nummerierung → PHQ-D-linkIds"
Description: "Bildet die übliche GAD-7-Itemnummerierung (Item 1–7, wie publiziert und in Fremdsystemen verbreitet) auf die kanonischen linkIds des PHQ-D-Block-Namespace (phq-phq5a…phq-phq5g) ab. Lesehilfe für die Übernahme von Daten aus Systemen, die die konventionelle Nummerierung verwenden — keine Migration einer veröffentlichten Fassung."
Usage: #definition
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ConceptMap/mii-cm-pro-gad-7-linkids"
* status = #active
* experimental = false
// Kein source/target gesetzt: ConceptMap.source[x] verlangt laut FHIR R4 eine URI oder eine
// Canonical auf ein ValueSet. Die hier abgebildeten "Codes" sind Questionnaire-linkIds, fuer
// die es kein ValueSet gibt. Der Geltungsbereich steht in der Description.

* group[+]
* group[=].element[+].code = #gad7-q01
* group[=].element[=].display = "GAD-7 Item 1 — Nervousness / anxiety"
* group[=].element[=].target.code = #phq-phq5a
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #gad7-q02
* group[=].element[=].display = "GAD-7 Item 2 — Uncontrollable worrying"
* group[=].element[=].target.code = #phq-phq5b
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #gad7-q03
* group[=].element[=].display = "GAD-7 Item 3 — Excessive worrying"
* group[=].element[=].target.code = #phq-phq5c
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #gad7-q04
* group[=].element[=].display = "GAD-7 Item 4 — Trouble relaxing"
* group[=].element[=].target.code = #phq-phq5d
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #gad7-q05
* group[=].element[=].display = "GAD-7 Item 5 — Restlessness"
* group[=].element[=].target.code = #phq-phq5e
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #gad7-q06
* group[=].element[=].display = "GAD-7 Item 6 — Irritability"
* group[=].element[=].target.code = #phq-phq5f
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #gad7-q07
* group[=].element[=].display = "GAD-7 Item 7 — Fear of something awful"
* group[=].element[=].target.code = #phq-phq5g
* group[=].element[=].target.equivalence = #equal
