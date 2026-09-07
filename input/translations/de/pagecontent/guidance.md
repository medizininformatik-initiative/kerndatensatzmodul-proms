<!-- markdownlint-disable MD041 -->
<!-- Übersichtsseite "Anleitung". Ersetzen Sie die [TODO]-Hinweise; die
     Unterseiten-Struktur folgt kerndatensatz-basis. -->

Dieser Abschnitt bündelt die fachlichen Hinweise zur Umsetzung und Nutzung des
Moduls **PRO**.

### Allgemeine Umsetzungshinweise

* **[Datensätze und Beschreibungen](logical-models.html)** — die Datenelemente
  des Moduls, beschrieben als logische Modelle. (Dieser Eintrag teilt sein Ziel
  mit *Artefakte → Logische Modelle*; keiner der Anker der Artefakt-Übersicht
  ist als Linkziel nutzbar — siehe
  [`docs/page-structure.md`](https://github.com/{{GITHUB_ORG}}/{{REPO_NAME}}/blob/main/docs/page-structure.md) in diesem Repository.)
* **[UML-Diagramme](uml-diagrams.html)** — visuelle Darstellung der Datenmodelle
  und ihrer Beziehungen.

### Zielgruppenspezifische Hinweise

* **[Anleitung für Forschende](researcher-guidance.html)** — für Forschende, die
  Moduldaten nutzen.
* **[Anleitung für Implementierende](implementer-guidance.html)** — technische
  Hinweise für DIZ-Implementierende.

> [TODO: Ergänzen Sie modul-spezifische Hinweise, die für alle Zielgruppen
> relevant sind — z. B. den fachlichen Geltungsbereich oder Abgrenzungen.]
{: .ig-highlight .ig-highlight-grey}

---
Für die KDS-weiten Konformitätsanforderungen siehe die
[Konformitätsregeln des Meta-Moduls](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
für die technischen Artefakte siehe [Profile](profiles.html).

### Für Anwendende

**Softwarehersteller** — Formular-Renderer, KIS-Integrationen, ePRO-Apps, Scoring-Services: Einstieg über die [Hinweise für Implementierende](implementer-guidance.html); dort stehen die fünf Regeln, die jede Implementierung einhalten muss, und was jede Systemrolle konsumiert und erzeugt.

**Studien und Forschungsprojekte** — Instrumentenauswahl, Lizenzstufen und was die erhobenen Daten bedeuten: Einstieg über die [Hinweise für Forschende](researcher-guidance.html).

### Modul-Dokumentation

- [Anwendungsfälle](use-cases.html) · [Modulbeschreibung](module-description.html) · [Kontext im Gesamtprojekt](project-context.html)
- [Datensätze und Beschreibungen](datasets-and-descriptions.html) · [Technische Implementierung](technical-implementation.html) · [Workflows](workflows.html)
- [ID-Systematik](id-systematics.html) · [Domänen](domains.html) · [Terminologie-Strategien](terminology-strategies.html) · [Questionnaire Capabilities](questionnaire-capabilities.html) · [Computer-Adaptives Testen](cat.html) · [Nationaler Fragebogenserver](national-questionnaire-server.html)
- [Scoring](scoring.html) · [Domänenbasiertes Scoring](domain-based-scoring.html) · [Domänen](domains.html) · [Cross-Instrument-Mappings](cross-instrument-mappings.html) · [Abgeleitete Metriken](derived-metrics.html)
- [Validierung](validation.html) · [Referenzen](references.html)
