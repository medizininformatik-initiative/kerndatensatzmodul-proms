// BAASIS — neutral benannte 5-stufige Häufigkeitsskala (Teilfragen "_a" zu BAASIS 1A, 1B, 2).
//
// METADATA-ONLY (Tier B): Die Originalbezeichnungen der Antwortstufen dürfen laut Rechteinhaber
// nicht veröffentlicht werden. Die Konzepte sind daher bewusst neutral benannt (Stufe 1 …
// Stufe 5). Stufe n entspricht der n-ten Antwortoption in aufsteigender Reihenfolge des
// Originalinstruments (itemWeight 1-5). Die Zuordnung zu den Originalbezeichnungen liegt nur in
// der lizenzierten Vollversion vor (Form Server, zugriffsbeschränkt).

CodeSystem: MII_CS_PRO_BAASIS_Frequency
Id: mii-cs-pro-baasis-frequency
Title: "MII CS PRO BAASIS Frequency"
Description: "Neutral benannte 5-stufige Häufigkeitsskala der BAASIS-Teilfragen (metadata-only, Tier B). Konzeptbezeichnungen bewusst neutral (Stufe 1-5) statt der Original-Antwortbezeichnungen. itemWeight 1-5."

* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-baasis-frequency"
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
* insert WeightedConcept(stufe-5, Stufe 5, 5)
