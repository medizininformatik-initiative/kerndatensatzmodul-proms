---
topic: PROMIS
---
## {{page-title}}

Das [Patient-Reported Outcomes Measurement Information System (PROMIS)](https://www.healthmeasures.net/explore-measurement-systems/promis) ist ein vom US National Institute of Health (NIH) entwickeltes, IRT-basiertes Messsystem zur standardisierten Erfassung patientenberichteter Outcomes. PROMIS-Instrumente sind international validiert und liefern T-Scores (Mean=50, SD=10 der US-Normalbevölkerung), die instrument- und populationsübergreifend vergleichbar sind.

PROMIS-Instrumente existieren in verschiedenen Konfigurationen:

| Typ | Beschreibung | Beispiel |
|-----|-------------|----------|
| **Multi-Domain Instrument** | Erfasst mehrere Gesundheitsdomänen in einem Fragebogen | [PROMIS-29](PROMIS-29) |
| **Single-Domain Short Form** | Fokussiert auf eine einzelne Domäne mit wenigen Items | PROMIS Physical Function SF 4a, [PROMIS Depression SF 4a](PROMIS-Depression) |
| **Item Bank** | Vollständiger Itempool einer Domäne für CAT oder individuelle Zusammenstellung | PROMIS Depression Item Bank (zukünftig) |

### Implementierte Instrumente

#### PROMIS-29 Profile v2.1

Multi-Domain Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität über 7 Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Social Function, Pain Interference) plus Schmerzintensität.

**➔ [Detaillierte Dokumentation und Vorschau](PROMIS-29)**

#### PROMIS Depression Short Form 4a

Single-Domain Short Form zur Erfassung von Depressionssymptomen mit 4 Items aus der PROMIS Depression Item Bank. Dient als exemplarisches Beispiel für die Implementierung von PROMIS-Instrumenten aus einer einzelnen Domäne.

**➔ [Detaillierte Dokumentation und Vorschau](PROMIS-Depression)**

#### PROMIS Physical Function (geplant)

Exemplarisches Single-Domain Instrument für die Domäne körperliche Funktion. Geplant als Referenzimplementierung für PROMIS-Instrumente aus einer einzelnen Domäne mit vollständiger Score-Berechnung und Observation-Extraktion.