// BAASIS — Basel Assessment of Adherence to Immunosuppressive Medications Scale.
// Fragebogen zur Adhärenz gegenüber immunsuppressiver Medikation (Transplantation).
//
// METADATA-ONLY (Tier B): © Universität Basel. Eine Veröffentlichung der konkreten Items
// einschließlich Antwortmöglichkeiten ist nicht erlaubt. Dieser Questionnaire bildet daher NUR
// Struktur, Typen, Wertebereiche und Bedingungen ab; die Item-Texte sind neutrale, selbst
// formulierte Labels. Die wortgleiche Vollversion wird ausschließlich über den
// zugriffsbeschränkten Form Server verteilt, nie im Package. Jedes Zentrum benötigt eine eigene
// Lizenzvereinbarung (Bezug: https://baasis.nursing.unibas.ch/how-to-obtain).
//
// Struktur (Quelle: PCOR-MII Item Level Dictionary, Blatt NTx, Variablen BAASIS1A-BAASIS5_a):
// 10 Variablen. Ja/Nein-Items über das geteilte RuleSet YesNoAnswerOptions (SNOMED CT, ohne
// Wortlaut-Problem). Häufigkeits-Teilfragen (Stufe 1-5) über das neutrale CodeSystem
// mii-cs-pro-baasis-frequency. Rückblick: Items 4 und 5 beziehen sich auf 1 Jahr.
//
// BEDINGUNGEN: 1A_a nur bei 1A = ja; 1B nur bei 1A = ja; 1B_a nur bei 1B = ja; 2_a nur bei
// 2 = ja; 5_a nur bei 5 = ja.
//
// SCORING: Es gibt keinen Summenscore. Die Klassifikation "nicht adhärent" ergibt sich
// dichotom, wenn bei irgendeinem der Items 1A, 2, 3 oder 4 mit "ja" geantwortet wurde. Das ist
// hier nur dokumentiert und NICHT als ausführbarer Ausdruck ausgeliefert (calculatable = false).
//
// TERMINOLOGIE: kein LOINC/SNOMED-Code für das Instrument verifiziert; nur MII-Katalogcode.

Instance: mii-qst-pro-baasis
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO BAASIS"
Description: "BAASIS — Basel Assessment of Adherence to Immunosuppressive Medications Scale (Universität Basel). Metadata-only (Tier B): Struktur ohne Item-Wortlaut."
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-baasis"
* status = #active
* experimental = true
* language = #de
* title = "BAASIS (metadata-only)"
* code[+] = $mii-cs-pro-questionnaire-catalogue#baasis "BAASIS (Basel Assessment of Adherence to Immunosuppressive Medications Scale)"

* copyright = "BAASIS © Universität Basel. Lizenz-Status: Tier B (metadata-only). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt. Wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Bezug: https://baasis.nursing.unibas.ch/how-to-obtain"

* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[collectable].valueBoolean = false
* extension[capabilities].extension[calculatable].valueBoolean = false
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = false

// baasis-q1a
* item[0].linkId = "baasis-q1a"
* item[0].text = "BAASIS Item 1A (Ja/Nein)"
* item[0].type = #choice
* item[0] insert YesNoAnswerOptions

// baasis-q1a-freq
* item[1].linkId = "baasis-q1a-freq"
* item[1].text = "BAASIS Item 1A — Häufigkeit (Stufe 1-5)"
* item[1].type = #choice
* item[1].answerValueSet = Canonical(MII_VS_PRO_BAASIS_Frequency)
* item[1].enableWhen[0].question = "baasis-q1a"
* item[1].enableWhen[0].operator = #=
* item[1].enableWhen[0].answerCoding = $SCT#373066001 "Yes"

// baasis-q1b
* item[2].linkId = "baasis-q1b"
* item[2].text = "BAASIS Item 1B (Ja/Nein)"
* item[2].type = #choice
* item[2] insert YesNoAnswerOptions
* item[2].enableWhen[0].question = "baasis-q1a"
* item[2].enableWhen[0].operator = #=
* item[2].enableWhen[0].answerCoding = $SCT#373066001 "Yes"

// baasis-q1b-freq
* item[3].linkId = "baasis-q1b-freq"
* item[3].text = "BAASIS Item 1B — Häufigkeit (Stufe 1-5)"
* item[3].type = #choice
* item[3].answerValueSet = Canonical(MII_VS_PRO_BAASIS_Frequency)
* item[3].enableWhen[0].question = "baasis-q1b"
* item[3].enableWhen[0].operator = #=
* item[3].enableWhen[0].answerCoding = $SCT#373066001 "Yes"

// baasis-q2
* item[4].linkId = "baasis-q2"
* item[4].text = "BAASIS Item 2 (Ja/Nein)"
* item[4].type = #choice
* item[4] insert YesNoAnswerOptions

// baasis-q2-freq
* item[5].linkId = "baasis-q2-freq"
* item[5].text = "BAASIS Item 2 — Häufigkeit (Stufe 1-5)"
* item[5].type = #choice
* item[5].answerValueSet = Canonical(MII_VS_PRO_BAASIS_Frequency)
* item[5].enableWhen[0].question = "baasis-q2"
* item[5].enableWhen[0].operator = #=
* item[5].enableWhen[0].answerCoding = $SCT#373066001 "Yes"

// baasis-q3
* item[6].linkId = "baasis-q3"
* item[6].text = "BAASIS Item 3 (Ja/Nein)"
* item[6].type = #choice
* item[6] insert YesNoAnswerOptions

// baasis-q4
* item[7].linkId = "baasis-q4"
* item[7].text = "BAASIS Item 4 (Ja/Nein; Rückblick 1 Jahr)"
* item[7].type = #choice
* item[7] insert YesNoAnswerOptions

// baasis-q5
* item[8].linkId = "baasis-q5"
* item[8].text = "BAASIS Item 5 (Ja/Nein; Rückblick 1 Jahr)"
* item[8].type = #choice
* item[8] insert YesNoAnswerOptions

// baasis-q5a
* item[9].linkId = "baasis-q5a"
* item[9].text = "BAASIS Item 5a (Ja/Nein)"
* item[9].type = #choice
* item[9] insert YesNoAnswerOptions
* item[9].enableWhen[0].question = "baasis-q5"
* item[9].enableWhen[0].operator = #=
* item[9].enableWhen[0].answerCoding = $SCT#373066001 "Yes"

