# PROMIS Cognitive Function SF 4a - MII IG PRO v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**PRO Library**](pro-library.md)
* **PROMIS Cognitive Function SF 4a**

## PROMIS Cognitive Function SF 4a

### Klinischer Kontext

Die **PROMIS Cognitive Function Short Form 4a** misst die selbstberichtete kognitive Funktion — wahrgenommene geistige Klarheit, Gedächtnis und die Fähigkeit, Tätigkeiten zu verfolgen und zwischen ihnen zu wechseln — mit vier Items über einen Sieben-Tage-Zeitraum. Sie stammt aus der PROMIS-Cognitive-Function-Itembank; die Scores werden auf der gemeinsamen **T-Score-Metrik** berichtet (Mittel 50, SD 10, US-Referenzpopulation).

**Richtung:** Anders als die symptomorientierten PROMIS-Domänen bedeuten **höhere Werte bessere kognitive Funktion** (`increase` in der Health-Correlation-Extension). Die vier Items sind als Probleme formuliert („Mein Denken war langsam") und werden auf einer fünfstufigen Häufigkeitsskala beantwortet, deren Gewichte entsprechend invertiert laufen.

**Scoring:** Rohwert 4–20 (Summe der vier Itemgewichte), Umrechnung in den T-Score (20–80) über die offizielle Konversionstabelle.

### FHIR-Implementierung

> **Sprachstrategie:** Englisch als Primärsprache (das validierte Original), deutsche Texte als Translations; Wortlaute gegen das PCOR-MII Master Item-Level Dictionary verifiziert (MATCH=4, DIFF=0, Release 2026.4.0).

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a`

**Besonderheiten:**

* linkIds `promis-cognition-pc2r`, `-pc35r`, `-pc36r`, `-pc42r` — die PROMIS-Itembank-Identitäten (das `r` markiert die invertierte Formulierung), dazu die berechneten Items `promis-cognition-sf4a-raw-score` und `-t-score`.
* LOINC-Panel `81525-8`; MII-Katalogcode `promis-cognitive-function-sf4a`.
* Score-Berechnung über eine FHIR-Variable (`cognitiveRawScore`), die beide berechneten Items speist — das [Multi-Score-Muster](questionnaire-capabilities.md), das zirkuläre Abhängigkeiten vermeidet.
* Copyright nach der PROMIS-Schichten-Attribution (RuleSet `PROMIS_Copyright_DE`): MII-FHIR-Struktur / PROMIS-Items © PROMIS Health Organization / deutsche Übersetzungen via PCOR-MII, kuratiert durch CPCOR Charité / LOINC © Regenstrief. Institutionelle Nutzung außerhalb des PCOR-MII erfordert eine [CPCOR-Nutzungsanfrage](promis.md).

Die vollständige Ressource: [Questionnaire-Definition](Questionnaire-mii-qst-pro-promis-cognitive-function-sf4a.md).

#### Score-Repräsentation

1. **Berechnete Items**in der QuestionnaireResponse (Rohwert + T-Score)
1. **Observation-Profile**[Rohwert](StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-raw-score.md)und[T-Score](StructureDefinition-mii-pr-pro-promis-cognitive-function-sf4a-tscore.md)
1. **ObservationDefinitions:**[Rohwert](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score.md)(4–20) und[T-Score](ObservationDefinition-mii-obsdef-pro-promis-cognitive-function-sf4a-tscore.md)(20–80, höher = bessere kognitive Funktion)

### Verhältnis zu PROMIS-16

Der PROMIS-16 deckt die Domäne Cognitive Function mit **zwei anderen Items** ab (PC27r, PC-CaPS3r) — die Instrumente teilen die Domäne, aber nicht die Items; aus einer PROMIS-16-Antwort lässt sich daher keine vollständige SF 4a extrahieren (siehe die [Überlapp-Tabelle](promis-16.md)).

### Lizenz

PROMIS-Items © PROMIS Health Organization; deutsche Übersetzungen kuratiert durch CPCOR Charité. **Nutzungsanfrage für institutionelle Implementierung außerhalb des PCOR-MII erforderlich** — siehe [PROMIS-Lizenzierung](promis.md).

### Quellen

* Cella D, et al. PROMIS Cognitive Function item bank. **HealthMeasures**, healthmeasures.net.
* PCOR-MII Master Item-Level Dictionary (validierte deutsche Wortlaute).

