# Guidance for Researchers - MII IG PRO v2027.0.0-ballot.rc5

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Guidance for Researchers**

## Guidance for Researchers

Hinweise für **Studien und Forschungsprojekte**, die das PRO-Modul nutzen — Instrumentenauswahl, Lizenzfragen, und was die erhobenen Daten nachgelagert bedeuten.

### Instrument auswählen

Die Tabelle der [PRO-Bibliothek](pro-library.md) ist der Ausgangspunkt: Fokus, Itemzahl, Primärsprache, Scoring und Lizenzhinweis je Instrument. Drei Fragen entscheiden die Wahl:

1. **Konstrukt und Population**— die Instrumentenseiten dokumentieren Validierungsquellen und bekannte Populations-Einschränkungen (z. B. sind PC-PTSD-Vier-Item und PC-PTSD-5 verschiedene Instrumente; die ISR-Z ist eine Subskala, kein volles ISR).
1. **Lizenz vor der ersten Erhebung klären.**Die Stufen unterscheiden sich wesentlich: public domain (PHQ-Familie, DASS-21, PSS-Set), Registrierung (EuroQol, EORTC), Nutzungsanfrage (PROMIS via CPCOR), WHO-Vereinbarung für elektronische Erfassung (WHODAS), kommerziell (BDI-II — Itemtexte aus diesem Modul nicht anzeigbar). Die verbindliche Aussage trägt das`copyright`-Element des jeweiligen Questionnaire.
1. **Welche Capability-Kombination die Studie braucht**— direkte Patientenerfassung, serverseitiges Scoring importierter Daten oder reine Anzeige verändern, welche[Capabilities](questionnaire-capabilities.md)die eingesetzte Variante deklarieren muss.

### Was die Daten bedeuten

* **Eine Score-Observation ist per Konstruktion rückverfolgbar:** `derivedFrom` zeigt auf die QuestionnaireResponse, `instantiates` (R5-Backport-Extension) auf die ObservationDefinition mit Einheit, Wertebereich und publizierten Cut-offs. Schweregrade sind dort **dokumentiert** (`qualifiedInterval`), aber bewusst nicht als ausführbare Interpretation ausgeliefert — Interpretation ist Sache der Studie bzw. der Klinik ([Abgeleitete Metriken](derived-metrics.md)).
* **Item-Daten sind instrumentenübergreifend vergleichbar**, wo Items geteilt sind: Der PHQ-D-Block-Namespace bedeutet, dass ein im GAD-7 eingebetteter GAD-2 überall dieselben linkIds trägt ([ID-Systematik](id-systematics.md)).
* **Sprache:** Items tragen den validierten Wortlaut ihrer Primärsprache, Übersetzungen als Extensions; die Quelle jedes deutschen Wortlauts ist auf der Instrumentenseite benannt (PHQ-D, CPCOR, PCOR-MII Item Level Dictionary, NCI).
* **Die Score-Richtung ist maschinenlesbar** über die Health-Correlation-Extension — „höher = schlechter" ist keine sichere Annahme (EORTC-Funktionsskalen invertieren).

### Instrumentenübergreifend und longitudinal

Score-Konversionen zwischen Instrumenten (z. B. PHQ-9 → PROMIS-Depressions-T-Score) sind Roadmap-Punkte und werden als CQL-Libraries modelliert, nicht als ausgelieferte Fragebogen-Logik. Änderungsmetriken, MID/MCID und Reliable Change sind je Instrument dokumentiert, wo publiziert — als Text; die 2027-Pläne stehen in der [Roadmap](module-description.md).

### Einordnung

Das PRO-Modul entsteht innerhalb der MII; das PSS-Instrumentenset folgt dem PCOR-MII-Use-Case, dessen Item Level Dictionary die Quelle der validierten deutschen Wortlaute ist. Für Datennutzungsanträge gelten die üblichen Wege der MII-Forschungsdateninfrastruktur (FDPG); PRO-Ressourcen reisen dort wie die Daten jedes anderen KDS-Moduls.

