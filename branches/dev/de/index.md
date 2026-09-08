# Home - MII IG PRO v2027.0.0-ballot.rc4

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ImplementationGuide/mii-ig-pro | *Version*:2027.0.0-ballot.rc4 |
| Active Stand: 2026-09-06 | *Maschinenlesbarer Name*:MII_IG_PRO |

### Einführung

Diese Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatz-Erweiterungsmoduls **PROs, PROMs und abgeleitete Metriken** der Medizininformatik-Initiative (MII). Sie standardisiert Erhebung, Scoring und Sekundärnutzung patientenberichteter Gesundheitsdaten für das deutsche Gesundheitswesen und ermöglicht standortübergreifende Vergleichbarkeit von PRO-Daten durch einheitliche FHIR-basierte Implementierungen.

Das Modul basiert maßgeblich auf der [FHIR-Structured-Data-Capture-Spezifikation (SDC)](https://build.fhir.org/ig/HL7/sdc/) und deckt den vollständigen Workflow **Questionnaire → QuestionnaireResponse → Score-Observation** ab — von validierten Instrumentendefinitionen über die Erfassung bis zu berechneten, rückverfolgbaren Scores.

| | |
| :--- | :--- |
| Version | 2027.0.0-ballot.rc4 (CalVer`YYYY.n.n`) |
| Status | active |
| Realm | DE |

### Umfang

Die [PRO-Bibliothek](pro-library.md) umfasst derzeit **mehr als zwanzig Instrumente** — von der PHQ-Familie, EQ-5D-5L, den PROMIS-Profilen und dem EORTC QLQ-C30 über PRO-CTCAE, MIDOS2 und WHODAS 2.0 bis zum PSS-Screening-Set des PCOR-MII. Jedes Instrument folgt derselben Architektur: kanonische Item-Identitäten ([ID-Systematik](id-systematics.md)), Antwortskalen mit ordinalen Gewichten, maschinenlesbare [Capabilities](questionnaire-capabilities.md) und eine Score-Pipeline entlang der [drei Scoring-Kanäle](scoring.md).

Vier Instrumente (HADS, EPDS, CES-D, K6) sind aus Lizenzgründen als [Metadata-only-Referenzen](minimal-reference-questionnaires.md) abgebildet.

### Zielgruppen

##### Softwarehersteller und Implementierende

Formular-Renderer, KIS-Integrationen, ePRO-Apps, ETL-Strecken und Scoring-Services.
 → Einstieg über die [Hinweise für Implementierende](implementer-guidance.md) — fünf Regeln, die jede Implementierung einhalten muss.

##### Studien und Forschende

Instrumentenauswahl, Lizenzstufen und was die erhobenen Daten nachgelagert bedeuten.
 → Einstieg über die [Hinweise für Forschende](researcher-guidance.md).

### Inhalte

* **[Leitfaden](guidance.md)** — Einstieg, Anwendungsfälle, ID-Systematik, Capabilities und die 2027er Konzepte ([CAT](cat.md), [Nationaler Fragebogenserver](national-questionnaire-server.md), [abgeleitete Metriken](derived-metrics.md)).
* **[PRO-Bibliothek](pro-library.md)** — alle Instrumente mit Fokus, Items, Sprache, Scoring und Lizenz auf einen Blick.
* **[Scoring](scoring.md)** — clientseitig, serverseitig (CQL) und extern vorberechnet, einschließlich der Medizinprodukte-Abgrenzung.
* **Konformität** — die KDS-weiten Regeln (Anforderungssprache, Must Support, fehlende Daten) pflegt zentral das [Meta-Modul](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); die modulspezifischen Überlegungen zu [Sicherheit und Datenschutz](security-and-privacy.md) sind Teil dieses Leitfadens.
* **[Profile](profiles.md)** und die weiteren [Artefakte](artifacts.md) — die normativen FHIR-Ressourcen.
* **[Änderungen](changes.md)** — alle Versionen einschließlich der Vorbereitung von 2027.0.0-ballot.

### Autorinnen, Autoren und Kontakt

* Thomas Debertshäuser
* Mathias Rose
* Fabian Praßer
* Karoline Buckow
* Franziska Klepka

Feedback und Fragen: über das [GitHub-Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/issues) oder die MII-Kanäle.

Die MII-eigenen FHIR-Strukturen dieses Moduls stehen unter CC0; Instrumententexte Dritter behalten ihre eigenen Lizenzbedingungen — siehe die Lizenzspalte der [PRO-Bibliothek](pro-library.md) und das `copyright`-Element der jeweiligen Ressource.

