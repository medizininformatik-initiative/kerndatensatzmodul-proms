// GAD-7 (Generalized Anxiety Disorder Scale-7)
//
// Original: Spitzer RL, Kroenke K, Williams JBW, Löwe B. A brief measure for assessing generalized
// anxiety disorder: the GAD-7. Arch Intern Med 2006; 166(10):1092-1097. doi:10.1001/archinte.166.10.1092
// Deutsche Validierung: Löwe B, Decker O, Müller S, et al. Validation and standardization of the
// Generalized Anxiety Disorder Screener (GAD-7) in the general population. Med Care 2008;
// 46(3):266-274. doi:10.1097/MLR.0b013e318160d093 (n=5030)
// Lizenz: frei verfügbar (Pfizer-gesponsert, keine Genehmigung erforderlich) — wie PHQ-9.
//
// LINKIDS: PHQ-D-Block-Namespace phq-phq5a…phq-phq5g. Der GAD-7 ist Teil der PHQ-Familie;
// die Items 1 und 2 bilden zugleich den GAD-2 und gehen in den PHQ-4 ein. Die Nutzung des
// gemeinsamen Namespace stellt sicher, dass dieselbe Frage instrumentenübergreifend denselben
// linkId traegt — sonst waere spaeter eine Migrations-ConceptMap noetig (vgl. PHQ-9, 2026.5.0).
// Die uebliche GAD-7-Nummerierung (Item 1-7) wird ueber mii-cm-pro-gad-7-linkids abgebildet.
//
// ANTWORTMODELLIERUNG: inline answerOption ueber das geteilte RuleSet
// Phq4PointFrequencyAnswerOptions (LOINC-Antwortliste LL358-3, Gewichte 0-3) — dieselbe Skala
// wie PHQ-9. Fall A nach docs/design/pcor-pss-instrumente.md Abschnitt 4.
//
// SCORING: Summe der sieben Items, Bereich 0-21. Cut-offs 5/10/15 (leicht/moderat/schwer,
// Spitzer et al. 2006) sind in der ObservationDefinition DOKUMENTIERT, aber nicht als
// ausfuehrbare Interpretationslogik ausgeliefert.
//
// NICHT UEBERNOMMEN aus dem Vorgaengerbranch feat/gad-7: das Item phq-gad7-promis-tscore
// (PROMIS-Anxiety-Umrechnung als FHIRPath-Crosswalk). Score-Konversionen werden laut
// Architekturentscheidung als CQL-Library modelliert (Bead 6yu), nicht im Questionnaire.

Instance: mii-qst-pro-gad-7
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO GAD-7"
Description: "Generalized Anxiety Disorder Scale-7 (GAD-7) — Screening auf generalisierte Angststoerung, mit deutscher Uebersetzung (PHQ-D)"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = $mii-qst-pro-gad-7
* status = #active
* experimental = true
* language = #en
* code[+] = $LNC#69737-5 "Generalized anxiety disorder 7 item (GAD-7)"
* code[+] = $mii-cs-pro-questionnaire-catalogue#phq-gad7 "GAD-7 (Generalized Anxiety Disorder Scale-7, Spitzer et al. 2006)"

* copyright = "GAD-7 © Pfizer Inc. Entwickelt von Robert L. Spitzer, Kurt Kroenke, Janet B.W. Williams und Bernd Löwe. Frei verfuegbar — keine Genehmigung fuer Reproduktion, Uebersetzung, Darstellung oder Nutzung erforderlich. Deutsche Fassung: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002)."

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Root-Variable: Summe der sieben GAD-Items (je 0-3, Gesamtbereich 0-21)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "gad7Sum"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^phq-phq5[a-g]$')).answer.value.ordinal().sum()"

// Item 0: Einleitung
* item[0].linkId = "gad-7-intro"
* item[0].type = #display
* item[0].text = "Over the last two weeks, how often have you been bothered by the following problems?"
* item[0].text.extension[0].url = $hl7-translation
* item[0].text.extension[0].extension[0].url = "lang"
* item[0].text.extension[0].extension[0].valueCode = #de
* item[0].text.extension[0].extension[1].url = "content"
* item[0].text.extension[0].extension[1].valueString = "Wie oft fühlten Sie sich im Verlauf der letzten 2 Wochen durch die folgenden Beschwerden beeinträchtigt?"

// Item 1: Feeling nervous, anxious, or on edge
* item[1].linkId = "phq-phq5a"
* item[1].type = #choice
* item[1].prefix = "1"
* item[1].text = "Feeling nervous, anxious, or on edge"
* item[1].text.extension[0].url = $hl7-translation
* item[1].text.extension[0].extension[0].url = "lang"
* item[1].text.extension[0].extension[0].valueCode = #de
* item[1].text.extension[0].extension[1].url = "content"
* item[1].text.extension[0].extension[1].valueString = "Nervosität, Ängstlichkeit oder Anspannung"
* item[1] insert Phq4PointFrequencyAnswerOptions

// Item 2: Not being able to stop or control worryi
* item[2].linkId = "phq-phq5b"
* item[2].type = #choice
* item[2].prefix = "2"
* item[2].text = "Not being able to stop or control worrying"
* item[2].text.extension[0].url = $hl7-translation
* item[2].text.extension[0].extension[0].url = "lang"
* item[2].text.extension[0].extension[0].valueCode = #de
* item[2].text.extension[0].extension[1].url = "content"
* item[2].text.extension[0].extension[1].valueString = "Nicht in der Lage sein, Sorgen zu stoppen oder zu kontrollieren"
* item[2] insert Phq4PointFrequencyAnswerOptions

// Item 3: Worrying too much about different things
* item[3].linkId = "phq-phq5c"
* item[3].type = #choice
* item[3].prefix = "3"
* item[3].text = "Worrying too much about different things"
* item[3].text.extension[0].url = $hl7-translation
* item[3].text.extension[0].extension[0].url = "lang"
* item[3].text.extension[0].extension[0].valueCode = #de
* item[3].text.extension[0].extension[1].url = "content"
* item[3].text.extension[0].extension[1].valueString = "Übermäßige Sorgen bezüglich verschiedener Angelegenheiten"
* item[3] insert Phq4PointFrequencyAnswerOptions

// Item 4: Trouble relaxing
* item[4].linkId = "phq-phq5d"
* item[4].type = #choice
* item[4].prefix = "4"
* item[4].text = "Trouble relaxing"
* item[4].text.extension[0].url = $hl7-translation
* item[4].text.extension[0].extension[0].url = "lang"
* item[4].text.extension[0].extension[0].valueCode = #de
* item[4].text.extension[0].extension[1].url = "content"
* item[4].text.extension[0].extension[1].valueString = "Schwierigkeiten zu entspannen"
* item[4] insert Phq4PointFrequencyAnswerOptions

// Item 5: Being so restless that it is hard to sit
* item[5].linkId = "phq-phq5e"
* item[5].type = #choice
* item[5].prefix = "5"
* item[5].text = "Being so restless that it is hard to sit still"
* item[5].text.extension[0].url = $hl7-translation
* item[5].text.extension[0].extension[0].url = "lang"
* item[5].text.extension[0].extension[0].valueCode = #de
* item[5].text.extension[0].extension[1].url = "content"
* item[5].text.extension[0].extension[1].valueString = "Rastlosigkeit, so dass Stillsitzen schwer fällt"
* item[5] insert Phq4PointFrequencyAnswerOptions

// Item 6: Becoming easily annoyed or irritable
* item[6].linkId = "phq-phq5f"
* item[6].type = #choice
* item[6].prefix = "6"
* item[6].text = "Becoming easily annoyed or irritable"
* item[6].text.extension[0].url = $hl7-translation
* item[6].text.extension[0].extension[0].url = "lang"
* item[6].text.extension[0].extension[0].valueCode = #de
* item[6].text.extension[0].extension[1].url = "content"
* item[6].text.extension[0].extension[1].valueString = "Schnelle Verärgerung oder Gereiztheit"
* item[6] insert Phq4PointFrequencyAnswerOptions

// Item 7: Feeling afraid, as if something awful mi
* item[7].linkId = "phq-phq5g"
* item[7].type = #choice
* item[7].prefix = "7"
* item[7].text = "Feeling afraid, as if something awful might happen"
* item[7].text.extension[0].url = $hl7-translation
* item[7].text.extension[0].extension[0].url = "lang"
* item[7].text.extension[0].extension[0].valueCode = #de
* item[7].text.extension[0].extension[1].url = "content"
* item[7].text.extension[0].extension[1].valueString = "Gefühl der Angst, so als würde etwas Schlimmes passieren"
* item[7] insert Phq4PointFrequencyAnswerOptions

// Item 8: GAD-7 Summenwert (0-21)
* item[8].linkId = "phq-gad7-score-total"
* item[8].type = #decimal
* item[8].prefix = "Score"
* item[8].code = $LNC#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
* item[8].readOnly = true
* item[8].extension[0].url = $sdc-questionnaire-calculated-expression
* item[8].extension[0].valueExpression.name = "Scoreberechnung"
* item[8].extension[0].valueExpression.language = #text/fhirpath
* item[8].extension[0].valueExpression.expression = "%gad7Sum"
* item[8].text = "GAD-7 Total Score (0-21)"
* item[8].text.extension[0].url = $hl7-translation
* item[8].text.extension[0].extension[0].url = "lang"
* item[8].text.extension[0].extension[0].valueCode = #de
* item[8].text.extension[0].extension[1].url = "content"
* item[8].text.extension[0].extension[1].valueString = "GAD-7 Summenwert (0-21)"
* item[8].extension[1].url = $sdc-questionnaire-observation-extract
* item[8].extension[1].valueBoolean = true
* item[8].extension[2].url = $hl7-questionnaire-unit
* item[8].extension[2].valueCoding.system = $UCUM
* item[8].extension[2].valueCoding.code = #{score}
* item[8].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[8].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[8].extension[3].valueCodeableConcept.coding.code = #survey
