# Changelog - MII IG PRO v2026.2.0

## Changelog

Diese Seite dokumentiert die Änderungen zwischen den Versionen des MII PRO-Moduls.

**Version: 2026.3.0** (unreleased)

Datum: –

PRO-Instrumente:

* Added: GAD-7 (Generalized Anxiety Disorder 7-item Scale) – vollständige Implementierung mit Questionnaire, Terminologie und Scoring (#80)

FHIR-Ressourcen:

* Removed: Unvollständiger ConceptMap-Stub `mii-cm-pro-bdi-ii-to-promis-depression-observation` entfernt (nur 2 von 64 PROsetta-Stone-Einträgen). Architektur-Entscheidung: Score-Konversionen werden zukünftig als CQL Library modelliert (geplant für 2027-Release)
* Fixed: Capabilities-Extension in `mii-qst-pro-promis-cognitive-function-sf4a` vervollständigt (`domainAligned`=true ergänzt)
* Added: Capabilities-Extension zu `mii-qst-pro-pro-ctcae-breast-de` hinzugefügt (`displayable`+`collectable`=true; `calculatable`/`extractable`/`domainAligned`=false – bewusste Entscheidung wegen cross-entity-Charakter, Composite-Grade-Scoring und noch ausstehender Scoring-Algorithmus-Wahl)

**Version: 2026.2.0** (unreleased)

Datum: –

Dependencies und Tooling:

* Changed: Dependency de.gematik.isik von 5.0.0 auf 5.1.1 aktualisiert (konsistent mit Bildgebung und Laborbefund)
* Changed: Dependency hl7.fhir.uv.extensions.r4 von 5.1.0 auf 5.2.0 aktualisiert (konsistent mit Bildgebung und Laborbefund)

ObservationDefinition:

* Fixed: Depression T-Score ObsDef – Populationsinformation von `qualifiedInterval.context.coding` nach `qualifiedInterval.appliesTo` verschoben (`context` beschreibt die Intervall-Kategorie, nicht die Zielpopulation)

EORTC QLQ-C30 ValueSet-Architektur:

* Changed: EORTC QLQ-C30 ValueSets von contained auf standalone external ValueSets umgestellt (Variant A)
* Added: Post-SUSHI ValueSet-Expansion-Script für LHC Forms Rendering-Kompatibilität
* Fixed: Display-Texte zu EORTC QLQ-C30 ValueSet-Konzepten hinzugefügt

**Version: 2026.1.0** (unreleased)

Datum: –

PRO-Instrumente:

* Added: DASS-21 (Depression Anxiety Stress Scales) – vollständige Implementierung mit Questionnaire, Terminologie (CodeSystem, ValueSets), Scoring und Beispielen
* Added: DASS-21 IG-Dokumentationsseite

Qualitätssicherung:

* Fixed: ObsDef-Titel entdoppelt, IG-Seite Score-Darstellung verbessert
* Fixed: Kaputte `` Syntax durch Markdown-Blockquotes ersetzt (DASS-21, PHQ-9 IG-Seiten)
* Fixed: CodeSystem/ValueSet auf kurze IDs umgestellt

**Version: 2026.0.1**

Datum: 26.01.2026

Bugfix-Release mit PROMIS-29 Ergänzungen und Canonical-URL-Korrektur.

FHIR-Ressourcen:

* Added: PROMIS-29 Deutsche Variante und umfassende Beispiele
* Fixed: PROMIS-29 QuestionnaireResponse Validierungsfehler behoben
* Fixed: Canonical URLs auf https standardisiert (http zu https)
* Fixed: packageId korrigiert (kerndatensatz.pro zu kerndatensatz.pros)

IG-Dokumentation:

* Changed: PROMIS IG-Seiten reorganisiert und Tree-Rendering gefixt
* Added: Individuelle Profilseiten für abstrakte Profile
* Added: SDC STU3 Spec-Links zu Questionnaire- und QR-Profilseiten

**Version: 2026.0.0**

Datum: 12.01.2026

Erster stabiler Release des MII PRO-Moduls für den produktiven Einsatz.

FHIR-Ressourcen und Profile:

* Added: SearchParameters für Questionnaire, QuestionnaireResponse, Observation (Suche nach Code, Subject, Patient)
* Added: CapabilityStatement zur Dokumentation der unterstützten FHIR-Operationen des PRO-Moduls
* Fixed: meta.profile zu allen Observation-Beispielinstanzen hinzugefügt (FHIR-Konformität)

Versionsverwaltung und Metadaten:

* Added: MetaProfile RuleSet für konsistente Profil-Konformanz mit versionierten Canonicals (Format: `{canonical}|{version}`)
* Added: ObsDefVersion RuleSet für R5-Backport der artifact-version Extension in ObservationDefinition (R4-Kompatibilität)
* Changed: Version RuleSets in zentrale Datei extrahiert (`input/fsh/rulesets/version.fsh`) für einfachere Release-Verwaltung

Dependencies und Tooling:

* Changed: Abhängigkeit zu de.medizininformatikinitiative.kerndatensatz.meta auf 2026.0.0 aktualisiert
* Added: package.bake.yaml für Firely Bake Packaging-Workflow
* Changed: package.json Name-Korrektur zu `de.medizininformatikinitiative.kerndatensatz.pros`

Qualitätssicherung und Validierung:

* Added: EORTC QLQ-C30 Validierungs-Suppressions und QA-Dokumentation
* Added: Vollständige Wartung des Questionnaire- und Score-Katalogs
* Changed: CI/CD mit inline Java-Validierung, Gradle-Caching und Timing-Informationen für schnellere Builds

Developer Experience:

* Added: Claude Code Konfiguration mit Build-, Release- und IG-Export-Skills
* Added: Zentralisiertes `/build-package` Kommando für FHIR Package Building
* Added: `/mii-testdata-contribution` Skill für Testdaten-Repository
* Added: `/fix-ig-export-links` Skill für Simplifier IG Export Link-Reparatur

**Version: 2026.0.0-ballot**

Initiale Ballotierungsversion mit Fokus auf SDC-basierte PRO-Erfassung und Score-Berechnung.

PRO-Instrumente:

* PHQ-9 (Patient Health Questionnaire-9) mit vollständiger Score-Berechnung (Raw-Score und T-Score)
* EQ-5D-5L (EuroQol 5-Dimension 5-Level) mit Index-, VAS- und Profil-Scores
* PROMIS-29 Profile v2.1 mit allen 7 Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Social Function, Pain) und automatischer Scoring-Berechnung
* PROMIS Cognitive Function SF4a
* BDI-II (Beck Depression Inventory II) als Referenzimplementierung
* EORTC QLQ-C30 (Lebensqualität bei Krebspatienten) mit 15 Subskalen

FHIR Profile und Extensions:

* MII_PR_PRO_Questionnaire: SDC-basiertes Questionnaire-Profil mit Calculated Expressions und Conditional Display
* MII_PR_PRO_QuestionnaireResponse: Response-Erfassungsprofil mit SDC Extraction Capabilities
* MII_PR_PRO_Score_Blueprint: Vorlage für Score-Observations mit ObservationDefinition-Referenz
* MII_PR_PRO_Score_Instance: Instanz-Profil für berechnete Scores mit derivedFrom-Verknüpfung
* EX_MII_PRO_Questionnaire_Capabilities: Extension zur Dokumentation von Questionnaire-Fähigkeiten (displayable, collectable, calculatable, extractable)

Terminologie-Strategie:

* MII-kontrollierte CodeSysteme und ValueSets für zuverlässige Score-Berechnung mit ordinalValue-Extensions
* Deutsche Übersetzungen für alle Questionnaire-Items via translation-Extensions
* ordinalValue-Extensions (SDC STU3) für numerische Scoring-Gewichte in Antwort-Optionen
* FHIRPath-Ausdrücke nutzen `.ordinal()` für Weight-basierte Berechnungen

Technische Basis:

* FHIR R4 (4.0.1) mit SDC 3.0.0 (Structured Data Capture)
* Dependency zu de.medizininformatikinitiative.kerndatensatz.meta 2026.0.0
* Dependency zu de.gematik.isik 5.0.0 für deutsche Interoperabilität

