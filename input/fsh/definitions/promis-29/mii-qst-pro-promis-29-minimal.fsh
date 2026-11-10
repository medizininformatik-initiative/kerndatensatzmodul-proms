// RETIRED mit 2027.0.0-ballot.2 (Beads g3b.8 / 0fu.7): Die 8-Item-Minimalvariante (2 von 8
// Domaenen, kein Scoring) war ein unfertiges Demo-Subset und trug seit der Master-Migration
// veraltete deutsche Wortlaute. Bereits am 2026-05-06 auf release/v2026.3.0 entfernt
// (Commit 87396d1299), der Merge-back nach dev fehlte. Subsets werden ueber derivedFrom
// auf die Hauptinstanz und die Itembank-linkIds gebildet, nicht ueber Kopien.
Instance: mii-qst-pro-promis-29-minimal
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PROMIS-29 Minimal [retired]"
Description: "RETIRED. Eight-item demonstration subset of PROMIS-29 (Physical Function + Anxiety, no scoring), withdrawn with 2027.0.0-ballot.2. Build subsets by referencing mii-qst-pro-promis-29 via derivedFrom and the canonical item-bank linkIds instead. Kept as an empty shell so that the canonical URL stays resolvable."
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)
* insert PROMIS_Copyright_DE

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29-minimal"
* derivedFrom = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29"
* status = #retired
* experimental = true
* language = #en
* code[+] = $mii-cs-pro-questionnaire-catalogue#promis-promis29 "PROMIS-29 Questionnaire"

* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[collectable].valueBoolean = false
* extension[capabilities].extension[calculatable].valueBoolean = false
* extension[capabilities].extension[extractable].valueBoolean = false
* extension[capabilities].extension[domainAligned].valueBoolean = false
