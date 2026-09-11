# Code Systems - MII IG PRO v2027.0.0-ballot.rc5

* [**Table of Contents**](toc.md)
* **Code Systems**

## Code Systems

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### CodeSystems

Diese Seite beschreibt die CodeSystems des Moduls **PRO** (Namenskonvention `MII_CS_<Modul>_<Name>`). Die darauf aufbauenden ValueSets beschreibt die Seite [ValueSets](value-sets.md).

**Wichtig:** CodeSystem-Ressourcen externer Terminologien (z. B. ICD-10-GM, OPS, SNOMED CT) werden in diesem Modul **nicht** publiziert, sondern über den zentralen KDS-Terminologieserver (SU-TermServ) bezogen: [https://mii-termserv.de/](https://mii-termserv.de/).

Das Modul publiziert drei Arten von CodeSystemen:

* **Kataloge** — [Fragebogen-Katalog](CodeSystem-mii-cs-pro-questionnaire-catalogue.md) und [Score-Katalog](CodeSystem-mii-cs-pro-score-catalogue.md): das Register der Instrumente und Scores, die dieses Modul verantwortet.
* **Instrumenten-Antwortskalen** — je ein CodeSystem pro Instrument, dessen Antworten die MII kontrolliert (BDI-II, DASS-21, EORTC QLQ-C30, EQ-5D, ISR, MIDOS2, PHQ-15, PRO-CTCAE, SSD-12, WHODAS 2.0). Die Antwortkonzepte tragen deutsche und englische Designationen sowie ihre `itemWeight`-Scoring-Properties.
* **Ein [LOINC-Supplement](CodeSystem-mii-cs-pro-loinc-supplement.md)** — die validierten deutschen Antwort-Wortlaute (PHQ-D; PROMIS deutsch via PHO/CPCOR) als Designationen auf den vom Modul genutzten LOINC-Antwortcodes. Es reist im Package mit, sodass Terminologieserver, die diesen IG laden, die instrumentenvalidierten Wortlaute ausliefern können; Übersetzungsautorität über LOINC beansprucht es nicht.

Die vollständige Liste mit Inhalten steht auf der [Artefaktseite](artifacts.md).

