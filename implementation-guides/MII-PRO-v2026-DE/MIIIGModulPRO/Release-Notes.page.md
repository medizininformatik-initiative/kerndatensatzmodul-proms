---
topic: Release-Notes
---
## {{page-title}}

Diese Seite dokumentiert die Änderungen zwischen den Versionen des MII PRO-Moduls.

**Version: 2026.0.0**

Erster stabiler Release des MII PRO-Moduls für den produktiven Einsatz.

- Added: SearchParameters und CapabilityStatement für MII PRO-Modul
- Added: MetaProfile RuleSet für konsistente Profil-Konformanz mit versionierten Canonicals
- Added: ObsDefVersion RuleSet für R5-Backport der Version in ObservationDefinition
- Changed: Version RuleSets in zentrale Datei extrahiert (`version.fsh`)
- Fixed: meta.profile zu Observation-Beispielen hinzugefügt
- Changed: Abhängigkeit zu kerndatensatz.meta auf 2026.0.0 aktualisiert
- Added: EORTC QLQ-C30 Validierungs-Suppressions und QA-Dokumentation
- Added: Vollständige Wartung des Questionnaire- und Score-Katalogs
- Changed: CI/CD mit inline Java-Validierung, Caching und Timing-Informationen

**Version: 2026.0.0-ballot**

Initiale Ballotierungsversion mit folgenden PRO-Instrumenten:

- PHQ-9 (Patient Health Questionnaire-9) mit vollständiger Score-Berechnung
- EQ-5D-5L (EuroQol 5-Dimension 5-Level) mit Index, VAS und Profil-Scores
- PROMIS-29 Profile v2.1 mit allen 7 Domänen und Scoring
- PROMIS Cognitive Function SF4a
- BDI-II (Beck Depression Inventory II) als Referenz
- EORTC QLQ-C30 (Lebensqualität bei Krebspatienten)

PRO-Profile:
- MII_PR_PRO_Questionnaire: SDC-basiertes Questionnaire-Profil
- MII_PR_PRO_QuestionnaireResponse: Response-Erfassungsprofil
- MII_PR_PRO_Score_Blueprint: Vorlage für Score-Observations
- MII_PR_PRO_Score_Instance: Instanz-Profil für berechnete Scores

Terminologie:
- MII-kontrollierte CodeSysteme und ValueSets für zuverlässige Score-Berechnung
- Deutsche Übersetzungen für alle Questionnaire-Items
- ordinalValue-Extensions für Scoring-Gewichte