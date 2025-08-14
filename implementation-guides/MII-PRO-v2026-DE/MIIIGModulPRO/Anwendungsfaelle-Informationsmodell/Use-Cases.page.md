---
topic: Use-Cases
---
## Use Cases

### Übersicht

Das MII PRO Modul unterstützt vier zentrale Anwendungsszenarien für Patient-Reported Outcomes im deutschen Gesundheitswesen:

1. **Klinische Verlaufsdokumentation** - ePRO-Erfassung in der Primärversorgung
2. **Lokale Datenharmonisierung** - Standortinterne Aufbereitung heterogener PROM-Daten
3. **Übergreifende Harmonisierung** - Standortübergreifende Standardisierung
4. **Domänen-basierte Forschung** - Sekundärdatennutzung mit Cross-Domain-Mapping

---

### Use Case 1: Praktische Erfassung von ePROMs im Forschungskontext

Ein Patient (Herr Hauff) berichtet beim Hausarzt von wiederkehrenden Angst- und Panikattacken und wird zur weiteren Diagnostik an eine Psychosomatische Klinik überwiesen. Die behandelnde Ärztin Dr. Schmidt bereitet das Aufnahmegespräch vor. 

In Vorbereitung des Gesprächs füllt Herr Hauff auf einem Tablet den PHQ-9 Fragebogen aus. Das KIS informiert das ePROM-System, dass der PHQ-9 abgefragt werden soll. Die Fragebogendefinition ist lokal vorhanden und wird direkt an das Tablet übertragen.

Nach Abschluss des Fragebogens:
- Ausgefüllter Fragebogen wird an das ePROM-System übertragen
- Scores werden automatisch berechnet (12 Punkte → erhöhter Wert)
- Ergebnisse werden im KIS dargestellt und im Gespräch besprochen
- Scores und Interpretation werden im Entlassbericht dokumentiert

![Use Case 1](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/main/out/input/Images/Sequence_Diagram_UseCase_1/UseCase%201%20%20ePRO%20Collection.png?raw=true)

**Technische Anforderungen:**
- Fragebogendefinition als Vorlage (Questionnaire)
- Ausgefüllter Fragebogen (QuestionnaireResponse)
- Score-Berechnung und -Speicherung (Observation)
- Optional: Strukturierte Score-Interpretation

---

### Use Case 2: Standortinterne Aufbereitung von erfassten Daten

Dr. Schmidt hat in mehreren Forschungsprojekten mit dem PHQ-9 gearbeitet. Es liegen umfangreiche PHQ-9-Daten vor:
- Im KIS zu Aufnahme- und Entlasszeitpunkten
- In REDCap aus verschiedenen Studien
- In neuen FHIR-basierten Studiensystemen

Frau Dirsch vom Datenintegrationszentrum harmonisiert diese heterogenen Datenquellen in ein einheitliches FHIR-Format.

![Use Case 2](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/main/out/input/Images/Sequence_Diagram_UseCase_2/UseCase%202%20%20local%20harmonization.png?raw=true)

**Technische Anforderungen:**
- Öffentlich verfügbare Fragebogenvorlage als Mapping-Target
- ETL-Prozesse für Non-FHIR zu FHIR Konvertierung
- FHIR StructureMap für FHIR-zu-FHIR Mappings
- Optional: Neuberechnung der Scores zur Validierung

---

### Use Case 3: Standortübergreifende Aufbereitung

Dr. Schmidt betreut ein Verbundprojekt "Depressive Erkrankungen und Burnout im Home-Office". Alle beteiligten Krankenhäuser nutzen den PHQ-9, aber mit unterschiedlichen ePROM-Systemen.

Die Harmonisierung erfolgt über die Datenintegrationszentren mit standardisierten FHIR-Profilen.

![Use Case 3](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/main/out/input/Images/Sequence_Diagram_UseCase_3/UseCase3%20%20interhospital%20harmonization.png?raw=true)

**Technische Anforderungen:**
- Standardisierte Zielspezifikation (MII PRO Profile)
- Harmonisierung lokal unterschiedlicher Codierungen
- Mapping-Tabellen für Fragen- und Antwortcodes
- Zentrale Score-Validierung

---

### Use Case 4: Sekundärdatenforschung mit PROMs

Dr. Claussen forscht an Depression mittels Sekundärdatennutzung über das Forschungsportal für Gesundheit. 

**Herausforderung**: Verschiedene Standorte nutzen unterschiedliche Depression-PROMs (PHQ-9, BDI-II, PROMIS Depression). 

**Lösung**: Cross-Domain-Mapping auf gemeinsame Depressionsdomäne durch:
- **Score-based Mapping**: Direkte Umrechnung der Scores (z.B. Lookup-Tabellen)
- **Item-based Mapping**: Neuberechnung aus einzelnen Antworten

![Use Case 4](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/main/out/input/Images/Sequence_Diagram_UseCase_4/UseCase%204%20%20cross-domain%20harmonization.png?raw=true)

**Technische Anforderungen:**
- Spezifikation übergeordneter Domänen
- Mappings von Scores zu Domänen
- Item-basierte Domänen-Score-Berechnung
- Governance für neue Domänen

---

### Zusammenfassung der Anforderungen

| Komponente | UC1 | UC2 | UC3 | UC4 |
|------------|-----|-----|-----|-----|
| Fragebogen-Vorlage | ✓ | ✓ | ✓ | ✓ |
| Ausgefüllter Fragebogen | ✓ | ✓ | ✓ | ✓ |
| Score-Berechnung | ✓ | (✓) | (✓) | ✓ |
| Mapping-Definitionen | - | ✓ | ✓ | ✓ |
| Domänen-Spezifikation | - | - | - | ✓ |
| Cross-Instrument Mapping | - | - | - | ✓ |

(✓) = Optional