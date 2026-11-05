// MTSOSD-R59 — neutral benannte 5-stufige Auftretensskala (Stufe 0-4) je Symptom.
//
// METADATA-ONLY (Tier B): Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht
// werden; die Konzepte heißen daher neutral Stufe 0 … Stufe 4 (itemWeight 0-4). Stufe 0 bedeutet
// "Symptom tritt nicht auf" und steuert die Anzeige der zugehörigen Belastungsfrage.

CodeSystem: MII_CS_PRO_MTSOSD_R59_Occurrence
Id: mii-cs-pro-mtsosd-r59-occurrence
Title: "MII CS PRO MTSOSD-R59 Occurrence"
Description: "Neutral benannte 5-stufige Auftretensskala des MTSOSD-R59 (metadata-only, Tier B). Konzeptbezeichnungen bewusst neutral (Stufe 0-4). itemWeight 0-4."

* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-mtsosd-r59-occurrence"
* ^status = #active
* ^experimental = true
* ^content = #complete
* ^caseSensitive = true
* ^language = #de
* insert ItemWeightProperty

* insert WeightedConcept(stufe-0, Stufe 0, 0)
* insert WeightedConcept(stufe-1, Stufe 1, 1)
* insert WeightedConcept(stufe-2, Stufe 2, 2)
* insert WeightedConcept(stufe-3, Stufe 3, 3)
* insert WeightedConcept(stufe-4, Stufe 4, 4)
