Das abstrakte Questionnaire-Profil bildet die Grundlage für alle PRO-Fragebögen. Es erbt vom [SDC Questionnaire](https://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaire.html) Profil und erweitert es mit MII-spezifischen Capabilities und Extensions. Konkrete Instrument-Profile (z.B. PHQ-9, EQ-5D-5L, PROMIS-29) müssen von diesem Profil erben und instrument-spezifische Constraints hinzufügen.

**Kernelemente:**
- Verpflichtende URL zur eindeutigen Identifikation
- Status und Version für Lifecycle-Management
- Capability-Extensions zur Verhaltenssteuerung (displayable, collectable, calculatable, extractable)
- SDC-Extensions für erweiterte Funktionalität (Rendering, Berechnung, Extraktion)
