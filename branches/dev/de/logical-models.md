# Logical Models - MII IG PRO v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Logical Models**

## Logical Models

Das logische Datenmodell des **PRO**-Moduls beschreibt den Fachdatensatz unabhängig von seiner konkreten FHIR-Repräsentation — die Form, in der Klinik und Studienplanung denken, bevor Profile ins Spiel kommen.

### Das Modell

**[MII_LM_PRO](StructureDefinition-mii-lm-pro.md)** gliedert die Domäne in vier Obergruppen entlang des Kern-Workflows des Moduls:

| | | |
| :--- | :--- | :--- |
| **Fragebogen**— das Instrument: Name, Abkürzung, Version, interne ID, Itembank mit Kodierungen, Antwortskalen | 1..* | [Questionnaire](profiles.md) |
| **AusgefuellterFragebogen**— eine ausgefüllte Instanz: Antworten, Person, Zeitpunkt | 0..* | QuestionnaireResponse |
| **Score**— berechnete Werte: Rohwerte, T-Scores, Referenzbereiche | 0..* | Observation + ObservationDefinition |
| **Domaene**— Klassifikation nach Gesundheitsbereichen (Depression, HRQoL, …) | 0..* | die[Domänen-Kodierungen](domains.md) |

Die Elementnamen sind bewusst **deutsch** — das Modell ist die gemeinsame Sprache mit den klinischen Fachexpertinnen und -experten; das FHIR-Mapping in die englische Ressourcenwelt trägt der Mapping-Abschnitt des Modells und realisieren die [Profile](profiles.md).

### Wie man es liest

* Die **[Artefaktseite](StructureDefinition-mii-lm-pro.md)** rendert den vollständigen Elementbaum mit Kardinalitäten, Typen und Definitionen.
* Die **[UML-Diagramme](uml-diagrams.md)** zeigen dasselbe Modell grafisch, einschließlich der Workflow-Sichten.
* **[Datensätze und Beschreibungen](datasets-and-descriptions.md)** verbindet das Modell mit den Datensätzen je Instrument.

Das logische Modell ist Dokumentation: Implementierende validieren gegen die [Profile](profiles.md), nicht gegen das Modell.

