// RETIRED mit 2027.0.0-rc.1 (Beads g3b.8): Die DE-primaere Praesentationsvariante war ein
// 1:1-Spiegel von mii-qst-pro-promis-29 und musste bei jedem Fix doppelt gepflegt werden
// (Ursache der Social-Fehler HDB-1007/1008). Die Hauptinstanz traegt alle deutschen Texte
// als translation-Extension; DE-primaere Darstellung liefert Questionnaire/$localize
// (Form Manager) bzw. ein Renderer mit translation-Support. Die Canonical bleibt aufloesbar.
Instance: mii-qst-pro-promis-29-de
InstanceOf: mii-pr-pro-questionnaire
Title: "MII QST PRO PROMIS-29 (German) [retired]"
Description: "RETIRED. German-primary presentation variant of PROMIS-29 Profile v2.1, withdrawn with 2027.0.0-rc.1. Use mii-qst-pro-promis-29 (English primary, German via translation extension) and Questionnaire/$localize for German-primary rendering. Kept as an empty shell so that the canonical URL stays resolvable."
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire)
* insert PROMIS_Copyright_DE

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29-de"
* derivedFrom = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29"
* status = #retired
* experimental = true
* language = #de
* code[+] = $LNC#62337-1 "PROMIS item bank - 29 profile"
* code[+] = $mii-cs-pro-questionnaire-catalogue#promis-promis29 "PROMIS-29 Questionnaire"

* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[collectable].valueBoolean = false
* extension[capabilities].extension[calculatable].valueBoolean = false
* extension[capabilities].extension[extractable].valueBoolean = false
* extension[capabilities].extension[domainAligned].valueBoolean = false
