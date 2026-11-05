// PHQ-D Panikblock — die vier Ja/Nein-Screeningitems zu Angst-/Panikattacken des
// Patient Health Questionnaire (PHQ, Block 3a-3d; im Brief PHQ Block 2a-2d).
//
// Original (EN): Spitzer RL, Kroenke K, Williams JBW. Validation and utility of a self-report
// version of PRIME-MD: the PHQ primary care study. JAMA 1999; 282(18):1737-1744.
// doi:10.1001/jama.282.18.1737. © Pfizer Inc. — frei verfügbar, keine Genehmigung erforderlich.
// Englischer Wortlaut verifiziert gegen das Brief-PHQ-Formular (Pfizer), Block 2 "Questions
// about anxiety", Items a-d; dort wortgleich mit Block 3a-3d des vollständigen PHQ.
// Deutsche Fassung: PHQ-D (Löwe B, Spitzer RL, Zipfel S, Herzog W. PHQ-D. Gesundheitsfragebogen
// für Patienten. Pfizer, Karlsruhe 2002), Wortlaut aus dem PCOR-MII Item Level Dictionary
// (MASTER_3EntitiesOverview.xlsx, Blatt "Item Level Dictionary PSS", Variablen phq3a-phq3d).
//
// ABGRENZUNG: Der vollständige PHQ-Panikblock umfasst zusätzlich die Symptomliste 4a-4k
// ("Denken Sie an Ihren letzten schlimmen Angstanfall …"). PCOR-MII erhebt nur 3a-3d; die
// Symptomliste ist hier NICHT modelliert. Die linkIds phq-phq4a … phq-phq4k sind im
// PHQ-D-Block-Namespace dafür reserviert (vgl. docs/design/pcor-pss-instrumente.md §3).
//
// LINKIDS: PHQ-D-Block-Namespace phq-phq3a … phq-phq3d (wie phq-phq1*, phq-phq2*, phq-phq5*),
// damit dieselbe Frage instrumentenübergreifend denselben linkId trägt (PHQ-SADS, PHQ-Vollform).
//
// SPRUNGREGEL: Das Formular sagt bei 3a "If you checked 'NO', go to question 4" (bzw.
// "go to question 3" im Brief PHQ). Modelliert als enableWhen auf 3b-3d: nur bei 3a = Ja.
//
// ANTWORTMODELLIERUNG: inline answerOption über das geteilte RuleSet YesNoAnswerOptions
// (SNOMED CT 373067005 No / 373066001 Yes, itemWeight 0/1) — Fall A wie SCOFF, WI-7, PC-PTSD.
//
// TERMINOLOGIE: LOINC führt die Items des PHQ-Panikblocks nach unserem Kenntnisstand nicht als
// eigene Codes (die LOINC-Suchwerkzeuge waren in der Autorensitzung nicht verfügbar; geprüft
// wurden nur Einzelcodes per Lookup). Kodierung daher über den MII-Questionnaire-Katalog.
//
// SCORING: Der PHQ kennt für diesen Block keinen Summenscore, sondern den Algorithmus
// "Paniksyndrom, wenn 3a-3d alle 'Ja' UND mindestens 4 von 4a-4k 'Ja'". Ohne 4a-4k ist nur
// die Screening-Stufe abbildbar. Das Zählitem phq-panic-score-count (Anzahl Ja, 0-4) wird als
// technischer Zwischenwert ausgeliefert; die Interpretation "alle vier Ja = Screening positiv"
// ist in der ObservationDefinition DOKUMENTIERT, nicht als ausführbare Logik (MDR-Abgrenzung).

Instance: mii-qst-pro-phq-panic
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PHQ-D Panikblock"
Description: "PHQ panic screening items 3a-3d (Spitzer, Kroenke & Williams 1999) with validated German translation (PHQ-D, Löwe et al. 2002) — four yes/no items on anxiety attacks, 4-week recall"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = $mii-qst-pro-phq-panic
* status = #active
* experimental = true
* language = #en
* code[+] = $mii-cs-pro-questionnaire-catalogue#phq-panic "PHQ-D Panikblock (PHQ panic screening items 3a-3d, Spitzer et al. 1999)"

* copyright = "Patient Health Questionnaire (PHQ) © Pfizer Inc. Developed by Robert L. Spitzer, Janet B.W. Williams, Kurt Kroenke and colleagues. Freely available — no permission required for reproduction, translation, display or use. German version: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002). Lizenz-Status: frei verfügbar (Tier A)."

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Root-Variable: Anzahl der Ja-Antworten in 3a-3d (0-4)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "phqPanicYesCount"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^phq-phq3[a-d]$')).answer.value.weight().sum()"

// Item 0: Einleitung (Blocküberschrift des Formulars)
* item[0].linkId = "phq-panic-intro"
* item[0].type = #display
* item[0].text = "Questions about anxiety."
* item[0].text.extension[0].url = $hl7-translation
* item[0].text.extension[0].extension[0].url = "lang"
* item[0].text.extension[0].extension[0].valueCode = #de
* item[0].text.extension[0].extension[1].url = "content"
* item[0].text.extension[0].extension[1].valueString = "Fragen zum Thema \"Angst\""

// Item 3a: Angstattacke in den letzten 4 Wochen
* item[1].linkId = "phq-phq3a"
* item[1].type = #choice
* item[1].prefix = "a"
* item[1].text = "In the last 4 weeks, have you had an anxiety attack — suddenly feeling fear or panic?"
* item[1].text.extension[0].url = $hl7-translation
* item[1].text.extension[0].extension[0].url = "lang"
* item[1].text.extension[0].extension[0].valueCode = #de
* item[1].text.extension[0].extension[1].url = "content"
* item[1].text.extension[0].extension[1].valueString = "Hatten Sie in den letzten 4 Wochen eine Angstattacke (plötzliches Gefühl der Furcht oder Panik?)"
* item[1].required = true
* item[1] insert YesNoAnswerOptions

// Item 3b: Früher schon vorgekommen (nur bei 3a = Ja)
* item[2].linkId = "phq-phq3b"
* item[2].type = #choice
* item[2].prefix = "b"
* item[2].text = "Has this ever happened before?"
* item[2].text.extension[0].url = $hl7-translation
* item[2].text.extension[0].extension[0].url = "lang"
* item[2].text.extension[0].extension[0].valueCode = #de
* item[2].text.extension[0].extension[1].url = "content"
* item[2].text.extension[0].extension[1].valueString = "Ist dies bereits früher einmal vorgekommen?"
* item[2].enableWhen[0].question = "phq-phq3a"
* item[2].enableWhen[0].operator = #=
* item[2].enableWhen[0].answerCoding = $SCT#373066001 "Yes"
* item[2] insert YesNoAnswerOptions

// Item 3c: Anfälle völlig unerwartet (nur bei 3a = Ja)
* item[3].linkId = "phq-phq3c"
* item[3].type = #choice
* item[3].prefix = "c"
* item[3].text = "Do some of these attacks come suddenly out of the blue — that is, in situations where you don't expect to be nervous or uncomfortable?"
* item[3].text.extension[0].url = $hl7-translation
* item[3].text.extension[0].extension[0].url = "lang"
* item[3].text.extension[0].extension[0].valueCode = #de
* item[3].text.extension[0].extension[1].url = "content"
* item[3].text.extension[0].extension[1].valueString = "Treten manche dieser Anfälle völlig unerwartet auf - d.h. in Situationen, in denen Sie nicht damit rechnen, dass Sie angespannt oder beunruhigt reagieren?"
* item[3].enableWhen[0].question = "phq-phq3a"
* item[3].enableWhen[0].operator = #=
* item[3].enableWhen[0].answerCoding = $SCT#373066001 "Yes"
* item[3] insert YesNoAnswerOptions

// Item 3d: Beeinträchtigung / Angst vor erneuten Anfällen (nur bei 3a = Ja)
* item[4].linkId = "phq-phq3d"
* item[4].type = #choice
* item[4].prefix = "d"
* item[4].text = "Do these attacks bother you a lot or are you worried about having another attack?"
* item[4].text.extension[0].url = $hl7-translation
* item[4].text.extension[0].extension[0].url = "lang"
* item[4].text.extension[0].extension[0].valueCode = #de
* item[4].text.extension[0].extension[1].url = "content"
* item[4].text.extension[0].extension[1].valueString = "Empfinden Sie diese Anfälle als stark beeinträchtigend, und/oder haben Sie Angst vor erneuten Anfällen?"
* item[4].enableWhen[0].question = "phq-phq3a"
* item[4].enableWhen[0].operator = #=
* item[4].enableWhen[0].answerCoding = $SCT#373066001 "Yes"
* item[4] insert YesNoAnswerOptions

// Item 5: Zählitem — Anzahl Ja-Antworten (0-4), technischer Zwischenwert
* item[5].linkId = "phq-panic-score-count"
* item[5].type = #decimal
* item[5].prefix = "Count"
* item[5].code = $mii-cs-pro-score-catalogue#phq-panic-count "PHQ-D Panikblock Yes-Count (0-4, screening items 3a-3d)"
* item[5].readOnly = true
* item[5].extension[0].url = $sdc-questionnaire-calculated-expression
* item[5].extension[0].valueExpression.name = "Scoreberechnung"
* item[5].extension[0].valueExpression.language = #text/fhirpath
* item[5].extension[0].valueExpression.expression = "%phqPanicYesCount"
* item[5].text = "Number of 'yes' answers (0-4)"
* item[5].text.extension[0].url = $hl7-translation
* item[5].text.extension[0].extension[0].url = "lang"
* item[5].text.extension[0].extension[0].valueCode = #de
* item[5].text.extension[0].extension[1].url = "content"
* item[5].text.extension[0].extension[1].valueString = "Anzahl der Ja-Antworten (0-4)"
* item[5].extension[1].url = $sdc-questionnaire-observation-extract
* item[5].extension[1].valueBoolean = true
* item[5].extension[2].url = $hl7-questionnaire-unit
* item[5].extension[2].valueCoding.system = $UCUM
* item[5].extension[2].valueCoding.code = #{score}
* item[5].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[5].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[5].extension[3].valueCodeableConcept.coding.code = #survey
