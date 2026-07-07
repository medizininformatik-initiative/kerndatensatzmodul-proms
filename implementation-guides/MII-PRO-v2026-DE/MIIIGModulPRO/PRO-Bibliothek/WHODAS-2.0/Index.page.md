---
topic: WHODAS 2.0 (12-Item)
---
## WHODAS 2.0 (12-Item, Selbstauskunft)

### Klinischer Kontext

Der **WHODAS 2.0** (WHO Disability Assessment Schedule 2.0) ist das generische Instrument der WHO zur Erfassung von **Funktionsfähigkeit und Beeinträchtigung** über alle Erkrankungen hinweg, methodisch an der ICF ausgerichtet. Diese Implementierung nutzt die **12-Item-Kurzform (Selbstauskunft)**.

Die 12 Items decken **sechs ICF-Domänen** ab (Kognition, Mobilität, Selbstversorgung, Umgang mit anderen Menschen, Lebensaktivitäten, Partizipation), erfassen die Beeinträchtigung der **letzten 30 Tage** auf einer fünfstufigen Skala (0 = keine … 4 = extreme Beeinträchtigung / nicht möglich).

**Scoring und Interpretation** (Summenwert 0–48):
- Einfaches Scoring (WHO „simple scoring"): Summe der 12 Item-Werte (je 0–4), Wertebereich **0–48**.
- **Höhere Werte = stärkere Beeinträchtigung** (Einschränkungsscore).
- Die komplexe, IRT-basierte WHO-Bewertung (0–100) ist noch nicht abgebildet (Folgearbeit).

PCOR-MII führt WHODAS-12 unter „Generic Health" gemeinsam mit PROMIS Global Health; eine Konversion des Summenscores auf die PROMIS Generic/Global Health Scale ist als Folgearbeit vorgesehen.

### FHIR-Implementierung

> **Sprachstrategie:** Englisch als Primärsprache (Original-Instrument), deutsche Texte als Translations/Designations (validierte PCOR-MII-Wortlaute).

#### Questionnaire

**Canonical URL:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12`

**Implementierte Capabilities:**
- ✅ Displayable, Collectable, Calculatable, Extractable, Domain-aligned

**Besonderheiten:**
- Antwortskala über `answerValueSet` (`mii-vs-pro-whodas-12-answer-list`); ordinale Gewichte (0–4) als Property auf den CodeSystem-Konzepten (`mii-cs-pro-whodas-12`).
- Automatische Score-Berechnung via FHIRPath (`.ordinal().sum()`).

<tabs>
  <tab title="Vorschau">
    <iframe
      src="https://gematik.github.io/poc-isik-formular/?base=https://fhir.simplifier.net/MII-Erweiterungsmodul-PRO-2025&id=mii-qst-pro-whodas-whodas12&minimal=true"
      width="100%"
      height="600px"
      frameborder="0">
    </iframe>
  </tab>
  <tab title="Tree">
    {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12}}
  </tab>
  <tab title="JSON">
    {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12}}
  </tab>
  <tab title="XML">
    {{xml:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12}}
  </tab>
</tabs>

#### Score-Repräsentation

- **ObservationDefinition:** `mii-obsdef-pro-score-whodas12-simple-sum` — Wertebereich 0–48, SNOMED `715823002`, MII-Score-Catalogue `whodas12-simple-sum`, Richtung: höher = größere Beeinträchtigung.

### Beispiel-Ressourcen

<tabs>
  <tab title="Tree">
    {{tree:mii-exa-pro-whodas12-response-01}}
  </tab>
  <tab title="JSON">
    {{json:mii-exa-pro-whodas12-response-01}}
  </tab>
  <tab title="XML">
    {{xml:mii-exa-pro-whodas12-response-01}}
  </tab>
</tabs>

### Lizenz

> **Wichtig:** WHODAS 2.0 ist **© World Health Organization 2010** (*Measuring Health and Disability: Manual for WHODAS 2.0*, ISBN 9789241547598).

- WHO gestattet **Klinikerinnen und Klinikern die Reproduktion von WHODAS 2.0 zur Nutzung bei eigenen Patient:innen — kostenfrei und ohne gesonderte Genehmigung**.
- **Jede andere Nutzung — insbesondere die Einbindung in elektronische Datenerfassungssysteme** — **erfordert eine WHO-Lizenzvereinbarung** über den WHO-Classifications-Lizenzprozess. Diese ist für **nicht-kommerzielle Nutzer kostenlos** und verlangt die Online-Zustimmung zu einer Nutzungsvereinbarung.
- **Übersetzungen** erfordern zusätzlich die Genehmigung der WHO.
- Nur die **MII-eigenen FHIR-Inhalte** (Profile, Codes, Scoring-Logik) stehen unter **CC0**; der **WHODAS-2.0-Itemtext bleibt © WHO**.

Diese Bedingungen sind maschinenlesbar im `copyright`-Element der Questionnaire- und CodeSystem-Ressourcen hinterlegt.

### Referenzen

- World Health Organization. *Measuring Health and Disability: Manual for WHO Disability Assessment Schedule (WHODAS 2.0)*. Genf: WHO; 2010. ISBN 9789241547598.
- Kirchberger I, et al. Validation of the WHODAS 2.0 in a population-based sample (MONICA/KORA). *Population Health Metrics* 2014;12:27.
- Saltychev M, et al. Psychometric properties of the WHODAS 2.0 — systematic review. PMID 31335215.
