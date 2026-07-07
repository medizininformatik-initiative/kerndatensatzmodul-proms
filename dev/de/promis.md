# PROMIS - MII IG PRO v2026.5.0

## PROMIS

Das [Patient-Reported Outcomes Measurement Information System (PROMIS)](https://www.healthmeasures.net/explore-measurement-systems/promis) ist ein vom US National Institute of Health (NIH) entwickeltes, IRT-basiertes Messsystem zur standardisierten Erfassung patientenberichteter Outcomes. PROMIS-Instrumente sind international validiert und liefern T-Scores (Mean=50, SD=10 der US-Normalbevölkerung), die instrument- und populationsübergreifend vergleichbar sind.

PROMIS-Instrumente existieren in verschiedenen Konfigurationen:

| | | |
| :--- | :--- | :--- |
| **Multi-Domain Profile** | Erfasst mehrere Gesundheitsdomänen in einem Fragebogen | [PROMIS-29](promis-29.md),[PROMIS-16](promis-16.md) |
| **Single-Domain Short Form** | Fokussiert auf eine einzelne Domäne mit wenigen Items | PROMIS Cognitive Function SF 4a,[PROMIS Depression SF 4a](promis-depression.md) |
| **Item Bank** | Vollständiger Itempool einer Domäne für CAT oder individuelle Zusammenstellung | PROMIS Depression Item Bank (zukünftig) |

### Implementierte Instrumente

#### PROMIS-29 Profile v2.1

Multi-Domain Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität über 7 Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Social Function, Pain Interference) plus Schmerzintensität.

**–> [Detaillierte Dokumentation und Vorschau](promis-29.md)**

#### PROMIS-16 Profile v1.0

Ultrakurzes Multi-Domain Instrument mit 16 Items über 8 Domänen (je 2 Items). Enthält im Gegensatz zum PROMIS-29 auch die Cognitive-Function-Domäne. Geeignet für wiederholte Messung, Screening und Settings mit hoher Erhebungslast.

**–> [Detaillierte Dokumentation und Vorschau](promis-16.md)**

#### PROMIS Cognitive Function Short Form 4a

Single-Domain Short Form mit 4 Items zur Erfassung subjektiver kognitiver Funktion. Ergänzt PROMIS-29 (das diese Domäne nicht abdeckt) — die Kombination beider Instrumente entspricht inhaltlich dem PROMIS-33-Profile.

**–> [Übersicht im PRO-Library](pro-library.md)**

#### PROMIS Depression Short Form 4a

Single-Domain Short Form zur Erfassung von Depressionssymptomen mit 4 Items aus der PROMIS Depression Item Bank. Dient als exemplarisches Beispiel für die Implementierung von PROMIS-Instrumenten aus einer einzelnen Domäne.

**–> [Detaillierte Dokumentation und Vorschau](promis-depression.md)**

#### PROMIS Physical Function (geplant)

Exemplarisches Single-Domain Instrument für die Domäne körperliche Funktion. Geplant als Referenzimplementierung für PROMIS-Instrumente aus einer einzelnen Domäne mit vollständiger Score-Berechnung und Observation-Extraktion.

### Lizenzierung & Urheberrecht

PROMIS-Items sind urheberrechtlich geschützt. Bei der FHIR-Implementierung im MII PRO Modul greifen **vier Schichten** unterschiedlicher Rechte:

| | | |
| :--- | :--- | :--- |
| **FHIR-Resource**(linkIds, Extensions, Score-Calculations, ObservationDefinitions) | Technisches Artefakt | © Medizininformatik-Initiative (MII) — CC-BY 4.0 |
| **PROMIS-Items**(Item-Text, Antwortoptionen, IRT-Parameter, Scoring-Algorithmen) | Inhaltliche IP | © 2008-2024 PROMIS Health Organization & PROMIS Cooperative Group; PROMIS® ist eingetragene Marke |
| **Offizielle deutsche Übersetzungen** | Bereitgestellt durch | **PCOR-MII**(Patient-Centered Outcomes Research in der Medizininformatik-Initiative); kuratiert durch das**PROMIS National Center Deutschland (CPCOR, Charité, Leitung: Felix Fischer)** |
| **LOINC-Codes**(Item-Codes, Antwortlisten) | Terminologie | © Regenstrief Institute, Inc. — LOINC License |

#### Nutzung der PROMIS-Instrumente

* **Innerhalb des PCOR-MII / MII Kontexts**: Die Verwendung der hier publizierten Questionnaires und der deutschen Wordings ist im Projektkontext abgedeckt.
* **Außerhalb des PCOR-MII / MII Kontexts (z.B. institutionelle Implementierung)**: Eine **Nutzungsanfrage bei CPCOR** ist erforderlich. CPCOR koordiniert Lizenz, Nutzungsbedingungen und ggf. Nutzungsgebühren:


  **→ [https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen](https://cpcor.charite.de/promis_national_center_deutschland/nutzungsanfragen)**

#### Quellen der deutschen Übersetzungen

Die in den Questionnaires hinterlegten deutschen Item-Texte und Antwortlabels stammen aus dem **PCOR-MII Master Item-Level Dictionary**, einem konsortialen Referenzdokument, das alle PROMIS-Items für die im PCOR-MII abgebildeten Krankheitsentitäten zusammenführt. Die Übersetzungen sind über das PROMIS Germany National Center (CPCOR) psychometrisch validiert.

Die zentrale Definition der Lizenz- und Quellenangaben für PROMIS-Questionnaires erfolgt über das FSH-RuleSet `PROMIS_Copyright_DE` (siehe `input/fsh/rulesets/promis-copyright.fsh`) und wird im `Questionnaire.copyright`-Feld jeder PROMIS-Ressource ausgespielt.

#### Hinweis zum Verhältnis MII ↔ PROMIS Health Organization

Das MII PRO Modul reklamiert keine Eigentumsrechte an den PROMIS-Items selbst. Die FHIR-Verpackung (Profile, Extensions, Score-Calculation-Architektur) ist MII-Eigenleistung; die inhaltliche IP der PROMIS-Items verbleibt bei der PROMIS Health Organization (Northwestern University).

