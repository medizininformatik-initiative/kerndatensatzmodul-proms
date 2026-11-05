// ABQ — neutral benannte 4-stufige Zustimmungsskala (Items ABQ_01-ABQ_16).
//
// METADATA-ONLY (Tier B): Die Originalbezeichnungen der Antwortstufen dürfen laut Rechteinhaber
// nicht veröffentlicht werden; die Konzepte heißen daher neutral Stufe 1 … Stufe 4.
// Stufe n entspricht der n-ten Antwortoption in der Reihenfolge des Originalinstruments
// (itemWeight 1-4). OFFEN: Ob Stufe 1 oder Stufe 4 die stärkere Adhärenzbarriere ausdrückt,
// ist hier nicht verifiziert (siehe Kommentar im Questionnaire und in der ObservationDefinition).

CodeSystem: MII_CS_PRO_ABQ_Answers
Id: mii-cs-pro-abq-answers
Title: "MII CS PRO ABQ Answers"
Description: "Neutral benannte 4-stufige Antwortskala des ABQ (metadata-only, Tier B). Konzeptbezeichnungen bewusst neutral (Stufe 1-4) statt der Original-Antwortbezeichnungen. itemWeight 1-4."

* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-abq-answers"
* ^status = #active
* ^experimental = true
* ^content = #complete
* ^caseSensitive = true
* ^language = #de
* insert ItemWeightProperty

* insert WeightedConcept(stufe-1, Stufe 1, 1)
* insert WeightedConcept(stufe-2, Stufe 2, 2)
* insert WeightedConcept(stufe-3, Stufe 3, 3)
* insert WeightedConcept(stufe-4, Stufe 4, 4)
