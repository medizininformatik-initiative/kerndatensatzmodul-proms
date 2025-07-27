## {{page-title}}

Geplanter Umfang

- EQ-5D-5L
- PROMIS-29
- PROMIS-33 
- EORTC-QLQ-C30
- PHQ-9 
- BDI-II (zum. Scoring)
- evtl. PROMIS-Fragebögen 4a SF


Vorraussetzung der Bearbeitung: 
- Bereitstellung relevante Publikationen
    - Entwicklungspublikation
    - Validierungspublikationen/  Modifikationspublikationen
    - Übersetzungspublikationen

    - 
- Beschreibung 
Lizenzthema bearbeiten

Timeline: 

Kommentierung September 


erstes Package im Juli 2025
* PHQ-9
* EQ-5D-5L
* Halbwegs lesbarer IG

--- 

Was für generische Profile brauchen wir: 
* PRO-Questionnaire
* PRO-QuestionnaireResponse
* PRO-Score-Observation
* PRO-Score-ObservationDefinition
* PRO-Score-StructureMap

--

Was gehört zu einem einzelnen PROM
* Questionnaire 1..1 
* QuestionnaireResponse -Profil (falls keine komplette Darstellung des Questionnaires vom Lizenzhaltern 
* Score 0..*
    * ScoreDefinition (Observation-Definition)
    * ScoreProfile (Observation-Profil)
* ScoreMaps 0..*


--- 