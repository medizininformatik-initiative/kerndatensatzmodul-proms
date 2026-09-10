# Guidance - MII IG PRO v2027.0.0-ballot.rc4

* [**Table of Contents**](toc.md)
* **Guidance**

## Guidance

Dieser Abschnitt bündelt die fachlichen Hinweise zur Umsetzung und Nutzung des Moduls **PRO**.

### Allgemeine Umsetzungshinweise

* **[Datensätze und Beschreibungen](logical-models.md)** — die Datenelemente des Moduls, beschrieben als logische Modelle. (Dieser Eintrag teilt sein Ziel mit **Artefakte → Logische Modelle**; keiner der Anker der Artefakt-Übersicht ist als Linkziel nutzbar — siehe [`docs/page-structure.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/main/docs/page-structure.md) in diesem Repository.)
* **[UML-Diagramme](uml-diagrams.md)** — visuelle Darstellung der Datenmodelle und ihrer Beziehungen.

### Zielgruppenspezifische Hinweise

* **[Anleitung für Forschende](researcher-guidance.md)** — für Forschende, die Moduldaten nutzen.
* **[Anleitung für Implementierende](implementer-guidance.md)** — technische Hinweise für DIZ-Implementierende.

Das PRO-Modul standardisiert **patient-berichtete** Outcomes: Instrumente, die Patientinnen und Patienten selbst beantworten. Die Abgrenzungen: Fremdbeurteilungsinstrumente sind außerhalb des Scopes; onkologiespezifische Instrumente jenseits des PRO-CTCAE-Basisscreenings gehören ins dedizierte MII-Modul Onkologie; Score-**Interpretation** (Cut-offs, MID/MCID, Entscheidungsunterstützung) kommt mit der CQL-Roadmap. Welchen Use Case ein Fragebogen bedient, bestimmt seine Capability-Kombination — siehe [Questionnaire-Capabilities](questionnaire-capabilities.md).

-------

Für die KDS-weiten Konformitätsanforderungen siehe die [Konformitätsregeln des Meta-Moduls](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); für die technischen Artefakte siehe [Profile](profiles.md).

### Für Anwendende

**Softwarehersteller** — Formular-Renderer, KIS-Integrationen, ePRO-Apps, Scoring-Services: Einstieg über die [Hinweise für Implementierende](implementer-guidance.md); dort stehen die fünf Regeln, die jede Implementierung einhalten muss, und was jede Systemrolle konsumiert und erzeugt.

**Studien und Forschungsprojekte** — Instrumentenauswahl, Lizenzstufen und was die erhobenen Daten bedeuten: Einstieg über die [Hinweise für Forschende](researcher-guidance.md).

### Modul-Dokumentation

* [Anwendungsfälle](use-cases.md) · [Modulbeschreibung](module-description.md) · [Kontext im Gesamtprojekt](project-context.md)
* [Datensätze und Beschreibungen](datasets-and-descriptions.md) · [Technische Implementierung](technical-implementation.md) · [Workflows](workflows.md)
* [ID-Systematik](id-systematics.md) · [Domänen](domains.md) · [Terminologie-Strategien](terminology-strategies.md) · [Questionnaire Capabilities](questionnaire-capabilities.md) · [Computer-Adaptives Testen](cat.md) · [Nationaler Fragebogenserver](national-questionnaire-server.md)
* [Scoring](scoring.md) · [Domänenbasiertes Scoring](domain-based-scoring.md) · [Domänen](domains.md) · [Cross-Instrument-Mappings](cross-instrument-mappings.md) · [Abgeleitete Metriken](derived-metrics.md)
* [Validierung](validation.md) · [Referenzen](references.md)

