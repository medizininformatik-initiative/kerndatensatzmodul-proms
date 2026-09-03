Das abstrakte QuestionnaireResponse-Profil standardisiert die Struktur ausgefüllter Fragebögen. Es erbt vom [SDC QuestionnaireResponse](https://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaireresponse.html) Profil und stellt sicher, dass alle PRO-Antworten konsistent erfasst und verarbeitet werden können. Konkrete Implementierungen müssen dieses Profil erweitern und instrument-spezifische Constraints hinzufügen.

**Kernelemente:**
- Referenz zum zugehörigen Questionnaire
- Verpflichtender Status (completed, in-progress, etc.)
- Strukturierte Items mit Antworten
- Authored-Zeitstempel für Verlaufsdokumentation
