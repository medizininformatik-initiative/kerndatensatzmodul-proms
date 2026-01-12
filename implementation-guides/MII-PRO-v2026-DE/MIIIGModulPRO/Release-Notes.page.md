---
topic: Release-Notes
---
## {{page-title}}

Diese Seite dokumentiert die Änderungen zwischen den Versionen des MII PRO-Moduls.

**Version: 2026.0.0**

Datum: 12.01.2026

Erster stabiler Release des MII PRO-Moduls für den produktiven Einsatz.

FHIR-Ressourcen und Profile:
- Added: SearchParameters für Questionnaire, QuestionnaireResponse, Observation (Suche nach Code, Subject, Patient)
- Added: CapabilityStatement zur Dokumentation der unterstützten FHIR-Operationen des PRO-Moduls
- Fixed: meta.profile zu allen Observation-Beispielinstanzen hinzugefügt (FHIR-Konformität)

Versionsverwaltung und Metadaten:
- Added: MetaProfile RuleSet für konsistente Profil-Konformanz mit versionierten Canonicals (Format: `{canonical}|{version}`)
- Added: ObsDefVersion RuleSet für R5-Backport der artifact-version Extension in ObservationDefinition (R4-Kompatibilität)
- Changed: Version RuleSets in zentrale Datei extrahiert (`input/fsh/rulesets/version.fsh`) für einfachere Release-Verwaltung

Dependencies und Tooling:
- Changed: Abhängigkeit zu de.medizininformatikinitiative.kerndatensatz.meta auf 2026.0.0 aktualisiert
- Added: package.bake.yaml für Firely Bake Packaging-Workflow
- Changed: package.json Name-Korrektur zu `de.medizininformatikinitiative.kerndatensatz.pros`

Qualitätssicherung und Validierung:
- Added: EORTC QLQ-C30 Validierungs-Suppressions und QA-Dokumentation
- Added: Vollständige Wartung des Questionnaire- und Score-Katalogs
- Changed: CI/CD mit inline Java-Validierung, Gradle-Caching und Timing-Informationen für schnellere Builds

Developer Experience:
- Added: Claude Code Konfiguration mit Build-, Release- und IG-Export-Skills
- Added: Zentralisiertes `/build-package` Kommando für FHIR Package Building
- Added: `/mii-testdata-contribution` Skill für Testdaten-Repository
- Added: `/fix-ig-export-links` Skill für Simplifier IG Export Link-Reparatur

**Version: 2026.0.0-ballot**

Initiale Ballotierungsversion mit Fokus auf SDC-basierte PRO-Erfassung und Score-Berechnung.

PRO-Instrumente:
- PHQ-9 (Patient Health Questionnaire-9) mit vollständiger Score-Berechnung (Raw-Score und T-Score)
- EQ-5D-5L (EuroQol 5-Dimension 5-Level) mit Index-, VAS- und Profil-Scores
- PROMIS-29 Profile v2.1 mit allen 7 Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Social Function, Pain) und automatischer Scoring-Berechnung
- PROMIS Cognitive Function SF4a
- BDI-II (Beck Depression Inventory II) als Referenzimplementierung
- EORTC QLQ-C30 (Lebensqualität bei Krebspatienten) mit 15 Subskalen

FHIR Profile und Extensions:
- MII_PR_PRO_Questionnaire: SDC-basiertes Questionnaire-Profil mit Calculated Expressions und Conditional Display
- MII_PR_PRO_QuestionnaireResponse: Response-Erfassungsprofil mit SDC Extraction Capabilities
- MII_PR_PRO_Score_Blueprint: Vorlage für Score-Observations mit ObservationDefinition-Referenz
- MII_PR_PRO_Score_Instance: Instanz-Profil für berechnete Scores mit derivedFrom-Verknüpfung
- EX_MII_PRO_Questionnaire_Capabilities: Extension zur Dokumentation von Questionnaire-Fähigkeiten (displayable, collectable, calculatable, extractable)

Terminologie-Strategie:
- MII-kontrollierte CodeSysteme und ValueSets für zuverlässige Score-Berechnung mit ordinalValue-Extensions
- Deutsche Übersetzungen für alle Questionnaire-Items via translation-Extensions
- ordinalValue-Extensions (SDC STU3) für numerische Scoring-Gewichte in Antwort-Optionen
- FHIRPath-Ausdrücke nutzen `.ordinal()` für Weight-basierte Berechnungen

Technische Basis:
- FHIR R4 (4.0.1) mit SDC 3.0.0 (Structured Data Capture)
- Dependency zu de.medizininformatikinitiative.kerndatensatz.meta 2026.0.0
- Dependency zu de.gematik.isik 5.0.0 für deutsche Interoperabilität