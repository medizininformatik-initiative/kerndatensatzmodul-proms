---
topic: UML
---
## UML-Diagramme

- [Übersicht Informationsmodell](#ubersicht-informationsmodell)
- [Komponente: Fragebogen-Vorlage](#komponente-fragebogen-vorlage)
- [Komponente: Ausgefüllter Fragebogen](#komponente-ausgefullter-fragebogen)
- [Komponente: Scores](#komponente-scores)
- [Komponente: Domänen](#komponente-domanen)
- [Hinweise zur Implementierung](#hinweise-zur-implementierung)

### Übersicht Informationsmodell

Das Informationsmodell besteht aus vier Hauptkomponenten, die miteinander interagieren, um den vollständigen Lebenszyklus von Patient-Reported Outcomes abzubilden:

<img src="https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/dev/input/Images/out/input/Images/Logical_Model_UML_compact/MII_PRO_Informationsmodell_Compact.svg?raw=true" alt="MII PRO Übersicht Informationsmodell" style="width:25%;display:block;margin: 1em auto;"/>

Das vollständige Informationsmodell kann im [Github-Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/dev/input/Images/out/input/Images/Logical_Model_UML_complete/MII_PRO_Informationsmodell_Complete.svg) betrachtet werden.

**Legende**

Die UML-Diagramme verwenden folgende Notationen:

- **Klassen**: Rechtecke mit Attributen und Methoden
- **Beziehungen**: 
  - Durchgezogene Linie mit Raute: Komposition (Teil-Ganzes-Beziehung)
  - Durchgezogene Linie mit Pfeil: Assoziation
  - Gestrichelte Linie mit Pfeil: Abhängigkeit
- **Multiplizitäten**: 
  - `1` = genau eins
  - `0..1` = optional (null oder eins)
  - `1..*` = mindestens eins
  - `0..*` oder `*` = beliebig viele

---

### Komponente: Fragebogen-Vorlage

Die Fragebogen-Vorlage definiert die Struktur und den Inhalt eines PRO-Instruments. Sie enthält alle notwendigen Informationen zur Darstellung, Erfassung und Auswertung der Fragen.

<img src="https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/dev/input/Images/out/input/Images/Logical_Model_UML_Questionnaire/MII_PRO_Fragebögen.svg?raw=true" alt="MII PRO Fragebogen-Struktur" style="width:100%;display:block;margin: 1em auto;"/>

**FHIR-Mapping**: Die Fragebogen-Vorlage wird auf die FHIR-Ressource `Questionnaire` gemappt. Die hierarchische Struktur der Fragen wird durch `Questionnaire.item` abgebildet, während Antwortoptionen in `answerOption` definiert werden.

---

### Komponente: Ausgefüllter Fragebogen

Der ausgefüllte Fragebogen erfasst die konkreten Antworten eines Patienten zu einem bestimmten Zeitpunkt. Er referenziert die zugrundeliegende Fragebogen-Vorlage und speichert die gegebenen Antworten strukturiert ab.

<img src="https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/dev/input/Images/out/input/Images/Logical_Model_UML_Questionnaire_Response/MII_PROMs_Fragebögen_ausgefüllt.svg?raw=true" alt="MII PRO Ausgefüllte Fragebögen" style="width:70%;display:block;margin: 1em auto;"/>

**FHIR-Mapping**: Der ausgefüllte Fragebogen wird auf `QuestionnaireResponse` gemappt. Die einzelnen Antworten werden in `QuestionnaireResponse.item.answer` gespeichert, wobei verschiedene Datentypen unterstützt werden.

---

### Komponente: Scores

Die Score-Komponente umfasst sowohl die Definition von Berechnungsalgorithmen (Score-Vorlage) als auch die konkreten berechneten Werte (Score-Instanz). Sie unterstützt verschiedene Berechnungsarten und ermöglicht Mappings zwischen unterschiedlichen Scoring-Systemen.

<img src="https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/dev/input/Images/out/input/Images/Logical_Model_UML_Score/MII_PROMs_Scores.svg?raw=true" alt="MII PRO Score-Struktur" style="width:100%;display:block;margin: 1em auto;"/>

**Unterscheidung der Score-Typen**:
- **Score_Fragebogen_Score**: Berechnung basiert auf einem vollständigen ausgefüllten Fragebogen
- **Score_Itembasierter_Score**: Berechnung basiert auf einzelnen Items aus möglicherweise verschiedenen Fragebögen

**FHIR-Mapping**: 
- Score-Vorlagen werden auf `ObservationDefinition` gemappt
- Berechnete Scores werden als `Observation` gespeichert
- Die Verbindung zur Datenquelle erfolgt über `Observation.derivedFrom`

---

### Komponente: Domänen

Domänen klassifizieren PRO-Scores nach Gesundheitsbereichen und ermöglichen die Einordnung in übergeordnete Konzepte. Sie definieren Skalierungen und Referenzwerte für die Interpretation der Scores.

<img src="https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/dev/input/Images/out/input/Images/Logical_Model_UML_Domain/MII_PROMs_Domäne.svg?raw=true" alt="MII PRO Domänen-Struktur" style="width:100%;display:block;margin: 1em auto;"/>

**FHIR-Mapping**: Domänen werden primär durch Terminologie-Ressourcen (`CodeSystem`, `ValueSet`) und Metadaten in den Score-Definitionen abgebildet.

---

### Hinweise zur Implementierung

Die UML-Diagramme zeigen die konzeptuelle Struktur des Informationsmodells. Die konkrete FHIR-Implementierung weicht in einigen Details ab:

1. **Namenskonvention**: Die Implementierung verwendet camelCase statt Unterstriche
2. **FHIR-Mappings**: Nicht alle UML-Attribute haben direkte FHIR-Entsprechungen
3. **Erweiterungen**: Zusätzliche FHIR-Extensions für spezielle Anforderungen

Details zur FHIR-Umsetzung sind in der technischen Implementierung (siehe {{pagelink:MIIIGModulPRO/Technische-Implementierung}}) zu finden.