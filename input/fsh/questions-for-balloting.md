# Questions for Balloting - MII PRO Extension Module

## Zentrale Architektur-Fragestellung für das Balloting

### Problem: Ableitung und Rückverfolgbarkeit von Score-Observations

**Hintergrund**: Das MII PRO Modul implementiert verschiedene Arten von Score-Berechnungen:
1. **Direkte Berechnung** aus QuestionnaireResponse (z.B. PHQ-9 Gesamtscore)
2. **Mapping-basierte Berechnung** aus anderen Scores (z.B. PHQ-9 → PROMIS Depression T-Score)

**Kernfrage**: Wie sollen wir die Herkunft und Berechnungsmethode von Score-Observations architektonisch modellieren?

### Vorgeschlagene Lösungsansätze

**Option 1: Method-basierte Unterscheidung**
```fsh
Profile: MII_PR_PRO_Score_Instance
* method ^slicing für:
  - questionnaire-basierte Berechnungsmethoden
  - mapping-basierte Berechnungsmethoden
* derivedFrom → Verweis auf Quelle (QuestionnaireResponse oder Observation)
```

**Option 2: DerivedFrom-Slicing**
```fsh
* derivedFrom ^slicing:
  - questionnaireResponse → Reference(QuestionnaireResponse)
  - scoreMapping → Reference(Observation)
```

**Option 3: Separate Profile**
```fsh
MII_PR_PRO_Score_Questionnaire_Based
MII_PR_PRO_Score_Mapping_Based
```

**Option 4: Ein Profil mit Invarianten**
```fsh
MII_PR_PRO_Score_Instance + Invarianten:
"Wenn method=questionnaire → derivedFrom muss QuestionnaireResponse sein"
"Wenn method=mapping → derivedFrom muss Observation + Mapping-Referenz sein"
```

### Spezifische Balloting-Fragen

1. **Terminologie-Strategie für deutsche Anforderungen**:
   - Wie bewerten Sie den MII-kontrollierten Terminologie-Ansatz vs. internationale Standards (LOINC)?
   - Welche Erfahrungen gibt es mit Scoring-Gewichtungen in Standard-Terminologie-Servern?
   - Wie sollte die Brücke zu internationalen Standards (LOINC) in zukünftigen Versionen gestaltet werden?

2. **Semantische Klarheit vs. Implementierungskomplexität**: 
   - Welcher Ansatz bietet die beste Balance zwischen semantischer Eindeutigkeit und praktischer Implementierbarkeit?

3. **Mapping-Dokumentation**: 
   - Wie sollen komplexe Score-Mappings (PHQ-9→PROMIS) formal dokumentiert werden? (ConceptMap, CQL, StructureMap?)
   - Wo sollen Mapping-Algorithmen und deren Validierung gespeichert werden?

4. **Governance und Versionierung**:
   - Wie können Änderungen an Mapping-Algorithmen über die Zeit verwaltet werden?
   - Welche Metadaten sind für die Rückverfolgbarkeit von Score-Berechnungen erforderlich?

5. **Integration in klinische Entscheidungsunterstützung**:
   - Welche Anforderungen haben klinische Entscheidungsunterstützungssysteme an die Nachvollziehbarkeit von Score-Herleitungen?
   - Wie können unterschiedliche Validitätsniveaus (direkt gemessen vs. gemappt) kommuniziert werden?

6. **Interoperabilität**:
   - Welcher Ansatz unterstützt die beste Interoperabilität mit bestehenden FHIR-Implementierungen?
   - Wie können externe Systeme die Herkunft von Scores verstehen und validieren?

### Gewünschtes Balloting-Feedback

Wir bitten die Balloting-Community um spezifisches Feedback zu:

- **Bevorzugter architektonischer Ansatz** und Begründung
- **Erfahrungen mit ähnlichen Implementierungen** in anderen Domänen
- **Praktische Implementierungsherausforderungen** der vorgeschlagenen Ansätze
- **Governance-Empfehlungen** für Score-Mapping-Algorithmen
- **Klinische Sicherheitsaspekte** bei der Verwendung gemappter vs. direkt berechneter Scores

### Auswirkungen der Entscheidung

Diese architektonische Entscheidung beeinflusst:
- Questionnaire-Katalog-Design
- Validierungs- und Qualitätssicherungsprozesse
- Integration mit klinischen Arbeitsabläufen
- Wartungsaufwand für Implementierer
- Interoperabilität mit internationalen PRO-Standards

**Ziel**: Etablierung eines robusten, nachvollziehbaren und implementierbaren Standards für PRO-Score-Management im deutschen Gesundheitswesen.

---

## Zusätzliche Architektur-Vision: Item-basierte Score-Berechnung (Zukünftige Major-Version)

### Vision: Von Fragebogen-zentrisch zu Item-zentrisch

**Konzept**: Ähnlich wie BMI-Berechnung (Gewicht + Größe aus beliebiger Quelle) sollten PRO-Scores aus konstituierenden Items berechenbar sein, unabhängig vom Quell-Fragebogen.

**Beispiel**: PROMIS Depression SF 4a enthält 4 Items, die auch in PROMIS-29 enthalten sind. Der Score sollte berechenbar sein aus:
- Vollständigem PROMIS Depression SF 4a Fragebogen
- Den 4 entsprechenden Items aus PROMIS-29  
- Gemischten Quellen mit denselben 4 Items

### Technische Implementierung

**Component-basierte Observation-Struktur**:
```fsh
Observation: PROMIS_Depression_SF4a_Score
* valueQuantity: finaler T-Score (berechnet)
* component[0-3]: Die 4 spezifischen Item-Antworten
* method: Verweis auf Berechnungsalgorithmus
```

**Berechnungsoptionen**:
1. **StructureMap**: Item-Extraktion + einfache Berechnungen
2. **CQL**: Komplexe statistische Berechnungen (T-Scores)
3. **Hybrid**: StructureMap für Extraktion, CQL für Berechnung

### Balloting-Fragen zur Item-basierten Strategie

1. **Strategische Ausrichtung**:
   - Wie bewerten Sie die Vision einer item-basierten PRO-Architektur?
   - Welche Vorteile/Nachteile sehen Sie im Vergleich zu fragebogen-zentrierten Ansätzen?

2. **Item-Standardisierung**:
   - Wie sollten kanonische Item-Identifikatoren strukturiert werden?
   - Welche Governance ist für item-level semantische Konsistenz erforderlich?

3. **Berechnungsarchitektur**:
   - Bevorzugen Sie StructureMap, CQL oder hybride Ansätze für Score-Berechnungen?
   - Wie sollten komplexe statistische Transformationen (T-Scores) implementiert werden?

4. **Klinische Validität**:
   - Unter welchen Bedingungen sind Scores aus gemischten Item-Quellen klinisch äquivalent?
   - Welche Metadaten sind für die Validierung item-basierter Scores erforderlich?

5. **Implementation und Performance**:
   - Welche FHIR-Server-Capabilities sind für item-basierte Berechnungen erforderlich?
   - Wie können Performance-Anforderungen für Real-time-Berechnungen erfüllt werden?

### Langfristige Vorteile

**Ermöglichte Techniken**:
- Computer Adaptive Testing (CAT)
- Modulare Fragebogen-Assemblierung  
- Retrospektive Score-Analyse
- Flexible Datensammlung-Strategien

**Strategischer Wert**: Positioniert MII PRO Modul als führend in flexiblen, wiederverwendbaren PRO-Implementierungen bei Beibehaltung normativer Autorität über deutsche Item-Definitionen.

**Zeitplan**: Grundlagen in aktueller Version, vollständige item-basierte Architektur für zukünftige Major-Version geplant.