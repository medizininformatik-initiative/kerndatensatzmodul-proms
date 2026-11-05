// MTSOSD-R59 — Memorial-/Kuleuven-Symptomfragebogen zur Symptomlast (59 Symptome + 3 Freitext).
// GENERIERT durch scripts/generate-mtsosd-r59-stub.py — nicht von Hand ändern.
//
// METADATA-ONLY (Tier B): © KU Leuven (Kontakt: joke.willems@kuleuven.be). Eine Veröffentlichung
// der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt. Dieser Questionnaire
// bildet daher NUR Struktur, Typen, Wertebereiche und Bedingungen ab; die Item-Texte sind
// neutrale Labels (Symptom NN — Auftreten (0-4) / Belastung). Die wortgleiche Vollversion wird
// ausschließlich über den zugriffsbeschränkten Form Server verteilt, nie im Package. Jedes
// Zentrum benötigt eine eigene Lizenzvereinbarung; wissenschaftliche Nutzung ohne Pharma ist
// kostenfrei.
//
// Struktur: Auftreten je Symptom 0-4 (Single Answer, neutrales CodeSystem
// mii-cs-pro-mtsosd-r59-occurrence, itemWeight 0-4). Belastung ("-distress"): nur anzeigen,
// wenn Auftreten != Stufe 0. Zeitraum laut Dictionary: letzte 4 Wochen.
// Symptom 27 ist geschlechtsspezifisch (q27-male / q27-female). Die Steuerung über das
// Geschlecht (Q_SEX im Dictionary) ist eine Cross-Questionnaire-Bedingung und hier NICHT als
// enableWhen modelliert, sondern vom aufrufenden Prozess zu leisten.
// Symptome 60-62 sind Freitext (type text); ihre Belastung erscheint, sobald ein Text vorliegt
// (das Dictionary formuliert die Bedingung dort unscharf als "= 0").
//
// OFFEN: Die Stufenzahl der visuellen Belastungsskala ist im Dictionary NICHT dokumentiert
// (leeres Bild-Blatt); zu klären. Die Belastung ist daher als integer ohne min/max modelliert.
//
// SCORING: Es wird kein Score ausgeliefert. Summen über Auftreten bzw. Belastung existieren in
// der Literatur, ihre Definition ist hier nicht verifiziert (nur dokumentiert, calculatable = false).
//
// TERMINOLOGIE: kein LOINC/SNOMED-Code für das Instrument verifiziert; nur MII-Katalogcode.

Instance: mii-qst-pro-mtsosd-r59
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO MTSOSD-R59"
Description: "MTSOSD-R59 — Symptomfragebogen mit 59 Symptomen plus 3 Freitext-Symptomen (KU Leuven). Metadata-only (Tier B): Struktur ohne Item-Wortlaut."
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-mtsosd-r59"
* status = #active
* experimental = true
* language = #de
* title = "MTSOSD-R59 (metadata-only)"
* code[+] = $mii-cs-pro-questionnaire-catalogue#mtsosd-r59 "MTSOSD-R59 (Symptomfragebogen, 59 Symptome)"

* copyright = "MTSOSD-R59 © KU Leuven. Lizenz-Status: Tier B (metadata-only). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt. Wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Kontakt: joke.willems@kuleuven.be"

* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[collectable].valueBoolean = false
* extension[capabilities].extension[calculatable].valueBoolean = false
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = false

// Symptom 01
* item[0].linkId = "mtsosd-r59-q01"
* item[0].type = #choice
* item[0].text = "Symptom 01 — Auftreten (0-4)"
* item[0].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[1].linkId = "mtsosd-r59-q01-distress"
* item[1].type = #integer
* item[1].text = "Symptom 01 — Belastung"
* item[1].enableWhen[0].question = "mtsosd-r59-q01"
* item[1].enableWhen[0].operator = #!=
* item[1].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 02
* item[2].linkId = "mtsosd-r59-q02"
* item[2].type = #choice
* item[2].text = "Symptom 02 — Auftreten (0-4)"
* item[2].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[3].linkId = "mtsosd-r59-q02-distress"
* item[3].type = #integer
* item[3].text = "Symptom 02 — Belastung"
* item[3].enableWhen[0].question = "mtsosd-r59-q02"
* item[3].enableWhen[0].operator = #!=
* item[3].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 03
* item[4].linkId = "mtsosd-r59-q03"
* item[4].type = #choice
* item[4].text = "Symptom 03 — Auftreten (0-4)"
* item[4].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[5].linkId = "mtsosd-r59-q03-distress"
* item[5].type = #integer
* item[5].text = "Symptom 03 — Belastung"
* item[5].enableWhen[0].question = "mtsosd-r59-q03"
* item[5].enableWhen[0].operator = #!=
* item[5].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 04
* item[6].linkId = "mtsosd-r59-q04"
* item[6].type = #choice
* item[6].text = "Symptom 04 — Auftreten (0-4)"
* item[6].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[7].linkId = "mtsosd-r59-q04-distress"
* item[7].type = #integer
* item[7].text = "Symptom 04 — Belastung"
* item[7].enableWhen[0].question = "mtsosd-r59-q04"
* item[7].enableWhen[0].operator = #!=
* item[7].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 05
* item[8].linkId = "mtsosd-r59-q05"
* item[8].type = #choice
* item[8].text = "Symptom 05 — Auftreten (0-4)"
* item[8].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[9].linkId = "mtsosd-r59-q05-distress"
* item[9].type = #integer
* item[9].text = "Symptom 05 — Belastung"
* item[9].enableWhen[0].question = "mtsosd-r59-q05"
* item[9].enableWhen[0].operator = #!=
* item[9].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 06
* item[10].linkId = "mtsosd-r59-q06"
* item[10].type = #choice
* item[10].text = "Symptom 06 — Auftreten (0-4)"
* item[10].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[11].linkId = "mtsosd-r59-q06-distress"
* item[11].type = #integer
* item[11].text = "Symptom 06 — Belastung"
* item[11].enableWhen[0].question = "mtsosd-r59-q06"
* item[11].enableWhen[0].operator = #!=
* item[11].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 07
* item[12].linkId = "mtsosd-r59-q07"
* item[12].type = #choice
* item[12].text = "Symptom 07 — Auftreten (0-4)"
* item[12].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[13].linkId = "mtsosd-r59-q07-distress"
* item[13].type = #integer
* item[13].text = "Symptom 07 — Belastung"
* item[13].enableWhen[0].question = "mtsosd-r59-q07"
* item[13].enableWhen[0].operator = #!=
* item[13].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 08
* item[14].linkId = "mtsosd-r59-q08"
* item[14].type = #choice
* item[14].text = "Symptom 08 — Auftreten (0-4)"
* item[14].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[15].linkId = "mtsosd-r59-q08-distress"
* item[15].type = #integer
* item[15].text = "Symptom 08 — Belastung"
* item[15].enableWhen[0].question = "mtsosd-r59-q08"
* item[15].enableWhen[0].operator = #!=
* item[15].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 09
* item[16].linkId = "mtsosd-r59-q09"
* item[16].type = #choice
* item[16].text = "Symptom 09 — Auftreten (0-4)"
* item[16].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[17].linkId = "mtsosd-r59-q09-distress"
* item[17].type = #integer
* item[17].text = "Symptom 09 — Belastung"
* item[17].enableWhen[0].question = "mtsosd-r59-q09"
* item[17].enableWhen[0].operator = #!=
* item[17].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 10
* item[18].linkId = "mtsosd-r59-q10"
* item[18].type = #choice
* item[18].text = "Symptom 10 — Auftreten (0-4)"
* item[18].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[19].linkId = "mtsosd-r59-q10-distress"
* item[19].type = #integer
* item[19].text = "Symptom 10 — Belastung"
* item[19].enableWhen[0].question = "mtsosd-r59-q10"
* item[19].enableWhen[0].operator = #!=
* item[19].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 11
* item[20].linkId = "mtsosd-r59-q11"
* item[20].type = #choice
* item[20].text = "Symptom 11 — Auftreten (0-4)"
* item[20].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[21].linkId = "mtsosd-r59-q11-distress"
* item[21].type = #integer
* item[21].text = "Symptom 11 — Belastung"
* item[21].enableWhen[0].question = "mtsosd-r59-q11"
* item[21].enableWhen[0].operator = #!=
* item[21].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 12
* item[22].linkId = "mtsosd-r59-q12"
* item[22].type = #choice
* item[22].text = "Symptom 12 — Auftreten (0-4)"
* item[22].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[23].linkId = "mtsosd-r59-q12-distress"
* item[23].type = #integer
* item[23].text = "Symptom 12 — Belastung"
* item[23].enableWhen[0].question = "mtsosd-r59-q12"
* item[23].enableWhen[0].operator = #!=
* item[23].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 13
* item[24].linkId = "mtsosd-r59-q13"
* item[24].type = #choice
* item[24].text = "Symptom 13 — Auftreten (0-4)"
* item[24].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[25].linkId = "mtsosd-r59-q13-distress"
* item[25].type = #integer
* item[25].text = "Symptom 13 — Belastung"
* item[25].enableWhen[0].question = "mtsosd-r59-q13"
* item[25].enableWhen[0].operator = #!=
* item[25].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 14
* item[26].linkId = "mtsosd-r59-q14"
* item[26].type = #choice
* item[26].text = "Symptom 14 — Auftreten (0-4)"
* item[26].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[27].linkId = "mtsosd-r59-q14-distress"
* item[27].type = #integer
* item[27].text = "Symptom 14 — Belastung"
* item[27].enableWhen[0].question = "mtsosd-r59-q14"
* item[27].enableWhen[0].operator = #!=
* item[27].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 15
* item[28].linkId = "mtsosd-r59-q15"
* item[28].type = #choice
* item[28].text = "Symptom 15 — Auftreten (0-4)"
* item[28].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[29].linkId = "mtsosd-r59-q15-distress"
* item[29].type = #integer
* item[29].text = "Symptom 15 — Belastung"
* item[29].enableWhen[0].question = "mtsosd-r59-q15"
* item[29].enableWhen[0].operator = #!=
* item[29].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 16
* item[30].linkId = "mtsosd-r59-q16"
* item[30].type = #choice
* item[30].text = "Symptom 16 — Auftreten (0-4)"
* item[30].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[31].linkId = "mtsosd-r59-q16-distress"
* item[31].type = #integer
* item[31].text = "Symptom 16 — Belastung"
* item[31].enableWhen[0].question = "mtsosd-r59-q16"
* item[31].enableWhen[0].operator = #!=
* item[31].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 17
* item[32].linkId = "mtsosd-r59-q17"
* item[32].type = #choice
* item[32].text = "Symptom 17 — Auftreten (0-4)"
* item[32].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[33].linkId = "mtsosd-r59-q17-distress"
* item[33].type = #integer
* item[33].text = "Symptom 17 — Belastung"
* item[33].enableWhen[0].question = "mtsosd-r59-q17"
* item[33].enableWhen[0].operator = #!=
* item[33].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 18
* item[34].linkId = "mtsosd-r59-q18"
* item[34].type = #choice
* item[34].text = "Symptom 18 — Auftreten (0-4)"
* item[34].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[35].linkId = "mtsosd-r59-q18-distress"
* item[35].type = #integer
* item[35].text = "Symptom 18 — Belastung"
* item[35].enableWhen[0].question = "mtsosd-r59-q18"
* item[35].enableWhen[0].operator = #!=
* item[35].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 19
* item[36].linkId = "mtsosd-r59-q19"
* item[36].type = #choice
* item[36].text = "Symptom 19 — Auftreten (0-4)"
* item[36].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[37].linkId = "mtsosd-r59-q19-distress"
* item[37].type = #integer
* item[37].text = "Symptom 19 — Belastung"
* item[37].enableWhen[0].question = "mtsosd-r59-q19"
* item[37].enableWhen[0].operator = #!=
* item[37].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 20
* item[38].linkId = "mtsosd-r59-q20"
* item[38].type = #choice
* item[38].text = "Symptom 20 — Auftreten (0-4)"
* item[38].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[39].linkId = "mtsosd-r59-q20-distress"
* item[39].type = #integer
* item[39].text = "Symptom 20 — Belastung"
* item[39].enableWhen[0].question = "mtsosd-r59-q20"
* item[39].enableWhen[0].operator = #!=
* item[39].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 21
* item[40].linkId = "mtsosd-r59-q21"
* item[40].type = #choice
* item[40].text = "Symptom 21 — Auftreten (0-4)"
* item[40].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[41].linkId = "mtsosd-r59-q21-distress"
* item[41].type = #integer
* item[41].text = "Symptom 21 — Belastung"
* item[41].enableWhen[0].question = "mtsosd-r59-q21"
* item[41].enableWhen[0].operator = #!=
* item[41].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 22
* item[42].linkId = "mtsosd-r59-q22"
* item[42].type = #choice
* item[42].text = "Symptom 22 — Auftreten (0-4)"
* item[42].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[43].linkId = "mtsosd-r59-q22-distress"
* item[43].type = #integer
* item[43].text = "Symptom 22 — Belastung"
* item[43].enableWhen[0].question = "mtsosd-r59-q22"
* item[43].enableWhen[0].operator = #!=
* item[43].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 23
* item[44].linkId = "mtsosd-r59-q23"
* item[44].type = #choice
* item[44].text = "Symptom 23 — Auftreten (0-4)"
* item[44].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[45].linkId = "mtsosd-r59-q23-distress"
* item[45].type = #integer
* item[45].text = "Symptom 23 — Belastung"
* item[45].enableWhen[0].question = "mtsosd-r59-q23"
* item[45].enableWhen[0].operator = #!=
* item[45].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 24
* item[46].linkId = "mtsosd-r59-q24"
* item[46].type = #choice
* item[46].text = "Symptom 24 — Auftreten (0-4)"
* item[46].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[47].linkId = "mtsosd-r59-q24-distress"
* item[47].type = #integer
* item[47].text = "Symptom 24 — Belastung"
* item[47].enableWhen[0].question = "mtsosd-r59-q24"
* item[47].enableWhen[0].operator = #!=
* item[47].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 25
* item[48].linkId = "mtsosd-r59-q25"
* item[48].type = #choice
* item[48].text = "Symptom 25 — Auftreten (0-4)"
* item[48].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[49].linkId = "mtsosd-r59-q25-distress"
* item[49].type = #integer
* item[49].text = "Symptom 25 — Belastung"
* item[49].enableWhen[0].question = "mtsosd-r59-q25"
* item[49].enableWhen[0].operator = #!=
* item[49].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 26
* item[50].linkId = "mtsosd-r59-q26"
* item[50].type = #choice
* item[50].text = "Symptom 26 — Auftreten (0-4)"
* item[50].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[51].linkId = "mtsosd-r59-q26-distress"
* item[51].type = #integer
* item[51].text = "Symptom 26 — Belastung"
* item[51].enableWhen[0].question = "mtsosd-r59-q26"
* item[51].enableWhen[0].operator = #!=
* item[51].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 27 (männlich)
* item[52].linkId = "mtsosd-r59-q27-male"
* item[52].type = #choice
* item[52].text = "Symptom 27 (männlich) — Auftreten (0-4)"
* item[52].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[53].linkId = "mtsosd-r59-q27-male-distress"
* item[53].type = #integer
* item[53].text = "Symptom 27 (männlich) — Belastung"
* item[53].enableWhen[0].question = "mtsosd-r59-q27-male"
* item[53].enableWhen[0].operator = #!=
* item[53].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 27 (weiblich)
* item[54].linkId = "mtsosd-r59-q27-female"
* item[54].type = #choice
* item[54].text = "Symptom 27 (weiblich) — Auftreten (0-4)"
* item[54].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[55].linkId = "mtsosd-r59-q27-female-distress"
* item[55].type = #integer
* item[55].text = "Symptom 27 (weiblich) — Belastung"
* item[55].enableWhen[0].question = "mtsosd-r59-q27-female"
* item[55].enableWhen[0].operator = #!=
* item[55].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 28
* item[56].linkId = "mtsosd-r59-q28"
* item[56].type = #choice
* item[56].text = "Symptom 28 — Auftreten (0-4)"
* item[56].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[57].linkId = "mtsosd-r59-q28-distress"
* item[57].type = #integer
* item[57].text = "Symptom 28 — Belastung"
* item[57].enableWhen[0].question = "mtsosd-r59-q28"
* item[57].enableWhen[0].operator = #!=
* item[57].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 29
* item[58].linkId = "mtsosd-r59-q29"
* item[58].type = #choice
* item[58].text = "Symptom 29 — Auftreten (0-4)"
* item[58].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[59].linkId = "mtsosd-r59-q29-distress"
* item[59].type = #integer
* item[59].text = "Symptom 29 — Belastung"
* item[59].enableWhen[0].question = "mtsosd-r59-q29"
* item[59].enableWhen[0].operator = #!=
* item[59].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 30
* item[60].linkId = "mtsosd-r59-q30"
* item[60].type = #choice
* item[60].text = "Symptom 30 — Auftreten (0-4)"
* item[60].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[61].linkId = "mtsosd-r59-q30-distress"
* item[61].type = #integer
* item[61].text = "Symptom 30 — Belastung"
* item[61].enableWhen[0].question = "mtsosd-r59-q30"
* item[61].enableWhen[0].operator = #!=
* item[61].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 31
* item[62].linkId = "mtsosd-r59-q31"
* item[62].type = #choice
* item[62].text = "Symptom 31 — Auftreten (0-4)"
* item[62].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[63].linkId = "mtsosd-r59-q31-distress"
* item[63].type = #integer
* item[63].text = "Symptom 31 — Belastung"
* item[63].enableWhen[0].question = "mtsosd-r59-q31"
* item[63].enableWhen[0].operator = #!=
* item[63].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 32
* item[64].linkId = "mtsosd-r59-q32"
* item[64].type = #choice
* item[64].text = "Symptom 32 — Auftreten (0-4)"
* item[64].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[65].linkId = "mtsosd-r59-q32-distress"
* item[65].type = #integer
* item[65].text = "Symptom 32 — Belastung"
* item[65].enableWhen[0].question = "mtsosd-r59-q32"
* item[65].enableWhen[0].operator = #!=
* item[65].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 33
* item[66].linkId = "mtsosd-r59-q33"
* item[66].type = #choice
* item[66].text = "Symptom 33 — Auftreten (0-4)"
* item[66].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[67].linkId = "mtsosd-r59-q33-distress"
* item[67].type = #integer
* item[67].text = "Symptom 33 — Belastung"
* item[67].enableWhen[0].question = "mtsosd-r59-q33"
* item[67].enableWhen[0].operator = #!=
* item[67].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 34
* item[68].linkId = "mtsosd-r59-q34"
* item[68].type = #choice
* item[68].text = "Symptom 34 — Auftreten (0-4)"
* item[68].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[69].linkId = "mtsosd-r59-q34-distress"
* item[69].type = #integer
* item[69].text = "Symptom 34 — Belastung"
* item[69].enableWhen[0].question = "mtsosd-r59-q34"
* item[69].enableWhen[0].operator = #!=
* item[69].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 35
* item[70].linkId = "mtsosd-r59-q35"
* item[70].type = #choice
* item[70].text = "Symptom 35 — Auftreten (0-4)"
* item[70].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[71].linkId = "mtsosd-r59-q35-distress"
* item[71].type = #integer
* item[71].text = "Symptom 35 — Belastung"
* item[71].enableWhen[0].question = "mtsosd-r59-q35"
* item[71].enableWhen[0].operator = #!=
* item[71].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 36
* item[72].linkId = "mtsosd-r59-q36"
* item[72].type = #choice
* item[72].text = "Symptom 36 — Auftreten (0-4)"
* item[72].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[73].linkId = "mtsosd-r59-q36-distress"
* item[73].type = #integer
* item[73].text = "Symptom 36 — Belastung"
* item[73].enableWhen[0].question = "mtsosd-r59-q36"
* item[73].enableWhen[0].operator = #!=
* item[73].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 37
* item[74].linkId = "mtsosd-r59-q37"
* item[74].type = #choice
* item[74].text = "Symptom 37 — Auftreten (0-4)"
* item[74].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[75].linkId = "mtsosd-r59-q37-distress"
* item[75].type = #integer
* item[75].text = "Symptom 37 — Belastung"
* item[75].enableWhen[0].question = "mtsosd-r59-q37"
* item[75].enableWhen[0].operator = #!=
* item[75].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 38
* item[76].linkId = "mtsosd-r59-q38"
* item[76].type = #choice
* item[76].text = "Symptom 38 — Auftreten (0-4)"
* item[76].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[77].linkId = "mtsosd-r59-q38-distress"
* item[77].type = #integer
* item[77].text = "Symptom 38 — Belastung"
* item[77].enableWhen[0].question = "mtsosd-r59-q38"
* item[77].enableWhen[0].operator = #!=
* item[77].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 39
* item[78].linkId = "mtsosd-r59-q39"
* item[78].type = #choice
* item[78].text = "Symptom 39 — Auftreten (0-4)"
* item[78].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[79].linkId = "mtsosd-r59-q39-distress"
* item[79].type = #integer
* item[79].text = "Symptom 39 — Belastung"
* item[79].enableWhen[0].question = "mtsosd-r59-q39"
* item[79].enableWhen[0].operator = #!=
* item[79].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 40
* item[80].linkId = "mtsosd-r59-q40"
* item[80].type = #choice
* item[80].text = "Symptom 40 — Auftreten (0-4)"
* item[80].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[81].linkId = "mtsosd-r59-q40-distress"
* item[81].type = #integer
* item[81].text = "Symptom 40 — Belastung"
* item[81].enableWhen[0].question = "mtsosd-r59-q40"
* item[81].enableWhen[0].operator = #!=
* item[81].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 41
* item[82].linkId = "mtsosd-r59-q41"
* item[82].type = #choice
* item[82].text = "Symptom 41 — Auftreten (0-4)"
* item[82].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[83].linkId = "mtsosd-r59-q41-distress"
* item[83].type = #integer
* item[83].text = "Symptom 41 — Belastung"
* item[83].enableWhen[0].question = "mtsosd-r59-q41"
* item[83].enableWhen[0].operator = #!=
* item[83].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 42
* item[84].linkId = "mtsosd-r59-q42"
* item[84].type = #choice
* item[84].text = "Symptom 42 — Auftreten (0-4)"
* item[84].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[85].linkId = "mtsosd-r59-q42-distress"
* item[85].type = #integer
* item[85].text = "Symptom 42 — Belastung"
* item[85].enableWhen[0].question = "mtsosd-r59-q42"
* item[85].enableWhen[0].operator = #!=
* item[85].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 43
* item[86].linkId = "mtsosd-r59-q43"
* item[86].type = #choice
* item[86].text = "Symptom 43 — Auftreten (0-4)"
* item[86].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[87].linkId = "mtsosd-r59-q43-distress"
* item[87].type = #integer
* item[87].text = "Symptom 43 — Belastung"
* item[87].enableWhen[0].question = "mtsosd-r59-q43"
* item[87].enableWhen[0].operator = #!=
* item[87].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 44
* item[88].linkId = "mtsosd-r59-q44"
* item[88].type = #choice
* item[88].text = "Symptom 44 — Auftreten (0-4)"
* item[88].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[89].linkId = "mtsosd-r59-q44-distress"
* item[89].type = #integer
* item[89].text = "Symptom 44 — Belastung"
* item[89].enableWhen[0].question = "mtsosd-r59-q44"
* item[89].enableWhen[0].operator = #!=
* item[89].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 45
* item[90].linkId = "mtsosd-r59-q45"
* item[90].type = #choice
* item[90].text = "Symptom 45 — Auftreten (0-4)"
* item[90].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[91].linkId = "mtsosd-r59-q45-distress"
* item[91].type = #integer
* item[91].text = "Symptom 45 — Belastung"
* item[91].enableWhen[0].question = "mtsosd-r59-q45"
* item[91].enableWhen[0].operator = #!=
* item[91].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 46
* item[92].linkId = "mtsosd-r59-q46"
* item[92].type = #choice
* item[92].text = "Symptom 46 — Auftreten (0-4)"
* item[92].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[93].linkId = "mtsosd-r59-q46-distress"
* item[93].type = #integer
* item[93].text = "Symptom 46 — Belastung"
* item[93].enableWhen[0].question = "mtsosd-r59-q46"
* item[93].enableWhen[0].operator = #!=
* item[93].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 47
* item[94].linkId = "mtsosd-r59-q47"
* item[94].type = #choice
* item[94].text = "Symptom 47 — Auftreten (0-4)"
* item[94].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[95].linkId = "mtsosd-r59-q47-distress"
* item[95].type = #integer
* item[95].text = "Symptom 47 — Belastung"
* item[95].enableWhen[0].question = "mtsosd-r59-q47"
* item[95].enableWhen[0].operator = #!=
* item[95].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 48
* item[96].linkId = "mtsosd-r59-q48"
* item[96].type = #choice
* item[96].text = "Symptom 48 — Auftreten (0-4)"
* item[96].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[97].linkId = "mtsosd-r59-q48-distress"
* item[97].type = #integer
* item[97].text = "Symptom 48 — Belastung"
* item[97].enableWhen[0].question = "mtsosd-r59-q48"
* item[97].enableWhen[0].operator = #!=
* item[97].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 49
* item[98].linkId = "mtsosd-r59-q49"
* item[98].type = #choice
* item[98].text = "Symptom 49 — Auftreten (0-4)"
* item[98].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[99].linkId = "mtsosd-r59-q49-distress"
* item[99].type = #integer
* item[99].text = "Symptom 49 — Belastung"
* item[99].enableWhen[0].question = "mtsosd-r59-q49"
* item[99].enableWhen[0].operator = #!=
* item[99].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 50
* item[100].linkId = "mtsosd-r59-q50"
* item[100].type = #choice
* item[100].text = "Symptom 50 — Auftreten (0-4)"
* item[100].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[101].linkId = "mtsosd-r59-q50-distress"
* item[101].type = #integer
* item[101].text = "Symptom 50 — Belastung"
* item[101].enableWhen[0].question = "mtsosd-r59-q50"
* item[101].enableWhen[0].operator = #!=
* item[101].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 51
* item[102].linkId = "mtsosd-r59-q51"
* item[102].type = #choice
* item[102].text = "Symptom 51 — Auftreten (0-4)"
* item[102].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[103].linkId = "mtsosd-r59-q51-distress"
* item[103].type = #integer
* item[103].text = "Symptom 51 — Belastung"
* item[103].enableWhen[0].question = "mtsosd-r59-q51"
* item[103].enableWhen[0].operator = #!=
* item[103].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 52
* item[104].linkId = "mtsosd-r59-q52"
* item[104].type = #choice
* item[104].text = "Symptom 52 — Auftreten (0-4)"
* item[104].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[105].linkId = "mtsosd-r59-q52-distress"
* item[105].type = #integer
* item[105].text = "Symptom 52 — Belastung"
* item[105].enableWhen[0].question = "mtsosd-r59-q52"
* item[105].enableWhen[0].operator = #!=
* item[105].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 53
* item[106].linkId = "mtsosd-r59-q53"
* item[106].type = #choice
* item[106].text = "Symptom 53 — Auftreten (0-4)"
* item[106].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[107].linkId = "mtsosd-r59-q53-distress"
* item[107].type = #integer
* item[107].text = "Symptom 53 — Belastung"
* item[107].enableWhen[0].question = "mtsosd-r59-q53"
* item[107].enableWhen[0].operator = #!=
* item[107].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 54
* item[108].linkId = "mtsosd-r59-q54"
* item[108].type = #choice
* item[108].text = "Symptom 54 — Auftreten (0-4)"
* item[108].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[109].linkId = "mtsosd-r59-q54-distress"
* item[109].type = #integer
* item[109].text = "Symptom 54 — Belastung"
* item[109].enableWhen[0].question = "mtsosd-r59-q54"
* item[109].enableWhen[0].operator = #!=
* item[109].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 55
* item[110].linkId = "mtsosd-r59-q55"
* item[110].type = #choice
* item[110].text = "Symptom 55 — Auftreten (0-4)"
* item[110].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[111].linkId = "mtsosd-r59-q55-distress"
* item[111].type = #integer
* item[111].text = "Symptom 55 — Belastung"
* item[111].enableWhen[0].question = "mtsosd-r59-q55"
* item[111].enableWhen[0].operator = #!=
* item[111].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 56
* item[112].linkId = "mtsosd-r59-q56"
* item[112].type = #choice
* item[112].text = "Symptom 56 — Auftreten (0-4)"
* item[112].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[113].linkId = "mtsosd-r59-q56-distress"
* item[113].type = #integer
* item[113].text = "Symptom 56 — Belastung"
* item[113].enableWhen[0].question = "mtsosd-r59-q56"
* item[113].enableWhen[0].operator = #!=
* item[113].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 57
* item[114].linkId = "mtsosd-r59-q57"
* item[114].type = #choice
* item[114].text = "Symptom 57 — Auftreten (0-4)"
* item[114].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[115].linkId = "mtsosd-r59-q57-distress"
* item[115].type = #integer
* item[115].text = "Symptom 57 — Belastung"
* item[115].enableWhen[0].question = "mtsosd-r59-q57"
* item[115].enableWhen[0].operator = #!=
* item[115].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 58
* item[116].linkId = "mtsosd-r59-q58"
* item[116].type = #choice
* item[116].text = "Symptom 58 — Auftreten (0-4)"
* item[116].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[117].linkId = "mtsosd-r59-q58-distress"
* item[117].type = #integer
* item[117].text = "Symptom 58 — Belastung"
* item[117].enableWhen[0].question = "mtsosd-r59-q58"
* item[117].enableWhen[0].operator = #!=
* item[117].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 59
* item[118].linkId = "mtsosd-r59-q59"
* item[118].type = #choice
* item[118].text = "Symptom 59 — Auftreten (0-4)"
* item[118].answerValueSet = Canonical(MII_VS_PRO_MTSOSD_R59_Occurrence)
* item[119].linkId = "mtsosd-r59-q59-distress"
* item[119].type = #integer
* item[119].text = "Symptom 59 — Belastung"
* item[119].enableWhen[0].question = "mtsosd-r59-q59"
* item[119].enableWhen[0].operator = #!=
* item[119].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence#stufe-0 "Stufe 0"
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 60 (Freitext)
* item[120].linkId = "mtsosd-r59-q60"
* item[120].type = #text
* item[120].text = "Symptom 60 (Freitext) — Freitext"
* item[121].linkId = "mtsosd-r59-q60-distress"
* item[121].type = #integer
* item[121].text = "Symptom 60 (Freitext) — Belastung"
* item[121].enableWhen[0].question = "mtsosd-r59-q60"
* item[121].enableWhen[0].operator = #exists
* item[121].enableWhen[0].answerBoolean = true
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 61 (Freitext)
* item[122].linkId = "mtsosd-r59-q61"
* item[122].type = #text
* item[122].text = "Symptom 61 (Freitext) — Freitext"
* item[123].linkId = "mtsosd-r59-q61-distress"
* item[123].type = #integer
* item[123].text = "Symptom 61 (Freitext) — Belastung"
* item[123].enableWhen[0].question = "mtsosd-r59-q61"
* item[123].enableWhen[0].operator = #exists
* item[123].enableWhen[0].answerBoolean = true
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

// Symptom 62 (Freitext)
* item[124].linkId = "mtsosd-r59-q62"
* item[124].type = #text
* item[124].text = "Symptom 62 (Freitext) — Freitext"
* item[125].linkId = "mtsosd-r59-q62-distress"
* item[125].type = #integer
* item[125].text = "Symptom 62 (Freitext) — Belastung"
* item[125].enableWhen[0].question = "mtsosd-r59-q62"
* item[125].enableWhen[0].operator = #exists
* item[125].enableWhen[0].answerBoolean = true
// Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert; zu klären

