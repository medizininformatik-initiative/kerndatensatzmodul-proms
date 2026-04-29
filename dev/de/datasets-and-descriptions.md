# Datasets and Descriptions - MII IG PRO v2026.2.0

## Datasets and Descriptions

Das MII PRO Modul definiert ein logisches Datenmodell für die standardisierte Erfassung und Verarbeitung von Patient-Reported Outcomes. Dieses Informationsmodell bildet die konzeptuelle Grundlage für alle FHIR-Profile und beschreibt die Beziehungen zwischen den verschiedenen Komponenten des PRO-Workflows.

Die offiziell beschlossene Version des Informationsmodells befindet sich auf [Art-Decor](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.3758&conceptEffectiveDate=2024-06-27T13%3A15%3A46&language=de-DE). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet:

[MII PRO Logical Model](StructureDefinition-mii-lm-pro.md)

**Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.**

| | |
| :--- | :--- |
| Fragebogen | Die Fragebogenvorlage, die Struktur und Inhalt eines PRO-Instruments definiert |
| Fragebogen.Name | Der Name des Fragebogeninstruments |
| Fragebogen.Version | Die Version des Fragebogens |
| Fragebogen.Sprache | Die Sprache des Fragebogens |
| Fragebogen.Frage | Einzelne im Fragebogen enthaltene Fragen |
| Fragebogen.Frage.FrageId | Eindeutiger Identifier für jede Frage |
| Fragebogen.Frage.FrageText | Der Text der Frage |
| Fragebogen.Frage.Antwortoptionen | Verfügbare Antwortoptionen für die Frage |
| AusgefüllterFragebogen | Ein ausgefüllter Fragebogen mit Patientenantworten |
| AusgefüllterFragebogen.Fragebogen | Referenz auf die zugrundeliegende Fragebogenvorlage |
| AusgefüllterFragebogen.Patient | Referenz auf den Patienten, der den Fragebogen ausgefüllt hat |
| AusgefüllterFragebogen.Datum | Datum der Fragebogenausfüllung |
| AusgefüllterFragebogen.Antwort | Die einzelnen gegebenen Antworten |
| Score | Ein berechneter Score, abgeleitet aus Fragebogenantworten |
| Score.ScoreDefinition | Referenz auf die Score-Definition (Berechnungsalgorithmus) |
| Score.Wert | Der berechnete Score-Wert |
| Score.Interpretation | Klinische Interpretation des Scores |
| Domäne | Eine Gesundheitsdomäne für die instrumentenübergreifende Klassifikation |
| Domäne.Name | Name der Gesundheitsdomäne |
| Domäne.Skalierung | Skalierungsmerkmale der Domäne |

