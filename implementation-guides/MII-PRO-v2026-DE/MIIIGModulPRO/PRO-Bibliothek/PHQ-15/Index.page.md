---
topic: PHQ-15
---
## PHQ-15 (Patient Health Questionnaire-15)

### Klinischer Kontext

Der PHQ-15 ist ein validiertes Screening-Instrument für die Schwere **somatischer Symptome**. Er erfasst die Beeinträchtigung durch 15 körperliche Beschwerden über einen Zeitraum von vier Wochen auf einer dreistufigen Skala (0 = nicht, 1 = wenig, 2 = stark beeinträchtigt).

**Scoring und Interpretation** (Summenwert 0–30, Kroenke et al. 2002):
- 0–4: Minimale somatische Symptomlast
- 5–9: Geringe somatische Symptomlast
- 10–14: Mittlere somatische Symptomlast
- ≥15: Hohe somatische Symptomlast

**Zusammenhang mit der PHQ-Familie:** Zwei der 15 Items (Müdigkeit, Schlaf) stammen aus dem Depressionsmodul (PHQ-9). Im MII-PRO-Modul teilen sie sich über den gemeinsamen PHQ-D-Itembank-Namespace denselben linkId (`phq-phq2d` Müdigkeit, `phq-phq2c` Schlaf) — dieselben linkIds wie im PHQ-9.

### FHIR-Implementierung

> **Sprachstrategie:** Englisch als Primärsprache (Original-Instrument), deutsche Texte als Translations (PHQ-D, Löwe et al. 2002). Gewährleistet korrekte Validierung gegen LOINC.

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-15`

**Implementierte Capabilities:**
- ✅ Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**
- Antwortskala über `answerValueSet` (`mii-vs-pro-phq-15-answers`); ordinale Gewichte (0/1/2) als Property auf den CodeSystem-Konzepten (`mii-cs-pro-phq-15-answers`).
- Automatische Score-Berechnung via FHIRPath: `%resource.item.where(linkId.matches('^phq-phq(1[a-m]|2[cd])$')).answer.value.ordinal().sum()`.
- linkIds im gemeinsamen PHQ-D-Block-Namespace; LOINC-Panel `69728-4`, Items LOINC-kodiert.

<tabs>
  <tab title="Vorschau">
    <iframe
      src="https://gematik.github.io/poc-isik-formular/?base=https://fhir.simplifier.net/MII-Erweiterungsmodul-PRO-2025&id=mii-qst-pro-phq-15&minimal=true"
      width="100%"
      height="600px"
      frameborder="0">
    </iframe>
  </tab>
  <tab title="Tree">
    {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-15}}
  </tab>
  <tab title="JSON">
    {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-15}}
  </tab>
  <tab title="XML">
    {{xml:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-15}}
  </tab>
</tabs>

#### Score-Repräsentation

1. **Als berechnetes Item** in der QuestionnaireResponse (linkId: `phq-phq15-score-total`)
2. **Als Observation** mit LOINC-Code `70273-8` „Patient Health Questionnaire 15 item (PHQ-15) total score"
3. **ObservationDefinition:** `mii-obsdef-pro-score-phq-15` — Wertebereich 0–30 {score}, höher = größere somatische Symptomlast, inkl. Schweregrad-Referenzbereiche (Kroenke-Cut-offs) als `qualifiedInterval`.

### Beispiel-Ressourcen

<tabs>
  <tab title="Tree">
    {{tree:mii-exa-pro-phq-15-response}}
  </tab>
  <tab title="JSON">
    {{json:mii-exa-pro-phq-15-response}}
  </tab>
  <tab title="XML">
    {{xml:mii-exa-pro-phq-15-response}}
  </tab>
</tabs>

### Lizenz

PHQ / PHQ-15 © Pfizer Inc. — **frei verfügbar** (public domain), keine Genehmigung für Reproduktion/Übersetzung/Nutzung erforderlich. Deutsche Fassung: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002).

### Referenzen

- Kroenke K, Spitzer RL, Williams JBW. The PHQ-15: validity of a new measure for evaluating the severity of somatic symptoms. *Psychosomatic Medicine* 2002;64(2):258–266.
- Gräfe K, Zipfel S, Herzog W, Löwe B. Screening psychischer Störungen mit dem „Gesundheitsfragebogen für Patienten (PHQ-D)". *Diagnostica* 2004;50(4):171–181.
