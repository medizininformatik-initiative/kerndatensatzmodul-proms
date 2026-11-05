// PROMIS Scale v1.2 – Global Health (PROMIS-GH, 10 Items, Global01–Global10)
//
// Original: Hays RD, Bjorner JB, Revicki DA, Spritzer KL, Cella D. Development of physical and
// mental health summary scores from the patient-reported outcomes measurement information
// system (PROMIS) global items. Qual Life Res 2009; 18(7):873-880. doi:10.1007/s11136-009-9496-9
// Scoring v1.2: PROMIS Global Health Scoring Manual (HealthMeasures), Umkodierung von Global07,
// Global08 und Global10 gegenüber v1.0/v1.1.
// Terminologie: LOINC-Panel 85524-7 "PROMIS short form - global - version 1.2" (LOINC 2.83);
// Item-Codes und Antwortlisten per mcp__fhir-terminology (get_panel_components, get_answer_list).
// Englische Itemtexte = LOINC-Komponentennamen des Panels (Form-Wortlaut der v1.2).
//
// BEDARF: PCOR-MII erhebt Global01, Global02 und Global07 in allen drei Entitäten (Pilot
// "50 First Patients"). Das PCOR-MII-Repo führt dafür den lokalen 2-Item-Questionnaire
// `PROMISGH` als Übergangslösung "bis zur Aufnahme der 10-Item-Skala ins PRO-Modul" — diese
// Instanz ist die kanonische Vollfassung (Bead 92b). Der PCOR-Zuschnitt wird in der
// Use-Case-Schicht per derivedFrom abgeleitet (docs/design/pcor-pss-instrumente.md §9).
//
// SPRACHE: EN-primär, DE als translation. ⚠️ Die offizielle deutsche PROMIS-Übersetzung liegt
// im Modul nur für Global01, Global02 (PCOR-MII Item Level Dictionary, CPCOR) und Global07
// (wortgleich mit promis-global07 in PROMIS-29) vor. Für Global03–06 und Global08–10 ist KEINE
// deutsche Übersetzung hinterlegt — bewusst keine Eigenübersetzung; nachzutragen aus dem
// offiziellen HealthMeasures/CPCOR-Übersetzungsdokument (Bead 92b, offener Punkt). Deutsche
// Antwort-Displays nur dort, wo sie im Modul verifiziert vorliegen (Ausgezeichnet…Schlecht aus
// dem Dictionary; Nie…Immer aus PROMIS-29).
//
// LINKIDS: promis-global01 … promis-global10 (promis-global07 ist bereits der linkId des
// Pain-Intensity-Items in PROMIS-29 — identische Frage, identischer linkId, Itembank-Prinzip).
// Reihenfolge wie auf dem Formular v1.2: 01, 02, 03, 04, 05, 09, 06, 10, 08, 07. Flache
// Struktur (kein group), der 7-Tage-Stamm ist ein display-Item.
//
// SCORING (v1.2): Global Physical Health (GPH) = Global03 + Global06 + Global07r + Global08r;
// Global Mental Health (GMH) = Global02 + Global04 + Global05 + Global10r. Rohwerte je 4–20.
// Umkodierungen: Global07 (NRS 0–10): 0→5, 1–3→4, 4–6→3, 7–9→2, 10→1; Global08 (None…Very
// severe): 5…1; Global10 (Never…Always): 5…1. Global01 und Global09 gehen in keinen Score ein
// (Einzelindikatoren). Die Gewichte an den Optionen sind bereits die UMKODIERTEN Werte, so dass
// `.weight().sum()` den Rohwert liefert; Global07 ist ein Integer-Item 0-10, die Umkodierung steht in der gphRaw-Variable.
// T-Scores (LOINC 71971-6 GPH, 71969-0 GMH) werden NICHT im Questionnaire berechnet: die
// Umrechnungstabellen sind hier nicht verifiziert hinterlegt; Umsetzung als CQL-Library analog
// PROMIS-29 (Bead 6yu), sobald die offizielle Tabelle vorliegt. Rohwert nur bei vollständig
// beantworteter Vierergruppe (Count-Guard).

Instance: mii-qst-pro-promis-global-health
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PROMIS Global Health v1.2"
Description: "PROMIS Scale v1.2 – Global Health: 10 items (Global01–Global10) yielding the Global Physical Health and Global Mental Health raw scores (4–20 each). English primary; German translation only where the official wording is available in the module (Global01, Global02, Global07)."
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)
* insert PROMIS_Copyright_DE

* url = $mii-qst-pro-promis-global-health
* status = #draft
* experimental = true
* language = #en
* code[+] = $LNC#85524-7 "PROMIS short form - global - version 1.2"
* code[+] = $mii-cs-pro-questionnaire-catalogue#promis-global-health "PROMIS Scale v1.2 - Global Health (10 items)"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueReference.display = "PROMIS Global Health Scoring Manual (https://www.healthmeasures.net/images/PROMIS/manuals/Scoring_Manual_Only/PROMIS_Global_Scoring_Manual.pdf)"

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Variable: Global Physical Health raw score (Global03 + Global06 + Global07r + Global08r), 4-20
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "gphRaw"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%resource.item.where(linkId.matches('^promis-global0[3678]$')).answer.count() = 4, %resource.item.where(linkId.matches('^promis-global0[368]$')).answer.value.weight().sum() + %resource.item.where(linkId = 'promis-global07').answer.value.select(iif($this = 0, 5, iif($this <= 3, 4, iif($this <= 6, 3, iif($this <= 9, 2, 1))))).sum(), {})"

// Variable: Global Mental Health raw score (Global02 + Global04 + Global05 + Global10r), 4-20
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "gmhRaw"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%resource.item.where(linkId.matches('^promis-global(02|04|05|10)$')).answer.count() = 4, %resource.item.where(linkId.matches('^promis-global(02|04|05|10)$')).answer.value.weight().sum(), {})"

// ---- Global01: general health ----
* item[+].linkId = "promis-global01"
* item[=].type = #choice
* item[=].prefix = "Global01"
* item[=].code = $LNC#61577-3 "In general, would you say your health is [PROMIS]"
* item[=].text = "In general, would you say your health is:"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Wie würden Sie Ihren Gesundheitszustand insgesamt beschreiben?"
* item[=] insert WeightedOptionIntl($LNC, LA9206-9, Excellent, Ausgezeichnet, 5)
* item[=] insert WeightedOptionIntl($LNC, LA13913-1, Very Good, Sehr gut, 4)
* item[=] insert WeightedOptionIntl($LNC, LA8967-7, Good, Gut, 3)
* item[=] insert WeightedOptionIntl($LNC, LA8968-5, Fair, Einigermaßen, 2)
* item[=] insert WeightedOptionIntl($LNC, LA8969-3, Poor, Schlecht, 1)

// ---- Global02: quality of life (GMH) ----
* item[+].linkId = "promis-global02"
* item[=].type = #choice
* item[=].prefix = "Global02"
* item[=].code = $LNC#61578-1 "In general, would you say your quality of life is [PROMIS]"
* item[=].text = "In general, would you say your quality of life is:"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Wie würden Sie Ihre Lebensqualität insgesamt beschreiben?"
* item[=] insert WeightedOptionIntl($LNC, LA9206-9, Excellent, Ausgezeichnet, 5)
* item[=] insert WeightedOptionIntl($LNC, LA13913-1, Very Good, Sehr gut, 4)
* item[=] insert WeightedOptionIntl($LNC, LA8967-7, Good, Gut, 3)
* item[=] insert WeightedOptionIntl($LNC, LA8968-5, Fair, Einigermaßen, 2)
* item[=] insert WeightedOptionIntl($LNC, LA8969-3, Poor, Schlecht, 1)

// ---- Global03: physical health (GPH) — DE translation pending ----
* item[+].linkId = "promis-global03"
* item[=].type = #choice
* item[=].prefix = "Global03"
* item[=].code = $LNC#61579-9 "In general, how would you rate your physical health [PROMIS]"
* item[=].text = "In general, how would you rate your physical health?"
* item[=] insert WeightedOptionIntl($LNC, LA9206-9, Excellent, Ausgezeichnet, 5)
* item[=] insert WeightedOptionIntl($LNC, LA13913-1, Very Good, Sehr gut, 4)
* item[=] insert WeightedOptionIntl($LNC, LA8967-7, Good, Gut, 3)
* item[=] insert WeightedOptionIntl($LNC, LA8968-5, Fair, Einigermaßen, 2)
* item[=] insert WeightedOptionIntl($LNC, LA8969-3, Poor, Schlecht, 1)

// ---- Global04: mental health (GMH) — DE translation pending ----
* item[+].linkId = "promis-global04"
* item[=].type = #choice
* item[=].prefix = "Global04"
* item[=].code = $LNC#61580-7 "In general, how would you rate your mental health, including your mood and your ability to think [PROMIS]"
* item[=].text = "In general, how would you rate your mental health, including your mood and your ability to think?"
* item[=] insert WeightedOptionIntl($LNC, LA9206-9, Excellent, Ausgezeichnet, 5)
* item[=] insert WeightedOptionIntl($LNC, LA13913-1, Very Good, Sehr gut, 4)
* item[=] insert WeightedOptionIntl($LNC, LA8967-7, Good, Gut, 3)
* item[=] insert WeightedOptionIntl($LNC, LA8968-5, Fair, Einigermaßen, 2)
* item[=] insert WeightedOptionIntl($LNC, LA8969-3, Poor, Schlecht, 1)

// ---- Global05: satisfaction with social activities and relationships (GMH) — DE pending ----
* item[+].linkId = "promis-global05"
* item[=].type = #choice
* item[=].prefix = "Global05"
* item[=].code = $LNC#61581-5 "In general, how would you rate your satisfaction with you social activities and relationships [PROMIS]"
* item[=].text = "In general, how would you rate your satisfaction with your social activities and relationships?"
* item[=] insert WeightedOptionIntl($LNC, LA9206-9, Excellent, Ausgezeichnet, 5)
* item[=] insert WeightedOptionIntl($LNC, LA13913-1, Very Good, Sehr gut, 4)
* item[=] insert WeightedOptionIntl($LNC, LA8967-7, Good, Gut, 3)
* item[=] insert WeightedOptionIntl($LNC, LA8968-5, Fair, Einigermaßen, 2)
* item[=] insert WeightedOptionIntl($LNC, LA8969-3, Poor, Schlecht, 1)

// ---- Global09: usual social activities and roles (not scored) — DE pending ----
* item[+].linkId = "promis-global09"
* item[=].type = #choice
* item[=].prefix = "Global09"
* item[=].code = $LNC#61585-6 "In general, please rate how well you carry out your usual social activities and roles [PROMIS]"
* item[=].text = "In general, please rate how well you carry out your usual social activities and roles. (This includes activities at home, at work and in your community, and responsibilities as a parent, child, spouse, employee, friend, etc.)"
* item[=] insert WeightedOptionIntl($LNC, LA9206-9, Excellent, Ausgezeichnet, 5)
* item[=] insert WeightedOptionIntl($LNC, LA13913-1, Very Good, Sehr gut, 4)
* item[=] insert WeightedOptionIntl($LNC, LA8967-7, Good, Gut, 3)
* item[=] insert WeightedOptionIntl($LNC, LA8968-5, Fair, Einigermaßen, 2)
* item[=] insert WeightedOptionIntl($LNC, LA8969-3, Poor, Schlecht, 1)

// ---- Global06: everyday physical activities (GPH) — DE pending (item and options) ----
* item[+].linkId = "promis-global06"
* item[=].type = #choice
* item[=].prefix = "Global06"
* item[=].code = $LNC#61582-3 "To what extent are you able to carry out your everyday physical activities such as walking, climbing stairs, carrying groceries, or moving a chair [PROMIS]"
* item[=].text = "To what extent are you able to carry out your everyday physical activities such as walking, climbing stairs, carrying groceries, or moving a chair?"
* item[=] insert WeightedOption($LNC, LA13937-0, Completely, 5)
* item[=] insert WeightedOption($LNC, LA13938-8, Mostly, 4)
* item[=] insert WeightedOption($LNC, LA13939-6, Moderately, 3)
* item[=] insert WeightedOption($LNC, LA13940-4, A little, 2)
* item[=] insert WeightedOption($LNC, LA6568-5, Not at all, 1)

// ---- Stem for Global10/08/07 (display item; flat structure so that %resource.item.where() reaches every item) ----
* item[+].linkId = "PROMIS-GH.Past7Days"
* item[=].type = #display
* item[=].text = "In the past 7 days…"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "In den letzten 7 Tagen:"

// ---- Global10: emotional problems (GMH, recoded: Never=5 … Always=1) — DE item pending ----
* item[+].linkId = "promis-global10"
* item[=].type = #choice
* item[=].prefix = "Global10"
* item[=].code = $LNC#61586-4 "How often have you been bothered by emotional problems such as feeling anxious, depressed or irritable in past 7 days [PROMIS]"
* item[=].text = "How often have you been bothered by emotional problems such as feeling anxious, depressed or irritable?"
* item[=] insert WeightedOptionIntl($LNC, LA6270-8, Never, Nie, 5)
* item[=] insert WeightedOptionIntl($LNC, LA10066-1, Rarely, Selten, 4)
* item[=] insert WeightedOptionIntl($LNC, LA10082-8, Sometimes, Manchmal, 3)
* item[=] insert WeightedOptionIntl($LNC, LA10044-8, Often, Oft, 2)
* item[=] insert WeightedOptionIntl($LNC, LA9933-8, Always, Immer, 1)

// ---- Global08: fatigue (GPH, recoded: None=5 … Very severe=1) — DE pending (item and options) ----
* item[+].linkId = "promis-global08"
* item[=].type = #choice
* item[=].prefix = "Global08"
* item[=].code = $LNC#61584-9 "How would you rate your fatigue on average in past 7 days [PROMIS]"
* item[=].text = "How would you rate your fatigue on average?"
* item[=] insert WeightedOption($LNC, LA137-2, None, 5)
* item[=] insert WeightedOption($LNC, LA6752-5, Mild, 4)
* item[=] insert WeightedOption($LNC, LA6751-7, Moderate, 3)
* item[=] insert WeightedOption($LNC, LA6750-9, Severe, 2)
* item[=] insert WeightedOption($LNC, LA13958-6, Very severe, 1)

// ---- Global07: pain intensity NRS 0-10 (GPH) ----
// Integer item 0-10, identical to promis-global07 in PROMIS-29. The Questionnaire profile allows
// only Coding answerOptions, so the v1.2 recoding (0→5, 1-3→4, 4-6→3, 7-9→2, 10→1) is applied in
// the gphRaw variable instead of itemWeight on options.
* item[+].linkId = "promis-global07"
* item[=].type = #integer
* item[=].prefix = "Global07"
* item[=].code = $LNC#61583-1 "How would you rate your pain on average in past 7 days [PROMIS]"
* item[=].text = "How would you rate your pain on average?"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Wie würden Sie Ihre Schmerzen im Allgemeinen einschätzen?"
* item[=].extension[+].url = $hl7-questionnaire-unit
* item[=].extension[=].valueCoding = $UCUM#{score} "{score}"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 10


// Global Physical Health raw score (4-20)
* item[+].linkId = "promis-global-health-score-physical-raw"
* item[=].type = #decimal
* item[=].prefix = "GPH"
* item[=].code[+] = $LNC#71972-4 "PROMIS-10 Global Physical Health (GPH) score"
* item[=].code[+] = $mii-cs-pro-score-catalogue#promis-global-health-physical-raw "PROMIS Global Health - Global Physical Health Raw Score (4-20)"
* item[=].text = "Global Physical Health raw score (4-20)"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Rohwert Global Physical Health (4-20)"
* item[=].readOnly = true
* item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].extension[=].valueExpression.name = "Scoreberechnung"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%gphRaw"
* item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].url = $hl7-questionnaire-unit
* item[=].extension[=].valueCoding = $UCUM#{score} "{score}"
* item[=].extension[+].url = $sdc-questionnaire-observation-extract-category
* item[=].extension[=].valueCodeableConcept.coding = $hl7-observation-category#survey

// Global Mental Health raw score (4-20)
* item[+].linkId = "promis-global-health-score-mental-raw"
* item[=].type = #decimal
* item[=].prefix = "GMH"
* item[=].code[+] = $LNC#71970-8 "PROMIS-10 Global Mental Health (GMH) score"
* item[=].code[+] = $mii-cs-pro-score-catalogue#promis-global-health-mental-raw "PROMIS Global Health - Global Mental Health Raw Score (4-20)"
* item[=].text = "Global Mental Health raw score (4-20)"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "Rohwert Global Mental Health (4-20)"
* item[=].readOnly = true
* item[=].extension[+].url = $sdc-questionnaire-calculated-expression
* item[=].extension[=].valueExpression.name = "Scoreberechnung"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%gmhRaw"
* item[=].extension[+].url = $sdc-questionnaire-observation-extract
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].url = $hl7-questionnaire-unit
* item[=].extension[=].valueCoding = $UCUM#{score} "{score}"
* item[=].extension[+].url = $sdc-questionnaire-observation-extract-category
* item[=].extension[=].valueCodeableConcept.coding = $hl7-observation-category#survey
