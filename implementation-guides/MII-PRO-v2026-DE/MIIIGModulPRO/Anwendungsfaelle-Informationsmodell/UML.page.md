---
topic: UML
---
## UML-Diagramme

### Vollständiges Informationsmodell

Das komplette PRO-Informationsmodell zeigt alle vier Hauptkomponenten und ihre Beziehungen:

<div style="width: 100%; overflow-x: auto;">
  <img src="../../../input/Images/out/input/Images/Logical_Model_UML_complete/MII_PRO_Informationsmodell_Complete.svg" 
       alt="MII PRO Vollständiges Informationsmodell" 
       style="width: 100%; height: auto; max-width: 100%;" />
</div>

---

### Komponente: Fragebogen-Vorlage

Detaillierte Struktur der Fragebogen-Definition mit allen Attributen:

<div style="width: 100%; overflow-x: auto;">
  <img src="../../../input/Images/out/input/Images/Logical_Model_UML_Questionnaire/MII_PRO_Fragebögen.svg" 
       alt="MII PRO Fragebogen-Struktur" 
       style="width: 100%; height: auto; max-width: 100%;" />
</div>

---

### Komponente: Ausgefüllter Fragebogen

Struktur der Fragebogen-Antworten (QuestionnaireResponse):

<div style="width: 100%; overflow-x: auto;">
  <img src="../../../input/Images/out/input/Images/Logical_Model_UML_Questionnaire_Response/MII_PROMs_Fragebögen_ausgefüllt.svg" 
       alt="MII PRO Ausgefüllte Fragebögen" 
       style="width: 100%; height: auto; max-width: 100%;" />
</div>

---

### Komponente: Scores

Score-Berechnung und -Speicherung:

<div style="width: 100%; overflow-x: auto;">
  <img src="../../../input/Images/out/input/Images/Logical_Model_UML_Score/MII_PROMs_Scores.svg" 
       alt="MII PRO Score-Struktur" 
       style="width: 100%; height: auto; max-width: 100%;" />
</div>

---

### Komponente: Domänen

Übergeordnete Gesundheitsdomänen und ihre Beziehungen:

<div style="width: 100%; overflow-x: auto;">
  <img src="../../../input/Images/out/input/Images/Logical_Model_UML_Domain/MII_PROMs_Domäne.svg" 
       alt="MII PRO Domänen-Struktur" 
       style="width: 100%; height: auto; max-width: 100%;" />
</div>

---

### Legende

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

### Hinweise zur Implementierung

Die UML-Diagramme zeigen die konzeptuelle Struktur des Informationsmodells. Die konkrete FHIR-Implementierung weicht in einigen Details ab:

1. **Namenskonvention**: Die Implementierung verwendet camelCase statt Unterstriche
2. **FHIR-Mappings**: Nicht alle UML-Attribute haben direkte FHIR-Entsprechungen
3. **Erweiterungen**: Zusätzliche FHIR-Extensions für spezielle Anforderungen

Details zur FHIR-Umsetzung finden Sie im [Logical Model](./Datensaetze-inkl-Beschreibungen.html) und in der [Technischen Implementierung](../Technische-Implementierung/).