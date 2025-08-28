---
topic: ID-Systematik
---
## {{page-title}}

Eine konsistente Systematik der Identifier ist essentiell für die standardisierte Darstellung von PRO-Daten im MII-Kontext.

**Wichtige Abgrenzung**: Identifier sind explizit als MII-interne Business Identifier zu verstehen und nicht zu verwechseln mit semantischen Codes (LOINC, SNOMED CT) von Fragebögen und Fragebogen-Items, die der terminologischen Annotation in offenen Standards dienen.

## Anwendungsbereiche für Identifier

Identifier werden in folgenden Kontexten benötigt:

1. **Fragebogen-Identifikation**: Eindeutige Kennzeichnung einzelner Fragebögen (z.B. PHQ-9, EQ-5D-5L)
2. **Fragengruppen-Identifikation**: Kennzeichnung von Item-Blöcken/Domänen (z.B. PROMIS-29 Physical Function 4a)
3. **Item-Identifikation**: Eindeutige Kennzeichnung einzelner Fragen (z.B. EQ-5D-5L Mobility)
4. **Antwortoptionen-Identifikation**: Kennzeichnung spezifischer Auswahlmöglichkeiten (z.B. "0: Keine Schmerzen")
5. **Score-Identifikation**: Eindeutige Kennzeichnung von Score-Definitionen (z.B. EQ-5D-VAS-Score)
6. **Domänen-Identifikation**: Kennzeichnung gesundheitsbezogener Domänen (z.B. Depression, Angst) 



## FHIR Ressourcen- und Dateinamenkonventionen

Das MII PRO-Modul folgt dem etablierten MII-Benennungsschema:

### Grundstruktur
~~~~
mii-[typ]-[modul]-[spezifikation]
~~~~

- **[typ]**: FHIR-Ressourcentyp (siehe Tabelle unten)
- **[modul]**: `pro` (Patient-Reported Outcomes)
- **[spezifikation]**: Detaillierte Beschreibung des Artefakts

### Ressourcentyp-Abkürzungen

#### Allgemeine MII-Konventionen
Diese Abkürzungen werden MII-weit in allen Modulen verwendet:

| Typ | Bedeutung | FHIR-Ressource | Beispiel |
|-----|-----------|----------------|----------|
| `pr` | Profile | StructureDefinition (Profile) | `mii-pr-pro-questionnaire` |
| `cs` | CodeSystem | CodeSystem | `mii-cs-pro-questionnaire-catalogue` |
| `vs` | ValueSet | ValueSet | `mii-vs-pro-phq-9-answer-list` |
| `cm` | ConceptMap | ConceptMap | `mii-cm-pro-phq9-to-promis-depression` |
| `ex` | Extension | StructureDefinition (Extension) | `mii-ex-pro-questionnaire-capabilities` |
| `exa` | Example | Beliebige Ressource | `mii-exa-pro-phq-9-response` |
| `lm` | LogicalModel | StructureDefinition (LogicalModel) | `mii-lm-pro` |

#### PRO-Modul spezifische Ergänzungen
Diese Abkürzungen sind spezifisch für das PRO-Modul entwickelt worden:

| Typ | Bedeutung | FHIR-Ressource | Beispiel | Status |
|-----|-----------|----------------|----------|---------|
| `qst` | Questionnaire | Questionnaire | `mii-qst-pro-phq-9` | Implementiert |
| `obsdef` | ObservationDefinition | ObservationDefinition | `mii-obsdef-pro-eq5d5l-index-score` | Implementiert |
| `lib` | Library | Library (CQL) | `mii-lib-pro-eq5d-calculations` | Geplant (2026+) |

**Hinweis zu QuestionnaireResponse**: Es wurde diskutiert, die Abkürzung `qr` für QuestionnaireResponse einzuführen. Nach eingehender Prüfung wurde jedoch entschieden, dass QuestionnaireResponses entweder als:
- **Definitionale Profile** unter `pr` (z.B. `mii-pr-pro-questionnaire-response`) oder
- **Konkrete Beispiele** unter `exa` (z.B. `mii-exa-pro-phq-9-response`)

eingeordnet werden sollten, je nach ihrem Verwendungszweck.

**Wichtig**: Dateinamen und Ressourcen-IDs sind identisch und verwenden durchgehend Kleinschreibung mit Bindestrichen.

## Namespace-Systematik für Fragebögen

### Grundprinzipien
- **Menschenlesbarkeit**: Verwendung aussagekräftiger, verständlicher Bezeichnungen statt gehashter Strings
- **Konsistenz**: Einheitliche Schreibweise und Struktur innerhalb des Namespaces
- **Eindeutigkeit**: Klare Abgrenzung verschiedener Instrumente und Versionen

### Namespace-Struktur für Questionnaires
~~~~
mii-qst-pro-[organisation]-[instrument]-[variant]
~~~~

#### Herausforderungen bei der Namespace-Definition

**Problem**: PROM-Instrumenteabkürzungen sind nicht eindeutig und können in verschiedenen Fachgebieten identische Bezeichnungen haben.

**Komplexitätsfaktoren**:
1. **Multiple Instrumente einer Organisation** (z.B. verschiedene PROMIS-Fragebögen)
2. **Verschiedene Major-Versionen** eines Fragebogens (z.B. BDI vs. BDI-II)
3. **Parent-Proxy-Versionen** für Eltern/Kinder-Assessments
4. **Altersgerechte Varianten** in der Pädiatrie
5. **Sprachvarianten** mit inhaltlichen Unterschieden zwischen den Sprachen

**Wichtiger Hinweis**: Diese unterschiedlichen Fragebögen können identische oder vergleichbare Scores produzieren, was bei der Score-Zuordnung berücksichtigt werden muss.

### Etablierte Namespaces (Aktueller Stand)

#### Nach Organisation strukturiert:
~~~~
# EuroQol-Organisation
mii-qst-pro-euroqol-eq5d5l     # EQ-5D-5L (Five Level)
mii-qst-pro-euroqol-eq5dy5l    # EQ-5D-Y-5L (Youth Version)
mii-qst-pro-euroqol-eq5d3l     # EQ-5D-3L (Three Level)

# PROMIS-Organisation  
mii-qst-pro-promis-promis29         # PROMIS-29 Profile v2.1
mii-qst-pro-promis-depression-sf4a  # PROMIS Depression Short Form 4a

# PHQ-Familie (Pfizer/Spitzer)
mii-qst-pro-phq-phq9          # Patient Health Questionnaire-9
mii-qst-pro-phq-gad7          # Generalized Anxiety Disorder-7
mii-qst-pro-phq-phqsads       # PHQ-SADS

# Beck-Inventories
mii-qst-pro-beck-bdi2         # Beck Depression Inventory-II
~~~~

**Hinweis**: Die Namespace-Systematik wird kontinuierlich erweitert und verfeinert, basierend auf den Anforderungen neuer Instrumente.






## LinkId-Konventionen für Questionnaire-Items

### Grundstruktur für linkIds
~~~~
[instrument-prefix]-[item-type]-[identifier]
~~~~

### Aktuell implementierte Patterns

#### 1. Fragenkürzel + Nummerierung (mit führenden Nullen)
**Pattern**: `{instrument}-q{number}` (Nummer immer zweistellig mit führender Null)

~~~~
# PHQ-9 Beispiele
phq-phq9-q01        # Item 1: "Wenig Interesse oder Freude an Tätigkeiten"
phq-phq9-q02        # Item 2: Niedergeschlagenheit
phq-phq9-q09        # Item 9: Suizidgedanken
phq-phq9-score-total # Gesamtscore

# BDI-II Beispiele  
bdi-bdi2-q01        # Item 1: Traurigkeit
bdi-bdi2-q02        # Item 2: Pessimismus
bdi-bdi2-q21        # Item 21: Verlust des Interesses an Sex
bdi-bdi2-score-total # Gesamtscore
~~~~

#### 2. EuroQol Domain-basierte IDs
**Pattern**: `{instrument}-q{number}-{domain-code}` (Nummer zweistellig)

~~~~
# EQ-5D-5L Beispiele
euroqol-eq5d5l-q01-MO    # Mobility (Beweglichkeit)
euroqol-eq5d5l-q02-SC    # Self-Care (Für sich selbst sorgen)
euroqol-eq5d5l-q03-UA    # Usual Activities (Alltägliche Tätigkeiten)
euroqol-eq5d5l-q04-PD    # Pain/Discomfort (Schmerzen/Beschwerden)
euroqol-eq5d5l-q05-AD    # Anxiety/Depression (Angst/Niedergeschlagenheit)
euroqol-eq5d5l-vas       # Visual Analog Scale
~~~~

#### 3. PROMIS Item Bank IDs
**Pattern**: `{instrument}-{item-bank-id}` (basierend auf offiziellen PROMIS-Codes)

~~~~
# PROMIS Depression SF 4a
promis-eddep04           # PROMIS Item EDDEP04 
promis-eddep06           # PROMIS Item EDDEP06
promis-eddep29           # PROMIS Item EDDEP29  
promis-eddep05           # PROMIS Item EDDEP05

# PROMIS-29 Physical Function Items
promis-pfa11             # Physical Function Item (basierend auf Validierungsstudie)
promis-pfa21             # Physical Function Item
promis-pfa23             # Physical Function Item  
promis-pfa53             # Physical Function Item
~~~~

### Score-Item Konventionen
**Pattern**: `{instrument}-{score-type}-{variant}`

~~~~
# Verschiedene Score-Typen
{instrument}-score-raw          # Rohscore
{instrument}-score-tscore       # T-Score (PROMIS)
{instrument}-score-total        # Gesamtscore
{instrument}-score-index        # Index-Score (EQ-5D)
{instrument}-score-vas          # VAS-Score
{instrument}-score-profile      # Profil-Score
~~~~

### Spezielle Item-Typen

#### Display-Items (Instruktionen, Beschreibungen)
~~~~
{instrument}.Description        # Hauptbeschreibung/Instruktion
{instrument}.{section}          # Bereichsspezifische Beschreibung
~~~~

Beispiele:
~~~~
PHQ-9.Description               # PHQ-9 Hauptinstruktion
PROMIS-Depression.Description   # PROMIS Depression Instruktion
~~~~

### Entscheidungsmatrix für linkId-Patterns

| Situation | Empfohlenes Pattern | Beispiel |
|-----------|-------------------|----------|
| **Offizieller Item-Code vorhanden** | Offiziellen Code verwenden | `promis-eddep04` (PROMIS) |
| **Domain-basierte Struktur** | Domain-Suffix hinzufügen | `euroqol-eq5d5l-q01-MO` |
| **Sequenzielle Nummerierung** | Instrument + q{NN} Pattern | `phq-phq9-q01` |
| **Score-Items** | score-type Suffix | `phq-phq9-score-total` |
| **Display-Items** | .Description Pattern | `PHQ-9.Description` |

### Konsistenzregeln

1. **Kleinschreibung**: Alle linkIds verwenden durchgehend Kleinschreibung
2. **Bindestriche**: Trennung von Komponenten durch Bindestriche (keine Unterstriche)
3. **Präfix-Konsistenz**: Gleicher Instrument-Präfix für alle Items eines Fragebogens
4. **Führende Nullen**: Nummerierung immer zweistellig (q01, q02, ..., q10, q11, ...)
5. **Eindeutigkeit**: LinkIds müssen innerhalb eines Fragebogens eindeutig sein
6. **Menschenlesbarkeit**: IDs sollten für Entwickler und Kliniker verständlich sein

### Umgang mit internationalen Standards

**LOINC-Integration**: Wo verfügbar, wird LOINC als code-Element verwendet, während linkId der MII-internen Systematik folgt:

~~~~
//FSH
* item[1].linkId = "phq-phq9-q01"           # MII-interne ID
* item[1].code = $LNC#44250-9               # LOINC-Code für semantische Annotation
~~~~

**PROMIS-Integration**: Offizielle PROMIS Item-IDs werden als linkId übernommen, wo vorhanden:

~~~~
//FSH
* item[1].linkId = "promis-eddep04"         # Offizieller PROMIS Item-Code
* item[1].code = $LNC#71969-0               # LOINC-Code (falls vorhanden)
~~~~

### Herausforderungen und Lösungsansätze

#### Problem: Mehrfachverwendung von Items
**Situation**: PROMIS-Items können in verschiedenen Fragebögen vorkommen (z.B. EDDEP04 in PROMIS-29 und PROMIS Depression SF 4a)

**Lösung**: Konsistente Verwendung derselben linkId in allen Fragebögen ermöglicht:
- Vereinfachte FHIRPath-Expressions für domänenübergreifende Berechnungen
- Wiederverwendbarkeit von Validierungslogik
- Konsistente Datenauswertung

#### Problem: Fehlende offizielle Item-IDs
**Situation**: Nicht alle Instrumente haben standardisierte Item-Codes

**Lösung**: Fallback auf strukturierte Nummerierung mit semantischen Ergänzungen:
~~~~
{instrument}-q{NN}              # Basis-Pattern (führende Null!)
{instrument}-q{NN}-{domain}     # Mit Domain-Information
~~~~

### Best Practices für neue Instrumente

1. **Prüfe auf offizielle Item-IDs**: Verwende etablierte Codes (PROMIS, LOINC) wo vorhanden
2. **Konsistente Präfixe**: Orientiere dich an bestehenden Namespace-Konventionen
3. **Führende Nullen**: Verwende immer zweistellige Nummerierung (q01-q99)
4. **Domain-Codes**: Ergänze bei strukturierten Instrumenten Domain-Abkürzungen
5. **Score-Suffix**: Verwende klare Score-Bezeichnungen (-score-total, -score-raw, etc.)

## Terminologie-Strategien für Antwortoptionen

### Strategische Entscheidung: answerOption vs answerValueSet

Die Wahl zwischen inline `answerOption` und externen `answerValueSet` Definitionen ist eine grundlegende Architekturentscheidung, die die Wartbarkeit, Wiederverwendbarkeit und Interoperabilität maßgeblich beeinflusst.

### Entscheidungsmatrix

| Ansatz | Anwendungsfall | Beispiel | Vorteile | Nachteile |
|--------|---------------|----------|----------|-----------|
| **Inline answerOption + LOINC** | Internationale Standards verfügbar + displayable | PHQ-9, PROMIS | **Vorteile:** Internationale Interoperabilität<br>Semantische Eindeutigkeit | **Hinweis:** Deutsche Übersetzungen via Extensions |
| **Inline answerOption + Simple Codes** | Einfache, statische Listen (≤5 Optionen) + displayable | EQ-5D-5L | **Vorteile:** Minimale Komplexität<br>Direkter Code | **Nachteil:** Keine Wiederverwendbarkeit |
| **answerValueSet + MII CodeSystem** | Capabilities-basiert: displayable=false, calculatable=true | BDI-II | **Vorteile:** Optimiert für Score-only<br>Kein Display-Overhead<br>Deutsche Spezifika | **Hinweis:** Nicht für interaktive Formulare |

### Implementierungsbeispiele

#### Pattern 1: LOINC + itemWeight Extensions (PHQ-9)
~~~~
//FSH
* item[=].answerOption[0].valueCoding.system = $LNC
* item[=].answerOption[0].valueCoding.code = #LA6568-5
* item[=].answerOption[0].valueCoding.display = "Überhaupt nicht"
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[0].extension.valueDecimal = 0
~~~~

#### Pattern 2: MII CodeSystem + ValueSet (BDI-II)
~~~~
//FSH
// Questionnaire
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"

// CodeSystem
* #bdi-bdi2-answer-1 ^property[+].code = #bdi-bdi2-itemWeight
* #bdi-bdi2-answer-1 ^property[=].valueDecimal = 1
~~~~

#### Pattern 3: Einfache Inline Codes (EQ-5D-5L)
~~~~
//FSH
* item[=].answerOption[0].valueCoding.display = "Ich habe keine Probleme herumzugehen"
* item[=].answerOption[0].valueCoding.code = #1
~~~~

### Entscheidungshilfe

**Prüfe zuerst die Questionnaire Capabilities:**

**Verwende answerValueSet + MII CodeSystem wenn:**
- **displayable = false, calculatable = true** (wie BDI-II)
- Optimierung für reine Score-Berechnung ohne Display-Overhead
- Hintergrund-Berechnungen ohne Benutzerinteraktion

**Verwende inline answerOption wenn:**
- **displayable = true** (interaktive Formulare)
- LOINC-Codes mit Score-Gewichten verfügbar sind
- Einfache, statische Antwortlisten (≤5 Optionen) 
- Reiche Metadaten pro Option (Übersetzungen, Gewichte)

**Weitere answerValueSet + MII CodeSystem Kriterien:**
- Multiple Antwortformat-Varianten benötigt (kurz/lang)
- Wiederverwendung über mehrere Questionnaires geplant
- Komplexe Scoring-Anforderungen mit variablen Gewichten
- Deutsche Gesundheitssystem-Spezifika erforderlich

**Detaillierte Dokumentation**: [Terminologie-Strategien](Terminologie-Strategien.html)

**Visualisierung**: Siehe UML-Entscheidungsbaum in den Implementierungsrichtlinien


