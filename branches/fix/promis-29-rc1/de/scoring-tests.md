# Scoring Tests - MII IG PRO v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* **Scoring Tests**

## Scoring Tests

Das Scoring des PROMIS-29-Profils ist durch eine ausführbare, geschichtete Testsuite abgedeckt. Alle Schichten speisen sich aus **einer Szenario-Quelle**: `scripts/data/scoring-cases/promis29-cases.json` — 22 Fälle (Boden, Decke und eine asymmetrische Mitte je Domäne, dazu eine Teilantwort für den Vollständigkeits-Guard). Antworten stehen als **Code+Label-Paar**; das Label wirkt als Checksumme und wird vor jedem Testlauf gegen die vendorte Gewichts-Fixture geprüft. Erwartete Raw- und T-Scores sind Literale, verankert in den offiziellen Quellen (LOINC-Antwortlisten, HealthMeasures Adult Profile Scoring Manual, v2.1-Appendix) — nie aus den getesteten Artefakten abgeleitet.

### Schichten

| | | |
| :--- | :--- | :--- |
| Definition | Lookup-Tabellen, Duplikat-Erkennung, Guards und Antwortgewichte gegen die vendorten Referenzen | `scripts/check-promis29-scoring.py`(CI; Stufe 2 zusätzlich gegen eine lokale LOINC-Release) |
| Form Filler | Die`calculatedExpression`s beider Sprachvarianten, ausgeführt mit der echten fhirpath.js-Engine (derselben, die LHC-Forms einbettet) | `scripts/promis29-scoring.test.mjs`(CI) |
| Server | [TestScript promis29-scoring](TestScript-promis29-scoring.md):`$validate`+ Anlage je Szenario, plus synthetisierte`$extract`-Tests mit Asserts auf die Score-Observations;[TestScript promis29-terminology](TestScript-promis29-terminology.md): jedes Antwort-Coding (Code**und**Display) per`CodeSystem/$validate-code` | `scoring-e2e`-Workflow (CI) oder ein beliebiger TestScript-Runner |

### Fixtures

Jedes Szenario liegt als konforme Beispiel-`QuestionnaireResponse` (`promis29-*`) bei und wird vom IG-Publisher bei jedem Build mitvalidiert. Die Fixtures enthalten die erwarteten Score-Antworten — sie repräsentieren das Ergebnis eines korrekt rechnenden Form Fillers.

### TestScripts selbst ausführen

Die TestScripts laufen auf [AEGIS Touchstone](https://touchstone.aegis.net/) oder der Open-Source-Engine [fhir-crucible/testscript-engine](https://github.com/fhir-crucible/testscript-engine). `scripts/assemble-testscript-rundir.mjs` baut das Laufverzeichnis der Engine aus den publizierten Artefakten (schreibt Fixture-Referenzen auf Dateien um und synthetisiert die `$extract`-Tests, deren `Parameters`-Wrapper bewusst kein IG-Artefakt ist). Anforderungen ans Ziel: FHIR-R4-Server mit geladenem PROMIS-29-Questionnaire; SDC-`$extract` für die Extraktionstests; LOINC-fähige Terminologie für das Terminologie-TestScript. Die deutsche Display-Validierung (`displayLanguage=de`) folgt mit dem geplanten CodeSystem-Supplement.

Generatoren und Quellen sind in den Skript-Köpfen dokumentiert (`scripts/generate-promis29-testscripts.py`).

