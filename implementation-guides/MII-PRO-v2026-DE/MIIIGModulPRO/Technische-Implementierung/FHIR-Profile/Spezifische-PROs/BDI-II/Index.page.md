# BDI-II (Beck Depression Inventory II)

## Übersicht

Das Beck Depression Inventory II (BDI-II) ist ein etabliertes Screening-Instrument zur Erfassung depressiver Symptome. 

**⚠️ Lizenzhinweis**: Aufgrund von Lizenzbestimmungen ist diese Implementierung **nicht displayable**, verfügt jedoch über **calculatable** Funktionalität für Score-Berechnungen.

## Implementierte Komponenten

- **Questionnaire**: Technische Implementierung mit Score-Berechnung
- **Score Calculation**: Automatische Berechnung der BDI-II Gesamtpunktzahl (itemWeight-basiert)
- **Capabilities**: 
  - `displayable = false` (Lizenzbestimmungen)
  - `collectable = false` (kann nicht direkt erfasst werden)
  - `calculatable = true` ✅ (Score-Berechnung implementiert)
  - `extractable = true` (Observation-Extraktion möglich)
  - `domainAligned = true` (Depression-Domain mapping)

## Technische Details

- **Canonical URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-bdi-bdi2`
- **Scoring**: Summenscore (0-63 Punkte)
- **Implementation**: Vollständige FSH-Definition mit itemWeight-Extensions
- **Status**: Funktionsfähige Score-Berechnung ohne Display-Capability
- **Testing**: Enthält Platzhaltertexte (`[TEST PLACEHOLDER...]`) ausschließlich für technische Validierung
  - Ermöglicht Testing in Tools, die renderbare Questionnaires voraussetzen
  - Capabilities bleiben `displayable=false`, `collectable=false` 
  - NUR für technische Validierung, NICHT für klinische Anwendung

## Lizenzierung

Diese Implementierung respektiert die Urheberrechte des BDI-II. Für die Nutzung in produktiven Umgebungen sind entsprechende Lizenzen vom Rechteinhaber einzuholen.