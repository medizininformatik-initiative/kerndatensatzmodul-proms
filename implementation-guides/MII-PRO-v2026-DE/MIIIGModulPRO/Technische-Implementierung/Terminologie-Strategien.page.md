---
topic: Terminologie-Strategien
---
## {{page-title}}


## Übersicht der Terminologieansätze


Das MII PRO Modul unterstützt drei grundlegende Ansätze für die Definition von Antwortoptionen in Questionnaire-Items:

1. **Inline answerOption**: Direkte Definition der Antwortoptionen im Questionnaire
2. **answerValueSet**: Verweis auf externe ValueSets mit flexibler Zusammenstellung
3. **MII-kontrollierte CodeSystems**: Vollständige Kontrolle über Terminologie-Lebenszyklus

## Strategische Entscheidungskriterien

### Inline answerOption verwenden bei:

#### Verfügbare internationale Standards
**Kriterium**: LOINC-Codes für Antwortlisten verfügbar mit verlässlicher Abdeckung

**Implementierungsmuster**:
```
* item[=].answerOption[0].valueCoding.system = $LNC
* item[=].answerOption[0].valueCoding.code = #LA6568-5
* item[=].answerOption[0].valueCoding.display = "Überhaupt nicht"
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[0].extension.valueDecimal = 0
```

**Beispiele**: PHQ-9, PROMIS-Instrumente
**Vorteile**: 
- Internationale Interoperabilität
- Semantische Eindeutigkeit
- Etablierte Coding-Standards

#### Einfache, statische Antwortlisten
**Kriterium**: Wenige Antwortoptionen (≤5), unwahrscheinliche Änderungen, keine Wiederverwendung

**Implementierungsmuster**:
```
* item[=].answerOption[0].valueCoding.display = "Ich habe keine Probleme herumzugehen"
* item[=].answerOption[0].valueCoding.code = #1
* item[=].answerOption[1].valueCoding.display = "Ich habe leichte Probleme herumzugehen"
* item[=].answerOption[1].valueCoding.code = #2
```

**Beispiel**: EQ-5D-5L 5-Punkt-Skala
**Vorteile**:
- Minimale Komplexität
- Direkter, übersichtlicher Code
- Geringere Wartungsanforderungen

#### Reiche Metadaten pro Option erforderlich
**Kriterium**: Mehrsprachigkeit, Score-Gewichte, komplexe Rendering-Anweisungen

**Beispiel**: PHQ-9 mit deutschen Übersetzungen und itemWeight-Extensions

### answerValueSet + MII CodeSystem verwenden bei:

#### Multiple Antwortformat-Varianten
**Kriterium**: Gleiche konzeptuelle Antworten in verschiedenen Textvarianten (kurz/lang/detailliert)

**Implementierungsbeispiel**: BDI-II
```
CodeSystem: MII_CS_PRO_BDI_BDI2_AnswerList
* #bdi-bdi2-answer-1a ^property[+].code = #bdi-bdi2-itemWeight
* #bdi-bdi2-answer-1a ^property[=].valueDecimal = 1
* #bdi-bdi2-answer-1b ^property[+].code = #bdi-bdi2-itemWeight  
* #bdi-bdi2-answer-1b ^property[=].valueDecimal = 1

ValueSet: MII_VS_PRO_BDI_BDI2_AnswerListShort
* include #bdi-bdi2-answer-0 from system MII_CS_PRO_BDI_BDI2_AnswerList
* include #bdi-bdi2-answer-1 from system MII_CS_PRO_BDI_BDI2_AnswerList

ValueSet: MII_VS_PRO_BDI_BDI2_AnswerListLong  
* include #bdi-bdi2-answer-1a from system MII_CS_PRO_BDI_BDI2_AnswerList
* include #bdi-bdi2-answer-1b from system MII_CS_PRO_BDI_BDI2_AnswerList
```

**Vorteile**:
- Zentrale Codeverwaltung
- Mehrere ValueSet-Varianten aus einem CodeSystem
- Wiederverwendbarkeit der Konzepte

#### Wiederverwendung über Questionnaires hinweg
**Kriterium**: Gleiche Antwortmuster in mehreren Instrumenten

**Anwendungsfall**: Generische PRO-Severity-Scales (keine/leicht/mäßig/schwer)
**Vorteile**:
- Konsistente Terminologie
- Zentrale Wartung
- Harmonisierte Datenmodelle

#### Komplexe Score-Anforderungen
**Kriterium**: Multiple Score-Gewichte pro Konzept, komplexe Scoring-Regeln

**Beispiel**: BDI-II mit Varianten-Antwort-Gewichten (1a vs 1b)
**Implementierung**: CodeSystem-Properties für itemWeight-Management

#### Questionnaire Capabilities-basierte Entscheidungen
**Kriterium**: Capability-Profile erfordern spezifische Terminologie-Ansätze

**Capabilities und Terminologie-Implikationen**:
- **Displayable = false, Calculatable = true**: Erfordert answerValueSet für Score-Berechnung ohne Darstellungslogik
- **Displayable = true**: Kann inline answerOption mit reichem Display-Content verwenden
- **Extractable = true**: Benötigt korrekte itemWeight-Definitionen für `.weight()` Funktionen
- **Multiple Capabilities**: Inline answerOption bietet maximale Flexibilität für Darstellung + Berechnung

**BDI-II Beispiel**: 
```
* extension[capabilities].extension[displayable].valueBoolean = false
* extension[capabilities].extension[calculatable].valueBoolean = true
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short" // Scores ohne Display-Abhängigkeit
```

#### MII-kontrollierte Terminologiestrategie  
**Kriterium**: Keine zuverlässigen internationalen Standards, deutsche Spezifika erforderlich

**Strategische Überlegungen**:
- Vollständige Kontrolle über Terminologie-Lebenszyklus
- Deutsche Gesundheitssystem-Spezifika
- Kulturelle Anpassungen der Antwortoptionen
- Normative Autorität über PRO-Definitionen

## Entscheidungsmatrix

| Kriterium | Inline answerOption | answerValueSet + MII CS |
|-----------|-------------------|------------------------|
| **LOINC-Verfügbarkeit** | ✅ Verwenden wenn vorhanden | ❌ Nur wenn unzureichend |
| **Displayable Capability** | ✅ Optimal für Display + Scores | ⚠️ Begrenzt für reine Display-Logik |
| **Calculatable-only** | ⚠️ Overhead für reine Berechnung | ✅ Ideal für Score-only Questionnaires |
| **Mehrfachvarianten** | ❌ Ungeeignet | ✅ Ideal |
| **Wiederverwendung** | ❌ Nicht effizient | ✅ Empfohlen |
| **Komplexe Scores** | ⚠️ Begrenzt durch Extensions | ✅ CodeSystem Properties |
| **Implementierungsaufwand** | ✅ Minimal | ⚠️ Höher |
| **Wartungsaufwand** | ✅ Niedrig (bei statischen Listen) | ⚠️ Höher |
| **Internationale Interop** | ✅ Maximal (mit LOINC) | ⚠️ Begrenzt |
| **Deutsche Spezifika** | ⚠️ Via Extensions | ✅ Native Unterstützung |

## Best Practice Entscheidungsbaum

```mermaid
graph TD
    A[Neue Antwortliste erstellen] --> B{Questionnaire Capabilities?}
    B -->|displayable = false<br/>calculatable = true| C[✅ answerValueSet + MII CodeSystem]
    B -->|displayable = true<br/>+/- andere capabilities| D{LOINC-Codes verfügbar mit Score-Gewichten?}
    
    C --> C1[BDI-II Pattern:<br/>Score-only ohne Display-Overhead]
    
    D -->|Ja| E[✅ Inline answerOption mit LOINC]
    D -->|Nein| F{Multiple Antwortformat-Varianten benötigt?}
    F -->|Ja| G[✅ MII CodeSystem + ValueSet]
    F -->|Nein| H{Wiederverwendung über Questionnaires?}
    H -->|Ja| I[✅ MII CodeSystem + ValueSet]
    H -->|Nein| J{Komplexe Scoring-Anforderungen?}
    J -->|Ja| K[✅ MII CodeSystem + ValueSet]
    J -->|Nein| L[✅ Inline answerOption mit einfachen Codes]
    
    E --> E1[PHQ-9, PROMIS Pattern:<br/>Display + International Standards]
    G --> G1[Multi-Variant Pattern:<br/>kurz/lang Versionen]
    I --> I1[Generische Severity Scales:<br/>Wiederverwendbare Terminologie]
    K --> K1[Multi-Weight Scoring:<br/>Komplexe Berechnungslogik]
    L --> L1[EQ-5D-5L Pattern:<br/>Einfache statische Listen]
```

## Implementierungsbeispiele

### Beispiel 1: PHQ-9 (LOINC + Inline)
```fsh
* item[1].answerOption[0].valueCoding.system = $LNC
* item[1].answerOption[0].valueCoding.code = #LA6568-5
* item[1].answerOption[0].valueCoding.display = "Überhaupt nicht"
* item[1].answerOption[0].valueCoding.display.extension[0].url = $hl7-translation
* item[1].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[1].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[1].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[1].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Not at all"
* item[1].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[1].answerOption[0].extension.valueDecimal = 0
```

### Beispiel 2: BDI-II (MII CodeSystem + ValueSet)
```
// Questionnaire Item
* item[=].answerValueSet = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"

// CodeSystem
CodeSystem: MII_CS_PRO_BDI_BDI2_AnswerList
* ^property[+].code = #bdi-bdi2-itemWeight
* ^property[=].type = #decimal
* #bdi-bdi2-answer-1a ^property[+].code = #bdi-bdi2-itemWeight
* #bdi-bdi2-answer-1a ^property[=].valueDecimal = 1

// ValueSet Short Form
ValueSet: MII_VS_PRO_BDI_BDI2_AnswerListShort
* include #bdi-bdi2-answer-0 from system MII_CS_PRO_BDI_BDI2_AnswerList
* include #bdi-bdi2-answer-1 from system MII_CS_PRO_BDI_BDI2_AnswerList
```x

### Beispiel 3: EQ-5D-5L (Einfache Inline)
```
* item[=].answerOption[+].valueCoding.display = "Ich habe keine Probleme herumzugehen"
* item[=].answerOption[=].valueCoding.code = #1
* item[=].answerOption[+].valueCoding.display = "Ich habe leichte Probleme herumzugehen"
* item[=].answerOption[=].valueCoding.code = #2
```

## Calculated Expressions und .weight() Funktionen

**Kritische Implementierungsanforderung**: FHIRPath `.weight()` Funktionen benötigen korrekte itemWeight-Definitionen:

### Bei Inline answerOption:
```
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[0].extension.valueDecimal = 0
```

### Bei CodeSystem + ValueSet:
```  
CodeSystem: MyCodeSystem
* ^property[+].code = #itemWeight
* ^property[=].type = #decimal
* #answer-code ^property[+].code = #itemWeight
* #answer-code ^property[=].valueDecimal = 0
```

## Governance und Lebenszyklus-Management

### MII-kontrollierte Terminologie
**Vorteile**:
- Vollständige Kontrolle über Definitionen
- Deutsche Gesundheitssystem-Spezifika
- Koordinierte Evolution mit MII-Standards
- Normative Autorität für deutsche PRO-Implementierungen

**Verantwortlichkeiten**:
- MII PRO Arbeitsgruppe: Terminologie-Governance
- Implementierer: Feedback und Anforderungen
- MII Terminologieservice: Distribution und Wartung

### Internationale Standards Integration
**LOINC-Priorität**: Bevorzuge LOINC wo verfügbar und geeignet
**Mapping-Strategien**: ConceptMaps für MII ↔ LOINC Harmonisierung
**Zukunftsstrategie**: Graduelle Migration zu internationalen Standards bei Verfügbarkeit

## Fazit

Die Wahl der Terminologiestrategie ist eine **strategische Architekturentscheidung**, die die langfristige Wartbarkeit, Interoperabilität und Skalierbarkeit von PRO-Implementierungen maßgeblich beeinflusst.

**Grundprinzip**: "Internationale Standards first, MII-kontrollierte Terminologie where necessary, simple inline where appropriate"

Diese Strategie ermöglicht es, die Vorteile internationaler Interoperabilität zu nutzen, während gleichzeitig die spezifischen Anforderungen des deutschen Gesundheitswesens berücksichtigt werden.