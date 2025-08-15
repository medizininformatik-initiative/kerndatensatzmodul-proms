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

* 

