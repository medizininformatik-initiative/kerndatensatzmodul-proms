# EORTC QLQ-C30 - European Organisation for Research and Treatment of Cancer Quality of Life Questionnaire

## Überblick

Das **EORTC QLQ-C30** ist ein international standardisiertes Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität von Krebspatienten. Es wurde von der European Organisation for Research and Treatment of Cancer (EORTC) entwickelt und wird weltweit in klinischen Studien und der Routineversorgung eingesetzt.

### Zentrale Merkmale

- **30 Items** zur multidimensionalen Lebensqualitätsmessung
- **15 Subskalen**: 5 Funktionsskalen, 3 Symptomskalenen, 6 Einzelsymptome, 1 globale QoL-Skala
- **Standardisierte 0-100 Punkteskala** nach linearer Transformation
- **Zweisprachige Implementierung**: Englisch (primär) mit deutschen Übersetzungen
- **MII-konforme FHIR-Implementierung** mit automatischer Score-Berechnung

### Klinischer Anwendungsbereich

Das EORTC QLQ-C30 eignet sich besonders für:
- **Onkologische Patienten** in allen Behandlungsphasen
- **Längsschnittmessungen** zur Verlaufsdokumentation
- **Vergleichende Effektivitätsforschung** (CER)
- **Populationsbasierte Studien** mit Normwertvergleichen
- **Internationale Multicenterstudien** durch standardisierte Übersetzungen

## Dokumentationsstruktur

Diese Sektion dokumentiert die vollständige FHIR-Implementierung des EORTC QLQ-C30 im MII PRO-Modul:

### 📋 [EORTC QLQ-C30 Questionnaire](EORTC-QLQ-C30.html)
Vollständige Dokumentation des Fragebogens mit Scoring-Methodologie

### 🎯 [EORTC QLQ-C30 ObservationDefinitions](EORTC-QLQ-C30-ObsDef.html)
Score-Definitionen für alle 15 Subskalen

### 📊 [EORTC QLQ-C30 QuestionnaireResponse](EORTC-QLQ-C30-QR.html)
Beispiele für ausgefüllte Fragebögen und Antwortverhalten

### 🔧 [EORTC QLQ-C30 Scoring-Implementierung](EORTC-QLQ-C30-Scoring.html)
Technische Details zur automatischen Score-Berechnung

## Integration im MII PRO-Modul

Das EORTC QLQ-C30 wurde strategisch als **Referenzinstrument für onkologische Lebensqualität** in das MII PRO-Modul integriert:

- **Terminologie-Strategie**: MII-kontrollierte CodeSystems für zuverlässige Scoring-Berechnungen
- **Cross-Domain-Mapping**: Verbindungen zu generischen QoL-Instrumenten (EQ-5D-5L)
- **Modular erweiterbar**: Integration mit krankheitsspezifischen EORTC-Modulen
- **Interoperabilität**: Standardkonform für deutschen Gesundheitskontext

---

**Status**: 🚧 In Entwicklung (Version 0.1.0)  
**Letzte Aktualisierung**: Januar 2025  
**Verantwortlich**: MII PRO-Arbeitsgruppe