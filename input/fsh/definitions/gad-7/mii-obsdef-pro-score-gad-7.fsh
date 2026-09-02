// GAD-7 (Spitzer et al. 2006) — Summenscore der sieben Items, Bereich 0-21.
// Höhere Werte zeigen eine stärker ausgeprägte Angstsymptomatik an.
//
// Schweregrade laut Originalpublikation: 5 / 10 / 15 als Schwellen für leichte, moderate und
// schwere Angstsymptomatik. Ein Wert ab 10 gilt verbreitet als Hinweis auf eine klinisch
// relevante generalisierte Angststörung und begründet weitere Abklärung.
// Die Schwellen sind hier als Referenzintervalle DOKUMENTIERT, aber bewusst NICHT als
// ausführbare Interpretationslogik ausgeliefert (MDR-Abgrenzung, siehe IG-Scoring-Seite).

Instance: mii-obsdef-pro-score-gad-7
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO Score GAD-7"
Description: "GAD-7 Summenscore (0-21) — Screening auf generalisierte Angststörung"
Usage: #definition
* insert ObsDefVersion
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[loinc] = $LNC#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
* code.coding[mii] = $mii-cs-pro-score-catalogue#phq-gad7-total "GAD-7 Total Score (0-21)"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method = $LNC#69737-5 "Generalized anxiety disorder 7 item (GAD-7)"
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

* qualifiedInterval[0].category = #absolute
* qualifiedInterval[0].range.low.value = 0
* qualifiedInterval[0].range.high.value = 21
* qualifiedInterval[0].range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease

// Schweregrade (Spitzer, Kroenke, Williams & Löwe 2006)
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 0
* qualifiedInterval[=].range.high.value = 4
* qualifiedInterval[=].condition = "Minimale Angstsymptomatik (minimal anxiety)"
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 5
* qualifiedInterval[=].range.high.value = 9
* qualifiedInterval[=].condition = "Leichte Angstsymptomatik (mild anxiety)"
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 10
* qualifiedInterval[=].range.high.value = 14
* qualifiedInterval[=].condition = "Moderate Angstsymptomatik (moderate anxiety) — weitere Abklärung empfohlen"
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 15
* qualifiedInterval[=].range.high.value = 21
* qualifiedInterval[=].condition = "Schwere Angstsymptomatik (severe anxiety)"
