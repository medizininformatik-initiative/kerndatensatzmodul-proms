## Datensätze inkl. Beschreibungen

Das MII PRO Modul definiert ein logisches Datenmodell für die standardisierte Erfassung und Verarbeitung von Patient-Reported Outcomes. Dieses Informationsmodell bildet die konzeptuelle Grundlage für alle FHIR-Profile und beschreibt die Beziehungen zwischen den verschiedenen Komponenten des PRO-Workflows.

### Informationsmodell Übersicht

Das PRO-Informationsmodell besteht aus vier Hauptkomponenten, die miteinander interagieren, um den vollständigen Lebenszyklus von Patient-Reported Outcomes abzubilden:

```plantuml
@startuml
!theme plain
skinparam backgroundColor white
skinparam linetype ortho

package "PRO Informationsmodell" {
  object "Fragebogen_Vorlage" as FV {
    Strukturdefinition
    Fragen und Antwortoptionen
    Versionierung
  }
  
  object "Ausgefüllter_Fragebogen" as AF {
    Patientenantworten
    Erfassungszeitpunkt
    Referenz zur Vorlage
  }
  
  object "Score" as S {
    Berechnete Werte
    Algorithmen
    Interpretationen
  }
  
  object "Domäne" as D {
    Gesundheitsbereiche
    Skalierungen
    Referenzwerte
  }
  
  FV --> AF : instanziiert
  AF --> S : generiert
  S --> D : zugeordnet zu
}
@enduml
```

### FHIR Logical Model

Das logische Modell (`MII_LM_PRO`) definiert die abstrakte Struktur der PRO-Daten unabhängig von der konkreten FHIR-Implementierung. Es dient als Brücke zwischen der konzeptuellen Ebene und der technischen Umsetzung in FHIR-Ressourcen.

<tabs>
  <tab title="Struktur">
    {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-lm-pro}}
  </tab>
  <tab title="JSON">
    {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-lm-pro}}
  </tab>
  <tab title="XML">
    {{xml:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-lm-pro}}
  </tab>
</tabs>

### Komponente 1: Fragebogen-Vorlage

Die Fragebogen-Vorlage definiert die Struktur und den Inhalt eines PRO-Instruments. Sie enthält alle notwendigen Informationen zur Darstellung, Erfassung und Auswertung der Fragen.

```plantuml
@startuml
!theme plain
skinparam backgroundColor white
skinparam linetype ortho

package "Fragebogen_Vorlage" {
    object Fragebogen {
        FragebogenID: string
        FragebogenNameVollstaendig: i18nString
        FragebogenNameAbkuerzung: i18nString
        FragebogenVersion: string
        FragebogenIDIntern: string
        FragebogenStandardID: string
        FragebogenStandardSystem: string
        FragebogenStandardVersion: string
        Fragen: Frage[]
        Autoren: string
        Copyright: string
    }
    
    object Frage {
        FragenIDIntern: string
        FragenIDStandardID: string
        FragenIDStandardSystem: string
        Fragetext: i18nString
        FragetextAusfuellhinweise: i18nString
        Anzeigemodalitaet: code
        FragetextAusgefuelltWenn: Expression
        AntwortVorlage: AntwortVorlage
    }
    
    object AntwortVorlage {
        Antworttyp: code
    }
    
    object AntwortAuswahlOption {
        AntwortOptionText: i18nString
        AntwortOptionExklusive: boolean
        AntwortOptionCodeIntern: code
        AntwortOptionStandardCode: code
        AntwortOptionGewicht: decimal
    }
    
    Fragebogen "1" o-- "1..*" Frage
    Frage "1" o-- "1" AntwortVorlage
    AntwortVorlage <|-- AntwortAuswahlOption
}
@enduml
```

**FHIR-Mapping**: Die Fragebogen-Vorlage wird auf die FHIR-Ressource `Questionnaire` gemappt. Die hierarchische Struktur der Fragen wird durch `Questionnaire.item` abgebildet, während Antwortoptionen in `answerOption` definiert werden.

### Komponente 2: Ausgefüllter Fragebogen

Der ausgefüllte Fragebogen erfasst die konkreten Antworten eines Patienten zu einem bestimmten Zeitpunkt. Er referenziert die zugrundeliegende Fragebogen-Vorlage und speichert die gegebenen Antworten strukturiert ab.

```plantuml
@startuml
!theme plain
skinparam backgroundColor white

package "Ausgefüllte_Fragebögen" {
    object AusgefuellterFragebogen {
        FragebogenIDIntern: Reference(Fragebogen)
        Erfassungsdatum: dateTime
        AusfuellendePersonID: identifier
        AusfuellendePersonRolle: code 
        Antworten: AntwortErfasst[]
    }
    
    object AntwortErfasst {
        FragenIntern: string
        AntwortCode: code
        AntwortNummer: decimal
        AntwortString: string
        AntwortDatum: date
        Erfassungsdatum: dateTime
    }
    
    AusgefuellterFragebogen "1" o-- "1..*" AntwortErfasst
}
@enduml
```

**FHIR-Mapping**: Der ausgefüllte Fragebogen wird auf `QuestionnaireResponse` gemappt. Die einzelnen Antworten werden in `QuestionnaireResponse.item.answer` gespeichert, wobei verschiedene Datentypen unterstützt werden.

### Komponente 3: Score-Berechnung

Die Score-Komponente umfasst sowohl die Definition von Berechnungsalgorithmen (Score-Vorlage) als auch die konkreten berechneten Werte (Score-Instanz). Sie unterstützt verschiedene Berechnungsarten und ermöglicht Mappings zwischen unterschiedlichen Scoring-Systemen.

```plantuml
@startuml
!theme plain
skinparam backgroundColor white

package "Scores" {
    object ScoreVorlage {
        ScoreVorlageID: string
        ScoreName: i18nString
        Scoreberechnung: ScoreBerechnung
        Domaene: Reference(Domaene)
        ScoreMapping: ScoreMapping[]
    }
    
    object ScoreBerechnung {
        ScoreBerechnungsID: string
        ScoreDatentyp: code
        ScoreBerechnungsAlgorithmus: Expression
        ScoreQuelle: URI
    }
    
    object ScoreBerechnet {
        ScoreID: string
        ScoreVorlage: Reference
        Berechnungsdatum: dateTime
        ScoreInterpretation: code
        BerechneterScorewert: decimal
    }
    
    object ScoreFragebogenScore {
        FragebogenVorlage: Reference
        AusgefuellterFragebogen: Reference
    }
    
    object ScoreItembasierterScore {
        AusgefuellteAntworten: Reference[]
    }
    
    ScoreVorlage "1" o-- "1..*" ScoreBerechnung
    ScoreVorlage "1" <-- "0..*" ScoreBerechnet
    ScoreBerechnung <|-- ScoreFragebogenScore
    ScoreBerechnung <|-- ScoreItembasierterScore
}
@enduml
```

**Unterscheidung der Score-Typen**:
- **ScoreFragebogenScore**: Berechnung basiert auf einem vollständigen ausgefüllten Fragebogen
- **ScoreItembasierterScore**: Berechnung basiert auf einzelnen Items aus möglicherweise verschiedenen Fragebögen

**FHIR-Mapping**: 
- Score-Vorlagen werden auf `ObservationDefinition` gemappt
- Berechnete Scores werden als `Observation` gespeichert
- Die Verbindung zur Datenquelle erfolgt über `Observation.derivedFrom`

### Komponente 4: Domänen

Domänen klassifizieren PRO-Scores nach Gesundheitsbereichen und ermöglichen die Einordnung in übergeordnete Konzepte. Sie definieren Skalierungen und Referenzwerte für die Interpretation der Scores.

```plantuml
@startuml
!theme plain
skinparam backgroundColor white

package "Domäne" {
    object Domaene {
        DomaeneID: string
        DomaeneCode: code
        DomaeneTitel: i18nString
        DomaeneBeschreibung: string
        DomaeneParentDomaene: Reference
        DomaenenSkalen: DomaenenSkala[]
    }
    
    object DomaenenSkala {
        DomaenenSkalenID: string
        Minimum: decimal
        Maximum: decimal
        Skalenart: code
        Skalenrichtung: code
        Referenzpopulation: string
    }
    
    object Referenzpopulation {
        Altersbereich: string
        Geschlecht: code
        Indikation: string
        Mittelwert: decimal
        Standardabweichung: decimal
    }
    
    Domaene "1" o-- "0..*" DomaenenSkala
    DomaenenSkala "1" o-- "0..*" Referenzpopulation
}
@enduml
```

**FHIR-Mapping**: Domänen werden primär durch Terminologie-Ressourcen (`CodeSystem`, `ValueSet`) und Metadaten in den Score-Definitionen abgebildet.

### Datenfluss im PRO-System

Der folgende Ablauf zeigt, wie die verschiedenen Komponenten im PRO-Workflow zusammenwirken:

```plantuml
@startuml
!theme plain
skinparam backgroundColor white
skinparam sequenceArrowThickness 2
skinparam sequenceLifeLineThickness 2

participant "Patient/Kliniker" as P
participant "Fragebogen\nVorlage" as FV
participant "Ausgefüllter\nFragebogen" as AF
participant "Score\nBerechnung" as SB
participant "Score\nInstanz" as SI
participant "Domänen\nZuordnung" as DZ

P -> FV : Fragebogen auswählen
FV -> P : Fragen präsentieren
P -> AF : Antworten eingeben
AF -> SB : Antworten übergeben
SB -> SI : Score berechnen
SI -> DZ : Score einordnen
DZ -> P : Interpretierte Ergebnisse
@enduml
```

### Implementierungshinweise

Das logische Modell dient als konzeptuelle Grundlage und wird in der Praxis durch die konkreten FHIR-Profile umgesetzt. Dabei gelten folgende Prinzipien:

1. **Abstraktion vor Implementierung**: Das logische Modell beschreibt die Konzepte unabhängig von technischen Details
2. **Flexibilität**: Nicht alle Elemente des logischen Modells müssen in jeder Implementierung vorhanden sein
3. **Erweiterbarkeit**: Das Modell kann für spezifische Anwendungsfälle erweitert werden
4. **Interoperabilität**: Die FHIR-Mappings gewährleisten den Datenaustausch zwischen Systemen

### Validierung und Qualitätssicherung

Die Implementierung des logischen Modells wird durch folgende Mechanismen validiert:

- **Strukturelle Validierung**: FHIR-Profile erzwingen die korrekte Struktur
- **Terminologie-Bindung**: Verwendung standardisierter Codesysteme
- **Geschäftsregeln**: Invarianten und Constraints in den Profilen
- **Berechnungsvalidierung**: Definierte Algorithmen für Score-Berechnungen

### Zukunftsperspektiven

Das logische Modell bildet die Grundlage für zukünftige Erweiterungen:

- **Modulare Fragebögen**: Wiederverwendbare Fragebogen-Komponenten
- **Computer Adaptive Testing (CAT)**: Dynamische Fragebogenanpassung
- **Mehrsprachigkeit**: Vollständige i18n-Unterstützung
- **Advanced Analytics**: Komplexe statistische Auswertungen