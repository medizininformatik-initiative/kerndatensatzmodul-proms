---
topic: SCOFF (Essstörungs-Screening)
---
## {{page-title}}

### Klinischer Kontext

Der SCOFF ist ein **Screening-Instrument für Essstörungen** mit fünf Ja/Nein-Fragen. Er wurde bewusst so knapp und einprägsam gehalten, dass er ohne Spezialkenntnisse im Erstkontakt eingesetzt werden kann — der Name ist ein Akronym der englischen Schlüsselwörter: **S**ick, **C**ontrol, **O**ne stone, **F**at, **F**ood.

**Scoring und Interpretation** (Summenwert 0–5, Morgan et al. 1999): Jede Ja-Antwort zählt einen Punkt. Ab **zwei Punkten** gilt das Screening als auffällig; in der Originalstudie erreichte dieser Trennwert 100 % Sensitivität und 87,5 % Spezifität gegenüber der klinischen Diagnose einer Anorexia oder Bulimia nervosa.

Ein auffälliges Screening ist ausdrücklich **kein Diagnoseersatz**: Das Instrument ist darauf ausgelegt, einen Verdacht zu erzeugen, der eine sorgfältige klinische Abklärung nach sich zieht.

### FHIR-Implementierung

> **Sprachstrategie:** Englisch als Primärsprache (Original nach Morgan et al. 1999, wortgetreu aus dem publizierten Fragenkasten), deutsche Texte als Translations aus dem PCOR-MII Item Level Dictionary.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-scoff`

**Capabilities:** Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**
- linkIds `scoff-q01`…`scoff-q05`, Score-Item `scoff-score-total`.
- Antworten als **inline `answerOption` mit SNOMED CT** `373067005` (No, Gewicht 0) und `373066001` (Yes, Gewicht 1) — gebündelt im geteilten RuleSet `YesNoAnswerOptions`. Ein eigenes MII-CodeSystem wäre eine Doppelung standardisierter Terminologie; da SNOMED-Konzepten keine `ordinalValue`-Property angehängt werden kann, stehen die Gewichte inline statt in einem `answerValueSet`.
- Score-Berechnung via FHIRPath: `%resource.item.where(linkId.matches('^scoff-q0[1-5]$')).answer.value.ordinal().sum()`.
- **Abweichung zwischen Original und Übersetzung:** Item 3 fragt im Original nach „One stone" (≈ 6,35 kg), die deutsche Fassung nach „mehr als 6 kg". Beide Wortlaute bleiben unverändert erhalten; die Schwelle wird nicht angeglichen.
- Für den SCOFF selbst existiert weder ein LOINC- noch ein SNOMED-CT-Code (geprüft gegen LOINC 2.83 und SNOMED International 2026-05-01); die Kodierung erfolgt über den MII-Questionnaire-Katalog.

Die vollständige Ressource: Questionnaire-Definition im Artefakt-Register.

#### Score-Repräsentation

1. **Berechnetes Item** in der QuestionnaireResponse (linkId: `scoff-score-total`)
2. **Observation** mit MII-Score-Code `scoff-total`
3. **ObservationDefinition:** `mii-obsdef-pro-score-scoff` — Wertebereich 0–5 {score}, höher = größere Wahrscheinlichkeit einer Essstörung

Der Cut-off ≥ 2 ist als `qualifiedInterval` **dokumentiert**, aber bewusst nicht als ausführbare Interpretationslogik ausgeliefert (siehe [Scoring](Scoring)).

### Lizenz

SCOFF © Morgan, Reid & Lacey 1999 (BMJ) — **frei verfügbar**, keine Genehmigung für Reproduktion, Übersetzung oder Nutzung erforderlich.

### Quellen

- Morgan JF, Reid F, Lacey JH. The SCOFF questionnaire: assessment of a new screening tool for eating disorders. *BMJ* 1999;319(7223):1467–1468. doi:10.1136/bmj.319.7223.1467
- Hölling H, Schlack R. Essstörungen im Kindes- und Jugendalter. *Bundesgesundheitsblatt* 2007;50:794–799. doi:10.1007/s00103-007-0242-6
