# ISR-Z - MII IG PRO v2026.7.0

## ISR-Z

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Klinischer Kontext

Das **ISR (ICD-10-Symptom-Rating)** ist ein deutschsprachiges Selbstbeurteilungsinstrument, das psychische Symptomatik entlang der ICD-10-Systematik erfasst. Das vollständige Instrument umfasst 29 Items und sechs Syndromskalen (Depression, Angst, Zwang, Somatoform, Essstörungen sowie eine Zusatzskala) plus einen Gesamtwert.

Im MII-PRO-Modul ist bewusst nur die **Subskala Zwang (ISR-Z)** mit drei Items abgebildet — das ist der in PCOR-MII erhobene Ausschnitt. Die Items werden auf einer fünfstufigen Zustimmungsskala beantwortet (0 = trifft nicht zu bis 4 = trifft extrem zu).

### ⚠️ Scoring: Mittelwert statt Summe

Das ISR weicht von der im Modul sonst üblichen Summenbildung ab: **Skalenwerte sind Mittelwerte der zugehörigen Items**, und der Gesamtwert des vollständigen ISR ist die Summe der Skalenmittelwerte geteilt durch die Anzahl der Skalen.

Für die Z-Subskala bedeutet das: Der Skalenwert ist der **Mittelwert der drei Items**, Wertebereich **0–4** — nicht 0–12. Wer hier versehentlich summiert, erhält Werte, die weder mit publizierten Normwerten noch mit anderen ISR-Auswertungen vergleichbar sind.

### FHIR-Implementierung

> **Sprachstrategie:** Deutsch als Primärsprache — das ISR wurde auf Deutsch entwickelt. Eine englische Übersetzung wird nicht behauptet oder erfunden.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-isr-z`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**

* linkIds `isr-z-q01`…`isr-z-q03`, Score-Item `isr-z-score-mean`.
* Eigene, instrumentenspezifische Antwortskala: MII-CodeSystem `mii-cs-pro-isr-z-answers` mit `ordinalValue`-Property 0–4, gebunden über `answerValueSet`. Die `display`-Werte sind deutsch, passend zur Sprache des Fragebogens.
* Score-Berechnung via FHIRPath mit **`.avg()` statt `.sum()`**: `%resource.item.where(linkId.matches('^isr-z-q0[1-3]$')).answer.value.ordinal().avg()`.
* Weder LOINC noch SNOMED CT führen einen Code für das ISR (geprüft); Kodierung über den MII-Questionnaire-Katalog.

Die vollständige Ressource: [Questionnaire-Definition](Questionnaire-mii-qst-pro-isr-z.md).

#### Score-Repräsentation

1. **Berechnetes Item**in der QuestionnaireResponse (linkId:`isr-z-score-mean`)
1. **Observation**mit MII-Score-Code`isr-z-mean`
1. **ObservationDefinition:**`mii-obsdef-pro-score-isr-z`— Wertebereich 0–4 {score} als**Dezimalwert**(Mittelwert, daher keine Ganzzahl), höher = stärker ausgeprägte Zwangssymptomatik

### Lizenz

**Frei verfügbar** laut DIZ-Implementierungsliste PCOR-MII. Auf Deutsch entwickelt, keine Übersetzung erforderlich.

### Quellen

* Tritt K, von Heymann F, Zaudig M, Zacharias I, Söllner W, Loew T. Entwicklung des Fragebogens „ICD-10-Symptom-Rating" (ISR). **Zeitschrift für Psychosomatische Medizin und Psychotherapie** 2008;54(4):409–418. doi:10.13109/zptm.2008.54.4.409

