// ABQ — Adherence Barriers Questionnaire (Müller S, Kohlmann T, Wilke T 2015).
// Erfasst Barrieren der Medikamentenadhärenz.
//
// METADATA-ONLY (Tier B): Eine Veröffentlichung der konkreten Items einschließlich
// Antwortmöglichkeiten ist nicht erlaubt. Dieser Questionnaire bildet daher NUR Struktur,
// Typen und Wertebereiche ab; die Item-Texte sind neutrale Labels. Die wortgleiche Vollversion
// wird ausschließlich über den zugriffsbeschränkten Form Server verteilt, nie im Package.
// Jedes Zentrum benötigt eine eigene Lizenzvereinbarung; wissenschaftliche Nutzung ohne Pharma
// ist kostenfrei.
//
// Struktur (Quelle: PCOR-MII Item Level Dictionary, Blatt NTx, Variablen ABQ_01-ABQ_16):
// 16 Items, 4-stufige Antwortskala (neutrales CodeSystem mii-cs-pro-abq-answers, itemWeight 1-4).
//
// CROSS-QUESTIONNAIRE-BEDINGUNG (nur dokumentiert, NICHT als enableWhen modelliert): Laut
// Dictionary wird der ABQ nur erhoben, wenn BAASIS1A = ja ODER BAASIS2 = ja ODER BAASIS3 = ja
// ODER BAASIS4 = ja (für ABQ_01 nennt das Dictionary nur BAASIS1A = ja; vermutlich
// Dictionary-Inkonsistenz, zu klären). Die Steuerung liegt im aufrufenden Prozess.
//
// SCORING: Summe der 16 Items, Bereich 16-64. Höhere Werte = mehr Adhärenzbarrieren (laut
// Auftrag). OFFEN: Das Dictionary führt 1 = erste Antwortstufe, 4 = letzte Stufe; ob die
// itemWeights 1-4 in dieser Richtung die Barrierenstärke abbilden, ist NICHT gegen das
// Originalinstrument verifiziert und vor produktiver Nutzung zu prüfen. Keine Cut-offs.
//
// TERMINOLOGIE: kein LOINC/SNOMED-Code für das Instrument verifiziert; nur MII-Katalogcode.

Instance: mii-qst-pro-abq
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO ABQ"
Description: "ABQ — Adherence Barriers Questionnaire (Müller, Kohlmann, Wilke 2015). Metadata-only (Tier B): Struktur ohne Item-Wortlaut."
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-abq"
* status = #active
* experimental = true
* language = #de
* title = "ABQ (metadata-only)"
* code[+] = $mii-cs-pro-questionnaire-catalogue#abq "ABQ (Adherence Barriers Questionnaire)"

* copyright = "ABQ © Müller S, Kohlmann T, Wilke T 2015 (Adherence Barriers Questionnaire). Lizenz-Status: Tier B (metadata-only). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt. Wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung."

* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[collectable].valueBoolean = false
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = false

// Root variable: Summe der 16 ABQ-Items (je 1-4, Bereich 16-64)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "abqSum"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^abq-q(0[1-9]|1[0-6])$')).answer.value.weight().sum()"

* item[0].linkId = "abq-q01"
* item[0].type = #choice
* item[0].text = "ABQ Item 01 (Stufe 1-4)"
* item[0].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[1].linkId = "abq-q02"
* item[1].type = #choice
* item[1].text = "ABQ Item 02 (Stufe 1-4)"
* item[1].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[2].linkId = "abq-q03"
* item[2].type = #choice
* item[2].text = "ABQ Item 03 (Stufe 1-4)"
* item[2].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[3].linkId = "abq-q04"
* item[3].type = #choice
* item[3].text = "ABQ Item 04 (Stufe 1-4)"
* item[3].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[4].linkId = "abq-q05"
* item[4].type = #choice
* item[4].text = "ABQ Item 05 (Stufe 1-4)"
* item[4].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[5].linkId = "abq-q06"
* item[5].type = #choice
* item[5].text = "ABQ Item 06 (Stufe 1-4)"
* item[5].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[6].linkId = "abq-q07"
* item[6].type = #choice
* item[6].text = "ABQ Item 07 (Stufe 1-4)"
* item[6].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[7].linkId = "abq-q08"
* item[7].type = #choice
* item[7].text = "ABQ Item 08 (Stufe 1-4)"
* item[7].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[8].linkId = "abq-q09"
* item[8].type = #choice
* item[8].text = "ABQ Item 09 (Stufe 1-4)"
* item[8].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[9].linkId = "abq-q10"
* item[9].type = #choice
* item[9].text = "ABQ Item 10 (Stufe 1-4)"
* item[9].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[10].linkId = "abq-q11"
* item[10].type = #choice
* item[10].text = "ABQ Item 11 (Stufe 1-4)"
* item[10].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[11].linkId = "abq-q12"
* item[11].type = #choice
* item[11].text = "ABQ Item 12 (Stufe 1-4)"
* item[11].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[12].linkId = "abq-q13"
* item[12].type = #choice
* item[12].text = "ABQ Item 13 (Stufe 1-4)"
* item[12].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[13].linkId = "abq-q14"
* item[13].type = #choice
* item[13].text = "ABQ Item 14 (Stufe 1-4)"
* item[13].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[14].linkId = "abq-q15"
* item[14].type = #choice
* item[14].text = "ABQ Item 15 (Stufe 1-4)"
* item[14].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

* item[15].linkId = "abq-q16"
* item[15].type = #choice
* item[15].text = "ABQ Item 16 (Stufe 1-4)"
* item[15].answerValueSet = Canonical(MII_VS_PRO_ABQ_Answers)

// Score-Item: ABQ-Summenwert (16-64)
* item[16].linkId = "abq-score-total"
* item[16].type = #decimal
* item[16].prefix = "Score"
* item[16].code = $mii-cs-pro-score-catalogue#abq-total "ABQ Total Score (16-64)"
* item[16].readOnly = true
* item[16].extension[0].url = $sdc-questionnaire-calculated-expression
* item[16].extension[0].valueExpression.name = "Scoreberechnung"
* item[16].extension[0].valueExpression.language = #text/fhirpath
* item[16].extension[0].valueExpression.expression = "%abqSum"
* item[16].text = "ABQ Summenwert (16-64)"
* item[16].extension[1].url = $sdc-questionnaire-observation-extract
* item[16].extension[1].valueBoolean = true
* item[16].extension[2].url = $hl7-questionnaire-unit
* item[16].extension[2].valueCoding.system = $UCUM
* item[16].extension[2].valueCoding.code = #{score}
* item[16].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[16].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[16].extension[3].valueCodeableConcept.coding.code = #survey
