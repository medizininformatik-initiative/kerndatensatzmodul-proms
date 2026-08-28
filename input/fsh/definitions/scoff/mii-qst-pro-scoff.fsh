// SCOFF — Screening-Fragebogen für Essstörungen (5 Items)
//
// Original: Morgan JF, Reid F, Lacey JH. The SCOFF questionnaire: assessment of a new screening
// tool for eating disorders. BMJ 1999; 319(7223):1467-1468. doi:10.1136/bmj.319.7223.1467
// Deutscher Kontext: Hölling H, Schlack R. Essstörungen im Kindes- und Jugendalter.
// Bundesgesundheitsblatt 2007; 50:794-799. doi:10.1007/s00103-007-0242-6
// Lizenz: frei verfügbar (Tier A) — vollständig displayable und collectable.
//
// Deutsche Item-Texte: PCOR-MII Item Level Dictionary (MASTER_3EntitiesOverview.xlsx, Sheet
// "Item Level Dictionary PSS", Variablen SCOFF01–SCOFF05).
//
// SPRACHE: language = #de. Abweichung von der sonst üblichen EN-primär-Konvention, weil für das
// PCOR-MII-PSS-Set nur die validierten deutschen Formulierungen vorliegen. Die englischen
// Originaltexte nach Morgan et al. 1999 sind als Übersetzung (#en) beigefügt — nicht umgekehrt,
// da die deutsche Fassung die hier erhobene ist.
//
// ANTWORTMODELLIERUNG: answerValueSet auf die GETEILTE Ja/Nein-Skala
// (mii-vs-pro-yes-no-answers, Modul-Infrastruktur — siehe docs/design/pcor-pss-instrumente.md
// Abschnitt 10). Gewichte (0/1) liegen als ordinalValue-Property am CodeSystem.
// In-Form-Auflösung von .ordinal() aus einem answerValueSet ist engine-abhängig; die
// autoritative Score-Berechnung erfolgt serverseitig via CQL (Kanal B der Scoring-Architektur).
//
// TERMINOLOGIE: Für SCOFF existiert weder ein LOINC- noch ein SNOMED-CT-Code (geprüft gegen
// LOINC 2.81 und SNOMED International 2026-05-01). Kodierung daher ausschließlich über den
// MII-Questionnaire-Katalog.
//
// SCORING: Summe der fünf binären Items (0-5). Der publizierte Cut-off >= 2 (Morgan et al. 1999:
// Sensitivität 100 %, Spezifität 87,5 %) ist in der ObservationDefinition als Referenzintervall
// DOKUMENTIERT, aber bewusst NICHT als ausführbare Interpretationslogik umgesetzt
// (MDR-Abgrenzung des Moduls).

Instance: mii-qst-pro-scoff
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO SCOFF"
Description: "SCOFF questionnaire — five-item screening tool for eating disorders (Morgan et al. 1999), German version per PCOR-MII item dictionary"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)

* url = $mii-qst-pro-scoff
* status = #active
* experimental = true
* language = #de
* code[+] = $mii-cs-pro-questionnaire-catalogue#scoff "SCOFF Questionnaire"

* copyright = "SCOFF questionnaire © Morgan, Reid & Lacey 1999 (BMJ). Frei verfügbar — keine Genehmigung für Reproduktion, Übersetzung oder Nutzung erforderlich. Lizenz-Status: frei verfügbar (Tier A)."

* extension[capabilities].extension[displayable].valueBoolean = true
* extension[capabilities].extension[collectable].valueBoolean = true
* extension[capabilities].extension[calculatable].valueBoolean = true
* extension[capabilities].extension[extractable].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true

// Root-Variable: Summe der fünf SCOFF-Items (je 0 oder 1, Gesamtbereich 0-5)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "scoffSum"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^scoff-q0[1-5]$')).answer.value.ordinal().sum()"

// Item 0: Einleitung
* item[0].linkId = "scoff-intro"
* item[0].type = #display
* item[0].text = "In den nächsten Fragen geht es um das Thema Essen:"
* item[0].text.extension[0].url = $hl7-translation
* item[0].text.extension[0].extension[0].url = "lang"
* item[0].text.extension[0].extension[0].valueCode = #en
* item[0].text.extension[0].extension[1].url = "content"
* item[0].text.extension[0].extension[1].valueString = "The following questions are about eating:"

// Item 1: Sick — Erbrechen bei Völlegefühl
* item[1].linkId = "scoff-q01"
* item[1].type = #choice
* item[1].prefix = "1"
* item[1].text = "Übergeben Sie sich, wenn Sie sich unangenehm voll fühlen?"
* item[1].text.extension[0].url = $hl7-translation
* item[1].text.extension[0].extension[0].url = "lang"
* item[1].text.extension[0].extension[0].valueCode = #en
* item[1].text.extension[0].extension[1].url = "content"
* item[1].text.extension[0].extension[1].valueString = "Do you make yourself Sick because you feel uncomfortably full?"
* item[1].answerValueSet = Canonical(MII_VS_PRO_Yes_No_Answers)

// Item 2: Control — Kontrollverlust über das Essen
* item[2].linkId = "scoff-q02"
* item[2].type = #choice
* item[2].prefix = "2"
* item[2].text = "Machen Sie sich Sorgen, weil Sie manchmal nicht mit dem Essen aufhören können?"
* item[2].text.extension[0].url = $hl7-translation
* item[2].text.extension[0].extension[0].url = "lang"
* item[2].text.extension[0].extension[0].valueCode = #en
* item[2].text.extension[0].extension[1].url = "content"
* item[2].text.extension[0].extension[1].valueString = "Do you worry you have lost Control over how much you eat?"
* item[2].answerValueSet = Canonical(MII_VS_PRO_Yes_No_Answers)

// Item 3: One stone — Gewichtsverlust (im Original 1 stone = 6,35 kg in 3 Monaten)
* item[3].linkId = "scoff-q03"
* item[3].type = #choice
* item[3].prefix = "3"
* item[3].text = "Haben Sie in der letzten Zeit mehr als 6 kg in 3 Monaten abgenommen?"
* item[3].text.extension[0].url = $hl7-translation
* item[3].text.extension[0].extension[0].url = "lang"
* item[3].text.extension[0].extension[0].valueCode = #en
* item[3].text.extension[0].extension[1].url = "content"
* item[3].text.extension[0].extension[1].valueString = "Have you recently lost more than One stone (6.35 kg) in a 3 month period?"
* item[3].answerValueSet = Canonical(MII_VS_PRO_Yes_No_Answers)

// Item 4: Fat — Körperschemastörung
* item[4].linkId = "scoff-q04"
* item[4].type = #choice
* item[4].prefix = "4"
* item[4].text = "Finden Sie sich zu dick, während andere Sie zu dünn finden?"
* item[4].text.extension[0].url = $hl7-translation
* item[4].text.extension[0].extension[0].url = "lang"
* item[4].text.extension[0].extension[0].valueCode = #en
* item[4].text.extension[0].extension[1].url = "content"
* item[4].text.extension[0].extension[1].valueString = "Do you believe yourself to be Fat when others say you are too thin?"
* item[4].answerValueSet = Canonical(MII_VS_PRO_Yes_No_Answers)

// Item 5: Food — Dominanz des Essens im Leben
* item[5].linkId = "scoff-q05"
* item[5].type = #choice
* item[5].prefix = "5"
* item[5].text = "Würden Sie sagen, dass Essen Ihr Leben sehr beeinflusst?"
* item[5].text.extension[0].url = $hl7-translation
* item[5].text.extension[0].extension[0].url = "lang"
* item[5].text.extension[0].extension[0].valueCode = #en
* item[5].text.extension[0].extension[1].url = "content"
* item[5].text.extension[0].extension[1].valueString = "Would you say that Food dominates your life?"
* item[5].answerValueSet = Canonical(MII_VS_PRO_Yes_No_Answers)

// Item 6: SCOFF-Summenwert (0-5)
* item[6].linkId = "scoff-score-total"
* item[6].type = #decimal
* item[6].prefix = "Summenwert"
* item[6].code = $mii-cs-pro-score-catalogue#scoff-total "SCOFF Total Score"
* item[6].readOnly = true
* item[6].extension[0].url = $sdc-questionnaire-calculated-expression
* item[6].extension[0].valueExpression.name = "Scoreberechnung"
* item[6].extension[0].valueExpression.language = #text/fhirpath
* item[6].extension[0].valueExpression.expression = "%scoffSum"
* item[6].text = "SCOFF Summenwert (0-5)"
* item[6].text.extension[0].url = $hl7-translation
* item[6].text.extension[0].extension[0].url = "lang"
* item[6].text.extension[0].extension[0].valueCode = #en
* item[6].text.extension[0].extension[1].url = "content"
* item[6].text.extension[0].extension[1].valueString = "SCOFF Total Score (0-5)"
* item[6].extension[1].url = $sdc-questionnaire-observation-extract
* item[6].extension[1].valueBoolean = true
* item[6].extension[2].url = $hl7-questionnaire-unit
* item[6].extension[2].valueCoding.system = $UCUM
* item[6].extension[2].valueCoding.code = #{score}
* item[6].extension[3].url = $sdc-questionnaire-observation-extract-category
* item[6].extension[3].valueCodeableConcept.coding.system = $hl7-observation-category
* item[6].extension[3].valueCodeableConcept.coding.code = #survey
