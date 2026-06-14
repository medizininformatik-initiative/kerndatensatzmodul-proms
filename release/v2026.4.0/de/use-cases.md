# Use Cases - MII IG PRO v2026.2.0

## Use Cases

* [Allgemeine Betrachtungen](#allgemeine-betrachtungen)
* [Anwendungsfälle](#anwendungsfälle) 
* [Use Case 1: ePRO-Erfassung in der Primärversorgung](#use-case-1-epro-erfassung-in-der-primärversorgung)
* [Use Case 2: Standortinterne Aufbereitung heterogener PROM-Daten](#use-case-2-standortinterne-aufbereitung-heterogener-prom-daten)
* [Use Case 3: Standortübergreifende Harmonisierung](#use-case-3-standortübergreifende-harmonisierung)
* [Use Case 4: Sekundärdatennutzung mit Cross-Domain-Mapping](#use-case-4-sekundärdatennutzung-mit-cross-domain-mapping)
 

### Allgemeine Betrachtungen

Klassischerweise werden Fragebögen auf Papier ausgefüllt. Das führt dazu, dass die Fragebogendefinition (welche Fragen, welche Antworten möglich etc.) und die Fragebogenantworten (welche Antworten ein Patient zu einem bestimmten Anlass konkret ausgewählt hat) direkt innerhalb des gleichen Dokuments vorliegen. In elektronischer Form hingegen benötigt man nur eine einzige digitale Vorlage, auf die ausgefüllte Fragebögen dann verweisen können. Zusätzliche Versionen sind lediglich für bspw. Versionierung und ggfs. Sprachanpassungen notwendig.

Diese Aufspaltung zwischen Vorlage und ausgefüllte Antwort findet sich auch in der aktuellen FHIR-Spezifikation wieder, wo zwischen [Questionnaire](https://hl7.org/fhir/R4/questionnaire.html) und [QuestionnaireResponse](https://hl7.org/fhir/R4/questionnaireresponse.html) unterschieden wird.

Dieser Modellierungsunterschied scheint hier profan, bringt aber einige Besonderheiten mit sich, die am Ende noch einmal aufgegriffen werden.

Ähnlich verhält es sich mit der Berechnung von Scores auf Basis der gegebenen Antworten. Die meisten Papierfragebögen enthalten Felder für die berechneten Scores.

[Art-Decor](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.3758&conceptEffectiveDate=2024-06-27T13%3A15%3A46&language=de-DE) wurde genutzt, um eine grundsätzliche Modellierung des Datensatzes zu erreichen. In einem weiteren Schritt wurden UML-Diagramme erstellt und um weitere relevante Datenpunkte ergänzt. **Achtung: Die Darstellung von verschiedenen Sprachen in einem Fragebogen ist derzeit nicht im Informationsmodell enthalten.**

Dieses MII KDS-Modul bezieht sich auf die Verwendung von PROs und PROMs im Forschungskontext. Wir freuen uns, mit unserer Spezifikationen Vorarbeiten für eine Erhebung und Austausch von PROM-Daten in der breiten Versorgungspraxis zu ermöglichen. Dabei ist jedoch zu beachten, dass die Berechnung von Scores in Software dem [Medizinproduktegesetz (MPG)](https://www.gesetze-im-internet.de/mpg/BJNR196300994.html) unterliegen können.

-------

### Anwendungsfälle

Dieses MII KDS-Modul unterstützt vier zentrale Anwendungsszenarien für Patient-Reported Outcomes im deutschen Gesundheitswesen:

1. **Klinische Verlaufsdokumentation**– ePRO-Erfassung in der Primärversorgung
1. **Lokale Datenharmonisierung**– Standortinterne Aufbereitung heterogener PROM-Daten
1. **Übergreifende Harmonisierung**– Standortübergreifende Harmonisierung
1. **Domänen-basierte Forschung**– Sekundärdatennutzung mit Cross-Domain-Mapping

#### Use Case 1: ePRO-Erfassung in der Primärversorgung

Ein Patient (Herr Hauff) berichtet beim Hausarzt von wiederkehrenden Angst- und Panikattacken und wird zur weiteren Diagnostik an eine Psychosomatische Klinik überwiesen. Die behandelnde Ärztin Dr. Schmidt bereitet das Aufnahmegespräch vor.

In Vorbereitung des Gesprächs füllt Herr Hauff auf einem Tablet den PHQ-9 Fragebogen aus. Das KIS informiert das ePROM-System, dass der PHQ-9 abgefragt werden soll. Die Fragebogendefinition ist lokal vorhanden und wird direkt an das Tablet übertragen.

Nach Abschluss des Fragebogens:

* Ausgefüllter Fragebogen wird an das ePROM-System übertragen
* Scores werden automatisch berechnet (12 Punkte: erhöhter Wert)
* Ergebnisse werden im KIS dargestellt und im Gespräch besprochen
* Scores und Interpretation werden im Entlassbericht dokumentiert

**Abgeleitete Anforderungen:**

* Fragebogendefinition als Vorlage (FHIR Questionnaire)
* Definition eines ausgefüllten Fragebogens (FHIR QuestionnaireResponse)
* Scorebezeichnung und -berechnungslogik (FHIR Observation)
* Optional: Technische Spezifikation von Anzeige und Darstellung
* Optional: Formal strukturierte Score-Interpretation

-------

#### Use Case 2: Standortinterne Aufbereitung heterogener PROM-Daten

Dr. Schmidt hat in mehreren Forschungsprojekten mit dem PHQ-9 gearbeitet. Es liegen umfangreiche PHQ-9-Daten vor:

* Im KIS zu Aufnahme- und Entlasszeitpunkten
* In REDCap aus verschiedenen Studien
* In neuen FHIR-basierten Studiensystemen

Frau Dirsch vom Datenintegrationszentrum harmonisiert diese heterogenen Datenquellen in ein einheitliches FHIR-Format.

**Abgeleitete Anforderungen:**

* Öffentlich verfügbare Fragebogenvorlage als Mapping-Target
* Mapping der ausgefüllten Antworten vom Source-Format (ETL-Prozesse für Non-FHIR zu FHIR Konvertierung oder FHIR StructureMap für FHIR-zu-FHIR Mappings)
* Optional: Neuberechnung der Scores aus Konsistenz- / Validierungsgründen

-------

### Use Case 3: Standortübergreifende Harmonisierung

Dr. Schmidt betreut ein Verbundprojekt "Depressive Erkrankungen und Burnout im Home-Office". Alle beteiligten Krankenhäuser nutzen den PHQ-9, aber mit unterschiedlichen ePROM-Systemen.

Die Harmonisierung erfolgt über die Datenintegrationszentren mit standardisierten FHIR-Profilen.

**Abgeleitete Anforderungen:**

* Standardisierte Zielspezifikation von Fragebögen inkl. Scores (FHIR Questionnaire, FHIR Observation)
* Harmonisierung von Fragebogenantworten mit lokal unterschiedlichen Codes (FHIR CodeSystem, FHIR ValueSet)
* Bereitstellung eines Mappings von lokalen zu global standardisierten Fragen- und Antwortcodes (FHIR ConceptMap)
* Optional: Neuberechnung / Validierung der berechneten Scores vor zentraler Auswertung

-------

### Use Case 4: Sekundärdatennutzung mit Cross-Domain-Mapping

Dr. Claussen ist ein Clinical Researcher und forscht an Sekundärdatennutzung zu Depression. Er nutzt dafür verteilte Analysen mit dem Forschungsportal für Gesundheit der Medizininformatik-Initiative. In ersten explorativen Anfragen hatte sich gezeigt, dass an verschiedenen Standorten verschiedene PROMs zum Einsatz kommen.

**Herausforderung**:

Verschiedene Standorte nutzen unterschiedliche Depression-PROMs (z.B. PHQ-9, BDI-II, PROMIS Depression); eine Vergleichbarkeit der PROM-Scores ist nicht gewährleistet.

**Lösung**:

Cross-Domain-Mapping auf gemeinsame Depressionsdomäne durch:

* Score-based Mapping: Direkte Umrechnung der Scores (z.B. Lookup-Tabellen)
* Item-based Mapping: Neuberechnung aus einzelnen Antworten

**Abgeleitete Anforderungen:**

* Technische Spezifikation einer Vorlage für übergeordnete Domänen und Skalen
* Inhaltliche und technische Spezifikation von einzelnen Domänen
* Verknüpfungen und Mappings von einzelnen berechneten Scores zu Domänen
* Verknüpfung und Mappings von ausgefüllten Fragebögen zu Domänen
* Berechnung von Domänen-Scores an den Standorten
* Governance zur Erschließung neuer Domänen

