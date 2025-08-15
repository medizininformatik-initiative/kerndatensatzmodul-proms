---
topic: Ballotierungsfragen
---
## {{page-title}}

Umfang des ersten Pre-Releases

* Profile zur technischen Ausspezifizierung der Teilmodule Fragebogen, ausgefüllter Fragebogen und Score (ohne ScoreMapping)
    * PRO-Fragebogen-Vorlage (Questionnaire) 
    * PRO-ausgefüllter Fragebogen (QuestionnaireResponse)
    * PRO-Score (Observation)
    * PRO-Score-Vorlage (ObservationDefinition)

* lokale Validierungsprobleme
* zusätzliche Datenpunkte, die nicht abbildbar sind

### Darstellung und Rendering von PRO-Instrumenten

* **Welche Informationen sind auf den PRO-Instrument-Seiten relevant?**
  * Sollten die Seiten primär die technische FHIR-Spezifikation zeigen oder auch klinische Hintergrundinformationen zum Instrument enthalten?
  * Welche Metadaten sind für Anwender besonders wichtig (z.B. Validierungsstudien, Referenzbereiche, Interpretationshinweise)?
  * Wie sollten Scoring-Algorithmen und Berechnungslogik dokumentiert werden?
  * Sollten Beispiel-QuestionnaireResponses und berechnete Scores als Referenz bereitgestellt werden?

* **Wie sollten die Fragebögen optimal gerendert werden?**
  * Sollte eine einheitliche Rendering-Vorgabe für alle PRO-Instrumente definiert werden oder instrumentenspezifische Anpassungen erlaubt sein?
  * Welche SDC-Rendering-Extensions sollten als Mindeststandard festgelegt werden (z.B. itemControl, choiceOrientation)?
  * Wie sollten mehrsprachige Fragebögen (primär Englisch mit deutschen Übersetzungen) dargestellt werden?
  * Sollten responsive Design-Vorgaben für mobile Endgeräte definiert werden?
  * Wie sollten berechnete Scores während der Eingabe visuell dargestellt werden (z.B. Live-Berechnung, Progress-Indikatoren)?

### Zukünftige IG-Struktur und PRO-Verteilung

Die aktuelle Implementation Guide enthält sowohl das technische Framework als auch eine wachsende Bibliothek von PRO-Instrumenten. Mit der erwarteten Expansion auf potentiell über 100 PRO-Instrumente stellt sich die Frage der optimalen Organisationsstruktur.

**Mögliche Szenarien:**

1. **Monolithischer IG** (Status Quo)
   - Alle PROs und Framework in einem IG
   - Vorteil: Single Source of Truth, einfache Versionierung
   - Nachteil: Wird unüberschaubar groß, lange Build-Zeiten

2. **Framework/Bibliothek-Trennung**
   - IG 1: Technisches Framework, Profile und Capability-Definitionen
   - IG 2: PRO-Bibliothek mit konkreten Instrumenten
   - Vorteil: Klare Trennung von Struktur und Inhalt
   - Nachteil: PRO-Bibliothek wird trotzdem sehr groß

3. **Domänen-basierte IGs**
   - Separater IG pro Gesundheitsdomäne (Depression, Schmerz, Körperliche Funktion, etc.)
   - Vorteil: Aligned mit Domain-basiertem Scoring-Ansatz
   - Nachteil: Multi-Domain PROs (PROMIS-29, EQ-5D) schwer zuzuordnen

4. **Modul-integrierte PROs**
   - PROs wandern in fachspezifische Module (z.B. EORTC QLQ-C30 → Onkologie-Modul)
   - Vorteil: Fachliche Nähe und Domänenexpertise
   - Nachteil: Fragmentierung, erschwerte Harmonisierung

5. **Hybrid-Ansatz**
   - Core Framework + häufige generische PROs im Basis-IG
   - Fachspezifische PROs in jeweiligen Modulen, müssen aber Framework konform sein
   - Vorteil: Balance zwischen Zentralisierung und Verteilung
   - Nachteil: Komplexere Governance

**Ballotierungsfrage:** Welche Organisationsstruktur würde die Implementierung und Wartung von PROs in Ihrer Institution am besten unterstützen? Gibt es weitere Szenarien, die berücksichtigt werden sollten?

* 

