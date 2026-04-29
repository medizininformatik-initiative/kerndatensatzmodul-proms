Die vorliegende Spezifikation des Moduls PROs, PROMs und abgeleitete Metriken beschreibt die FHIR-Repräsentation des Kerndatensatzmoduls für Patient-Reported Outcomes (PROs) der Medizininformatik-Initiative.

| Veröffentlichung |   |
|---------|---|
| Datum   | 30.03.2026 |
| Version | 2026.2.0   |
| Status  | active     |
| Realm   | DE         |

### Zielsetzung

Das MII PRO-Modul standardisiert die Erfassung und Auswertung patientenberichteter Gesundheitsdaten für das deutsche Gesundheitswesen. Es ermöglicht die standortübergreifende Vergleichbarkeit von PRO-Daten durch einheitliche FHIR-basierte Implementierungen.

### Umfang der Spezifikation

#### Produktionsreife Instrumente
- **PHQ-9**: Depression-Screening mit automatischer Score-Berechnung
- **EQ-5D-5L**: Lebensqualität mit Index-, VAS- und Profil-Scores

#### Technische Vorschau
- **PROMIS-29**: Multi-Domain Gesundheitsstatus (7 Domänen)
- **EORTC QLQ-C30**: Onkologische Lebensqualität
- **DASS-21**: Depression, Angst und Stress
- **BDI-II**: Beck Depression Inventory (Lizenz-Referenz)

#### Kernfunktionalität
- **SDC-basierte Fragebögen** mit erweiterten Rendering- und Berechnungsfähigkeiten
- **Capability-Architektur** für flexible Nutzungsszenarien
- **Domain-basiertes Scoring** zur Harmonisierung verschiedener Instrumente
- **MII-Terminologie** für zuverlässige Score-Berechnungen

### Technische Grundlagen

Die Implementierung basiert auf:
- FHIR R4 (4.0.1)
- SDC (Structured Data Capture) 3.0.0
- HL7 Terminology 6.4.0

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik Initiative erstellt worden und unterliegt per Governance Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V..

### Ansprechpartner

* Thomas Debertshäuser, Berlin Institute of Health (Charité)
* Mathias Rose, Charité - Universitätsmedizin Berlin
* Fabian Praßer, Berlin Institute of Health (Charité)
* Karoline Buckow, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V.
* Franziska Klepka, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V.

Fragen zu der vorliegenden Publikation können jederzeit unter [chat.fhir.org](https://chat.fhir.org) im Stream 'german/mi-initiative' gestellt werden.

Anmerkungen und Kritik werden in Form von Issues im [GitHub-Projekt](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/issues) gern entgegengenommen.

### Autoren (in alphabetischer Reihenfolge)

* Thomas Debertshäuser, Berlin Institute of Health (Charité)
* Felix Fischer, Charité - Universitätsmedizin Berlin
* Thimo Hölter, Berlin Institute of Health (Charité)
* Marcel Susky, Technische Universität Dresden, Forschungsgruppe Digital Health
* Christian Zilske, Berlin Institute of Health (Charité)

### Copyright-Hinweis, Nutzungshinweise

Copyright © 2019+: TMF e. V., Charlottenstraße 42, 10117 Berlin

Der Inhalt dieser Spezifikation ist öffentlich. Die Nachnutzungs- bzw. Veröffentlichungsansprüche sind nicht beschränkt.

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

### Disclaimer

Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die Copyright HL7 International gilt.
