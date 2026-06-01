### Slide 1: Title Slide

**Title:**
Symptom-Screening im MII PRO-Modul

**Subtitle:**
MIDOS2 & PRO-CTCAE Onkologisches Basisscreening — Architektur & Source-Verifikation · v0.2 Diskussionsstand · Juni 2026

---

### Slide 2: Worum geht es?

**Title:** Scope MII PRO 2026.4.0

**Content:**
- Zwei neue Symptom-Screening-Instrumente im MII PRO-Modul
  - MIDOS2 (DGP, Palliativmedizin) — 13 Items, 4-stufige Skala
  - PRO-CTCAE Onkologisches Basisscreening (DKG) — PRO-CTCAE-basiert, ~23 Items
- Beide bilden dieselbe Symptomliste ab, mit unterschiedlicher Skalen-Granularität
- Voraussetzung: PRO-CTCAE Complete als kanonische Itembank (Master Questionnaire)
- Quellverifikation gegen NCI-Originaldokumente (EN/DE) als Qualitätssicherung

---

### Slide 3: Architekturvorschlag

**Title:** PRO-CTCAE Complete als Master, Derivate für Use Cases
**Layout:** zwei-inhalte

**Content:**
- PRO-CTCAE Complete (Master)
  - 124 Items / 78 AEs
  - Itembank — kanonische Quelle
  - Status experimental, nicht im Package
- Derivate via derivedFrom
  - PRO-CTCAE Onkologisches Basisscreening (~23 Items, neu)
  - PRO-CTCAE Breast-DE (21 Items, refactoring auf derivedFrom Master nötig)
- MIDOS2 — eigenständiges Instrument
  - Eigene Antwortskala (DGP, 4-stufig)
  - Mapping zu PRO-CTCAE-Codes als ConceptMap (später)

---

### Slide 4: Warum Master-Questionnaire statt nur CodeSystem?

**Title:** Itembank braucht Item-Operationalisierung

**Content:**
- CodeSystem trägt nur Code + Display-Text pro Item
- Master-Questionnaire trägt zusätzlich
  - Antwortskalen (Severity/Frequency/Interference)
  - ordinalValue-Extensions für Scoring
  - Conditional Logic (z.B. Severity nur wenn Frequency > 0)
  - Rendering-Hinweise, Übersetzungen pro Antwortoption
- Questionnaire.derivedFrom ist die korrekte FHIR-Semantik für Variant-Beziehungen
- CodeSystem bleibt — als semantisches Registry für Observation.code, Mappings

---

### Slide 5: MIDOS2 Symptomliste

**Title:** 13 Items nach Stiel et al. 2010/2012

**Content:**
- 11 Symptom-Items mit 4-stufiger DGP-Skala (kein/leicht/mittel/stark)
  - Schmerz, Übelkeit, Erbrechen, Luftnot, Verstopfung
  - Schwäche, Müdigkeit, Appetitmangel
  - Depressivität, Angst, Anspannung
- 1 Item "Wohlbefinden gesamt"
- 1 offenes Item für sonstige Symptome
- LIZENZ: DGP, frei für klinische und Forschungszwecke
- TODO: Source-Verifikation gegen Stiel et al. 2010 (Schmerz, DOI 10.1007/s00482-010-0972-5) sowie Stiel et al. 2012

---

### Slide 6: PRO-CTCAE Quellverifikation — Methodik

**Title:** Abgleich mit NCI-Originaldokumenten

**Content:**
- Quelldokumente direkt vom NCI bezogen
  - PRO-CTCAE Item Library v1.0 English (healthcaredelivery.cancer.gov)
  - PRO-CTCAE deutsche Übersetzung (NCI-autorisiert)
  - Quick Guide to the Item Library (Version 5/12/2025)
- Vergleichsmethode
  - Per AE: Symptom-Term, Attribute, Fragetext EN, Fragetext DE
  - Stichproben aus aktueller FSH (CodeSystem + Breast-DE Questionnaire)
- Status: 10 AEs für MIDOS-Mapping geprüft, Vollabgleich aller 78 AEs ausstehend

---

### Slide 7: PRO-CTCAE Quellverifikation — Beispiel Match

**Title:** Beispiel AE #9 Nausea / Übelkeit
**Layout:** zwei-inhalte

**Content:**
- NCI deutsches Originaldokument
  - Symptom Term EN: Nausea
  - Symptom Term DE: ÜBELKEIT
  - Item a — Frequency: "Wie HÄUFIG hatten Sie ÜBELKEIT?"
  - Item b — Severity: "Wie STARK war Ihre ÜBELKEIT im SCHLIMMSTEN FALL?"
- MII FSH Implementierung
  - linkId proctcae-09 (group)
  - proctcae-09a-frq: identischer Fragetext ✓
  - proctcae-09b-sev: identischer Fragetext ✓
  - Antwortcodes proctcae-frequency-{0..4} und -severity-{0..4} ✓
- Ergebnis: MATCH

---

### Slide 8: PRO-CTCAE Quellverifikation — Diskrepanzen

**Title:** Zu korrigieren in mii-cs-pro-pro-ctcae.fsh

**Content:**
- AE #27 Hair Loss
  - NCI Quick Guide: Attribute A (Amount)
  - Unser CodeSystem: int only — FALSCH
  - Empfehlung: amt only, eigene Antwortskala anlegen
- AE #59 Vaginal Discharge
  - NCI Quick Guide: Attribute A (Amount)
  - Unser CodeSystem: int only — FALSCH
  - Empfehlung: amt only
- Konsequenz: A=Amount-Skala fehlt komplett im CodeSystem
- Aufwand: 1 ValueSet + 2 Item-Korrekturen
- Vermutlich weitere Funde bei Vollabgleich der restlichen 68 AEs

---

### Slide 9: MIDOS2 — PRO-CTCAE Mapping

**Title:** 11 mappbare AEs, 23 Items für Onkologisches Basisscreening

**Content:**
- Schmerz — AE #48 General Pain (frq+sev+int → 3 Items)
- Übelkeit — AE #9 Nausea (frq+sev → 2 Items)
- Erbrechen — AE #10 Vomiting (frq+sev → 2 Items)
- Luftnot — AE #19 Shortness of Breath (sev+int → 2 Items)
- Verstopfung — AE #15 Constipation (sev → 1 Item)
- Müdigkeit / Schwäche — AE #53 Fatigue (sev+int → 2 Items)
- Appetitmangel — AE #8 Decreased Appetite (sev+int → 2 Items)
- Depressivität — AE #55 Discouraged + AE #56 Sad (je frq+sev+int → 6 Items)
- Angst / Anspannung — AE #54 Anxiety (frq+sev+int → 3 Items)
- Summe: 11 AEs, 23 Items im Onkologischen Basisscreening

---

### Slide 10: Konfliktpunkte zur Klärung

**Title:** Wo MIDOS2 und PRO-CTCAE konzeptuell auseinandergehen

**Content:**
- Schwäche vs. Müdigkeit
  - MIDOS2: zwei separate Items
  - PRO-CTCAE: gebündelt in AE #53 Fatigue (Müdigkeit, Erschöpfung oder fehlende Energie)
  - Vorschlag: im Onkologischen Basisscreening als Fatigue, in MIDOS2 beide behalten
- Anspannung vs. Angst
  - MIDOS2: zwei separate Items
  - PRO-CTCAE: gebündelt in AE #54 Anxiety
  - Vorschlag: analog zu Fatigue
- Depressivität (PRO-CTCAE zerlegt in zwei AEs)
  - MIDOS2: ein Item "Depressivität"
  - PRO-CTCAE: #55 Discouraged (Mutlosigkeit) + #56 Sad (Traurigkeit)
  - Vorschlag: beide AEs ins Basisscreening — PRO-CTCAE-konformes Mehrfach-Mapping (6 Items)
- Wohlbefinden gesamt
  - MIDOS2: globales Wohlbefinden-Item
  - PRO-CTCAE: kein Äquivalent vorhanden
  - Vorschlag: Onkologisches Basisscreening lässt es weg — Stakeholder-Frage

---

### Slide 11: Items-Bilanz

**Title:** Item-Anzahl pro Instrument
**Layout:** zwei-inhalte

**Content:**
- MIDOS2 (eigenständig)
  - 11 Symptom-Items, 4-stufig
  - 1 Wohlbefinden-Item
  - 1 freitext
  - Gesamt: 13 Items
- PRO-CTCAE Onkologisches Basisscreening (derivedFrom Master)
  - 23 Items aus 11 AEs
  - 5-stufige PRO-CTCAE-Skalen
  - Eine bis drei Fragen pro Symptom je nach AE-Profil
  - Conditional Logic optional (z.B. Severity überspringen bei Frequency=0)

---

### Slide 12: Implementierungsstatus

**Title:** Was steht, was fehlt

**Content:**
- Bereits in dev
  - PRO-CTCAE CodeSystem mit 124 Items EN+DE
  - PRO-CTCAE ValueSets für alle Skalen
  - PRO-CTCAE Breast-DE Questionnaire (21 Items)
  - CQL Library mit Composite Grade + Average Composite Score
- Zu bauen für 2026.4.0
  - PRO-CTCAE Complete Master Questionnaire (124 Items, experimental)
  - mii-qst-pro-pro-ctcae-onkologisches-basisscreening (~23 Items, derivedFrom Master)
  - MIDOS2 Questionnaire (13 Items, eigenständig)
  - MIDOS2 CodeSystem für DGP-Antwortskala
  - Korrektur AE #27 und #59 im PRO-CTCAE CodeSystem

---

### Slide 13: Entscheidungsbedarf

**Title:** Stakeholder-Fragen vor Implementierung

**Content:**
- Mapping-Granularität bestätigen
  - Schwäche und Anspannung in MIDOS2 zusätzlich behalten — OK?
  - Wohlbefinden gesamt nur in MIDOS2, nicht im Onkologischen Basisscreening — OK?
  - Depressivität auf #55 + #56 mappen (6 Items für ein MIDOS-Symptom) — OK?
- Onkologisches Basisscreening — Antwortskalen
  - PRO-CTCAE-Standard 5-stufig je Attribut — OK?
  - Alternativ alle Symptome nur Severity, kein Frequency/Interference?
- MIDOS2 — Source-Verifikation
  - Wer hat Zugriff auf Stiel et al. 2010/2012 zur Item-Verifikation?
- PRO-CTCAE-Korrekturen
  - Diskrepanzen AE #27, #59 — direkt in 2026.4.0 mit beheben?

---

### Slide 14: Nächste Schritte

**Title:** Vorgeschlagener Ablauf

**Content:**
- Heute — Diskussionsstand abstimmen
- Nach Stakeholder-Feedback
  - Bead kerndatensatzmodul-proms-34n MIDOS2 claim
  - Bead kerndatensatzmodul-proms-5jd Literatur-Verifikation parallel
  - Feature-Branch feature/v2026.4.0-symptom-screening (bereits angelegt)
  - PRO-CTCAE Master Questionnaire aus CodeSystem generieren
  - Onkologisches Basisscreening manuell kuratieren
  - MIDOS2 nach Source-Verifikation implementieren
- Release-Ziel 2026.4.0
  - MIDOS2 und Onkologisches Basisscreening im Package (active)
  - PRO-CTCAE Master im Source, experimental, kein Package
  - Optional Korrekturen AE #27, #59

---

### Slide 15: Quellen

**Title:** Referenzen

**Content:**
- PRO-CTCAE
  - NCI Item Library v1.0, healthcaredelivery.cancer.gov/pro-ctcae
  - Quick Guide Version 5/12/2025
  - PRO-CTCAE deutsche Übersetzung, NCI-autorisiert
  - Hamacher S, et al. BMC Cancer 2023;23:638 (Breast-DE Subset)
- MIDOS2
  - Stiel S, et al. Der Schmerz. 2010;24(4):416-424 — Validierung MIDOS
  - Stiel S, et al. Der Schmerz. 2012 — Validierung MIDOS2
  - DGP Toolbox Symptomscreening
- ESAS-Originalquelle
  - Bruera E, et al. J Palliative Care. 1991;7(2):6-9. PMID 1714502
  - Hui D, Bruera E. J Pain Symptom Manage. 2017;53(3):630-643 (25-Jahre-Review)
