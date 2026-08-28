# Design: PCOR-MII PSS-Instrumente im MII-PRO-Modul

**Status:** Entwurf zur Abstimmung · **Stand:** 2026-08-28 · **Epic:** `kerndatensatzmodul-proms-py5`

## 1. Zweck und Quellen

Dieses Dokument legt die Modellierungskonventionen für die Instrumente der PCOR-MII-Entität
**PSS (Persistent Somatic Syndrome)** fest, bevor die Umsetzung beginnt. Es beantwortet die drei
Fragen, an denen sich bei paralleler Umsetzung sonst Inkonsistenzen einschleichen: **Wie heißen
die linkIds? Wie werden Antworten modelliert? Wie wird gescort?**

| Quelle | Rolle |
|---|---|
| `MASTER_3EntitiesOverview.xlsx`, Sheet *Item Level Dictionary PSS* (1.512 Zeilen) | **Normativ** für Item-Texte, Antwortoptionen und deren Gewichte |
| `DIZ_Implementierung_PCORMII.xlsx` | Lizenzstatus, Entwicklungs- und Übersetzungsreferenzen |
| Zotero-Sammlung *PCOR-PSS Instrumente* + `~/Downloads/PCOR-PSS-Paper/` | Scoring-Algorithmen, Validierung |
| `.claude/skills/author-pro-questionnaire` | Bestehende Repo-Konventionen |

**Struktur der Excel-Quelle:** Jedes Item belegt so viele Zeilen, wie es Antwortoptionen hat; die
Option steht in Spalte *RESPONSE OPTIONS* mit ihrem Gewicht als Präfix (`0 = nein`). Damit liefert
die Excel Item-Text **und** `ordinalValue` in einem — sie ist direkt maschinell verwertbar.

> ⚠️ **Bekannter Fallstrick beim Auslesen:** Die Spalte *INSTRUMENT* nutzt verbundene Zellen. Wer den
> letzten gelesenen Wert fortschreibt, ordnet Items dem falschen Instrument zu — konkret landen die
> drei `EDANX*`-Items (PROMIS Anxiety 4a) fälschlich unter *Sleep-Related Impairment*. Vor der
> Umsetzung ist die Instrument-Zuordnung jedes Items gegen die Originaldatei zu prüfen.

## 2. Instrumenten-Inventar (PSS, PROM-Anteil)

Demografie- und Anamnese-Items (`OECD-*`, `GIPS-*`, `CPCOR-*`, `UKE-*`, `UKHD-*`) gehören in das
DEM-Questionnaire des PCOR-MII-IG, **nicht** in dieses Modul.

| Instrument | Items | Antwortskala | Scoring | Lizenz | Bead |
|---|---|---|---|---|---|
| SCOFF | 5 | binär 0/1 | Summe 0–5 | frei | `py5.5` |
| WI-7 (Whiteley-7) | 7 | binär 0/1 | Summe 0–7 (+2 Subskalen) | frei | `py5.3` |
| PC-PTSD | 4 | binär 0/1 | Summe 0–4 | frei | `3r5.11` |
| OPD-SFK | 12 | 5-stufig 0–4 | **Globalwert** primär, 3 Subskalen à 4 Items explorativ | frei n. Rücksprache | `py5.4` |
| ISR-Z | 3 | 5-stufig 0–4 | **Mittelwert**, nicht Summe | frei | `py5.6` |
| SSD-12 | 12 | 5-stufig 0–4 | Summe 0–48 | frei | `nec.10` |
| EURONET-SOMA1/2 | je 1 | NRS 0–10 | kein Score (Einzelitems) | frei | `py5.2` |
| EXPECT | 3 | NRS 0–10 | kein Score (Einzelitems) | ad hoc | `py5.7` |
| GSLTPAQ | 6 | numerisch | gewichtete Formel (Godin) | frei | `py5.8` |
| PROMIS Sleep-Related Impairment | 4* | 5-stufig 1–5 | Raw + T-Score (Lookup) | PROMIS-Agreement | `py5.1` |
| PHQ-SI (`phq2i`) | 1 | 4-stufig 0–3 | Einzelitem, kein Score | frei | `xba` |
| IPQ-S | 1 (Freitext) | — | kein Score | — | `py5.9` |

\* Item-Zuordnung wegen des Merged-Cell-Fallstricks zu verifizieren.

**`py5.9` (IPQ-S) ist damit geklärt:** Die Excel enthält genau ein Freitext-Item (`IPQ_S1`, Typ `text`).
Das bestätigt die Aussage der DIZ-Tabelle, dass PCOR-MII nicht den IPQ-S verwendet, sondern nur eine
offene Frage in Anlehnung an den B-IPQ. **Kein Instrument zu implementieren** — ein Freitext-Item im
Kontext-Questionnaire genügt; der Bead kann nach Bestätigung durch das PCOR-Team geschlossen werden.

## 3. linkId-Konvention

Der linkId ist in diesem Modul die **kanonische Item-Identität** der Itembank: Dieselbe Frage trägt
instrumentenübergreifend denselben linkId. Er ist kein Datenbankschlüssel der Quellstudie.

**Regel:** `<instrument>-q<nn>`, durchgehend kleingeschrieben, Bindestrich-getrennt, Nummer
zweistellig. Die PCOR-Variablen-IDs werden dafür normalisiert:

| PCOR Variable ID | linkId | Anmerkung |
|---|---|---|
| `SCOFF01` | `scoff-q01` | |
| `WI7_01` | `wi7-q01` | Unterstrich → Bindestrich |
| `OPDSFK01` | `opd-sfk-q01` | Instrumentenname ausgeschrieben |
| `ISRZ01` | `isr-z-q01` | |
| `SSD12_01` | `ssd12-q01` | |
| `PC-PTSD01` | `pc-ptsd-q01` | |
| `EURONET-SOMA1` | `euronet-soma-q01` | |
| `EXPECT_01` | `expect-q01` | |
| `GSLTPAQ_01_w` / `_m` | `gsltpaq-q01-freq` / `gsltpaq-q01-min` | Suffix statt kryptischem Buchstaben |

**Ausnahme PHQ-Familie:** Hier gilt weiterhin der PHQ-D-Block-Namespace (`phq-phq1{a..m}`,
`phq-phq2{a..i}`, `phq-phq5{a..g}`). Erfreulich: Die Excel verwendet bereits exakt diese Item-IDs
(`phq1a`, `phq2a`, `phq2i`) — das PSS-Set fügt sich also ohne Umschlüsselung in die bestehende
PHQ-Itembank. Das Suizid-Item `phq2i` (PHQ-SI) wird zu `phq-phq2i`.

**Rückverfolgbarkeit zur Quellstudie — bewusst NICHT im Questionnaire.** Die PCOR-Variablen-IDs
gehören weder in den linkId noch in `item.code`. `Questionnaire.item.code` ist vom Typ `Coding` und
laut Spezifikation für die *fachliche Terminologie* der Frage bestimmt („a terminology code that
corresponds to this group or question, e.g. a code from LOINC"). Entscheidend: Bei
`observation-extract` wird `item.code` zu **`Observation.code`** — eine dort eingetragene
Studien-Variablen-ID würde als semantischer Code der extrahierten Observation erscheinen und die
Terminologie-Ebene dauerhaft verunreinigen. `item.code` trägt daher ausschließlich LOINC/SNOMED
bzw. MII-Item-Codes.

**Konsequenz — Schichtentrennung:** Das KDS-Modul publiziert die **normative Fassung** des
Instruments, frei von Use-Case-Spezifika. Die Zuordnung PCOR-Variablen-ID → linkId ist eine Frage
der Use-Case-Schicht und gehört in das **PCOR-MII-Repo** — dort, wo laut Konvention ohnehin schon
die Subset-Questionnaires liegen. Technisch als ConceptMap oder als Mapping-Tabelle der
ETL-Strecke; beides hält die normative Ressource sauber. Damit bleibt die Ingestion von
Studiendaten möglich, ohne dass jede spätere Nachnutzung des Instruments die PCOR-Nomenklatur
miterbt.

## 4. Antwortmodellierung: `answerValueSet` statt `answerOption`

FHIR erlaubt pro Item **entweder** `answerOption` (inline) **oder** `answerValueSet` — nicht beides
(Invariante `que-4`). Das ist also eine echte Entweder-oder-Entscheidung.

**Festlegung: `answerValueSet` als Standard.** Für jede Antwortskala wird ein MII-CodeSystem mit
`ordinalValue`-Property je Konzept angelegt und über ein ValueSet gebunden:

```fsh
CodeSystem: MII_CS_PRO_SCOFF_Answers
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].type = #decimal
* #no "No"
  * ^designation[+].language = #de
  * ^designation[=].value = "nein"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 0
```

**Begründung:** Die Gewichte liegen damit an genau einer Stelle (Terminologie statt Formular),
sind über den Terminologie-Service auflösbar (Bead `epb`) und über `$expand` wiederverwendbar. Der
bekannte Nachteil — viele Form-Renderer lesen `.ordinal()` nur aus inline `answerOption` — wiegt
nicht mehr schwer, seit **CQL der autoritative Scoring-Kanal ist** (siehe Scoring-Seite des IG,
Kanal B): CQL löst CodeSystem-Gewichte zuverlässig auf.

**Ausnahme:** Muss ein Instrument echtes Live-Scoring im Formular leisten (Kanal A), bekommt es
inline `answerOption` mit `ordinalValue`. Diese Entscheidung ist pro Instrument im FSH zu
kommentieren, damit sie nachvollziehbar bleibt.

**Skalen-Wiederverwendung:** Instrumente mit identischer, generischer Skala teilen sich ein
CodeSystem — konkret die binäre Ja/Nein-Skala von SCOFF, WI-7 und PC-PTSD
(`mii-cs-pro-yes-no-answers`, Gewichte 0/1). Instrumentenspezifische Skalen mit validierter
Wortwahl (OPD-SFK „Trifft gar nicht zu"…, ISR „trifft nicht zu"…, SSD-12 „nie"…) bekommen je ein
eigenes CodeSystem, auch wenn die Stufenzahl gleich ist — die Formulierung ist Teil des validierten
Instruments und darf nicht vereinheitlicht werden.

> **Offene Entscheidung:** Ob die generische Ja/Nein-Skala wirklich geteilt wird oder jedes
> Instrument auch hier sein eigenes CodeSystem erhält. Geteilt = weniger Redundanz; eigen = maximale
> Instrumententreue und unabhängige Versionierung. Vorschlag: teilen, da bei „ja/nein" keine
> instrumentenspezifische Semantik verlorengeht.

## 5. Scoring

Grundlage ist die Drei-Kanal-Architektur der IG-Scoring-Seite: FHIRPath im Formular (Kanal A),
CQL serverseitig als autoritative Implementierung (Kanal B), externer Import (Kanal C).

**Einfache Summenscores** — SCOFF (0–5), WI-7 (0–7), PC-PTSD (0–4), SSD-12 (0–48): Variable am
Questionnaire-Root plus readOnly-Score-Item, zusätzlich CQL-Library. Muster wie PHQ-15.

**ISR-Z bildet einen Mittelwert, keine Summe.** Das ISR definiert Skalenwerte als Mittelwerte der
Items; der Gesamtscore ist die Summe der Skalenmittelwerte geteilt durch die Skalenanzahl. Für die
Z-Subskala (3 Items) heißt das `.avg()` statt `.sum()`. Diese Abweichung ist die häufigste
Fehlerquelle bei paralleler Umsetzung und im FSH ausdrücklich zu kommentieren.

**OPD-SFK:** Die Publikation empfiehlt **primär den Globalwert**; die drei Subskalen
(Selbstwahrnehmung, Beziehungsmodell, Kontaktgestaltung, je 4 Items) sind explorativ. Modellierung:
Globalscore als Pflicht-Score, Subskalen optional.
*Offen: Die Item-zu-Subskala-Zuordnung ist aus dem Volltext noch zu extrahieren.*

**GSLTPAQ:** Kein Summenscore, sondern die gewichtete Godin-Formel
(9 × anstrengend + 5 × mittel + 3 × leicht, jeweils Häufigkeit pro Woche). Da die Erhebung zusätzlich
die Dauer in Minuten erfasst, ist zu klären, welche Variante gerechnet wird. Wegen der Gewichtung
gehört dieser Score in eine CQL-Library.

**PROMIS Sleep-Related Impairment:** Raw-Score plus T-Score-Umrechnung über Lookup-Tabelle — CQL,
analog zu den übrigen PROMIS-Kurzformen.

**Kein Score:** EURONET-SOMA1/2, EXPECT und PHQ-SI sind Einzelitems ohne Aggregat. Sie werden als
Observation extrahiert, tragen aber kein Score-Item.

**Klinische Interpretation bleibt Dokumentation.** Cut-offs (SCOFF ≥ 2, PC-PTSD ≥ 3) und
Schweregradkategorien werden **nicht** als ausführbare Logik ausgeliefert — konsistent mit der
MCID-Entscheidung und der MDR-Abgrenzung des Moduls.

## 6. Weitere Festlegungen

**Sprache:** Repo-Konvention ist EN-primär mit DE-Übersetzung. Das PSS-Set ist jedoch **nur auf
Deutsch** dokumentiert (mehrere Instrumente wurden auf Deutsch entwickelt: OPD-SFK, ISR, SSD-12).
Wo keine validierte englische Fassung vorliegt, wird `language = #de` gesetzt und auf eine
Pseudo-Übersetzung verzichtet — eine selbst erfundene englische Item-Formulierung wäre in einem
normativen Modul schädlicher als die fehlende Sprachvariante.

**Visual Scales:** EURONET-SOMA, EXPECT und WAI nutzen visuelle Likert-Skalen, deren Darstellung in
eigenen Excel-Reitern liegt. Modellierung als `integer` mit `sliderStepValue`/`questionnaire-unit`
und den Ankertexten der Endpunkte; die grafische Ausgestaltung ist Sache des Renderers.

**Lizenz-Tiers:** Alle hier genannten Instrumente sind Tier A (frei) mit zwei Einschränkungen —
OPD-SFK ist „frei nach erfolgter Rücksprache mit den Autor:innen" (Rücksprache dokumentieren, bevor
Item-Texte publiziert werden), und GSLTPAQ nutzt derzeit eine **Eigenübersetzung**, obwohl seit
Kurzem eine validierte deutsche/österreichische Fassung vorliegt (Lindner et al. 2026). Vor der
Umsetzung ist zu entscheiden, welche Fassung normativ wird.

**Subset-Instrumente:** Wo PCOR nur Teilmengen erhebt (PHQ-4/-8 aus der PHQ-Familie, ACE erste
5 Fragen, ERQ-6), gilt das `derivedFrom`-Muster: eigenes Questionnaire mit `required = true` auf den
verwendeten Items. Solche Subset-Questionnaires gehören laut Konvention in das **PCOR-MII-Repo**
(Use-Case-Schicht), nicht in das KDS-Modul.

## 7. Offene Punkte

1. **OPD-SFK Item-zu-Subskala-Zuordnung** aus dem Volltext extrahieren.
2. **GSLTPAQ-Übersetzung**: Eigenübersetzung beibehalten oder auf Lindner et al. 2026 wechseln?
3. **GSLTPAQ-Scoring**: Häufigkeits- oder Dauer-Variante der Godin-Formel?
4. **Ja/Nein-Skala teilen** oder pro Instrument eigenes CodeSystem?
5. **Sleep-Related-Impairment-Items** gegen die Originalquelle verifizieren (Merged-Cell-Fallstrick).
6. **OPD-SFK-Rücksprache** mit den Autor:innen dokumentieren.
7. **Englische Fassungen**: Für welche Instrumente existieren validierte englische Versionen?
8. **Ort der PCOR-Variablen-Zuordnung**: ConceptMap im PCOR-MII-Repo oder Mapping-Tabelle in der
   ETL-Strecke? (Nicht im KDS-Modul — siehe Abschnitt 3.)

## 8. Umsetzungsreihenfolge

1. **SCOFF als Referenzimplementierung** — 5 binäre Items, einfachste Struktur, Literatur vollständig.
   Wird einmal gründlich reviewt; danach ist das Muster eingefroren.
2. **Parallelisierbar nach dem Muster:** WI-7, PC-PTSD, SSD-12 (Summenscores), dann OPD-SFK und ISR-Z
   (abweichendes Scoring), EURONET-SOMA und EXPECT (Einzelitems/Visual Scales).
3. **Zuletzt:** GSLTPAQ (offene Übersetzungsfrage) und PROMIS Sleep-Related Impairment (T-Score-CQL).

**Review-Pipeline pro Instrument:** SUSHI ohne Fehler → automatischer Abgleich der generierten
Questionnaire-JSON gegen die Excel-Quelle (Item-Texte, Optionen, Gewichte zeichengenau) →
HTML-Preview über den `render-questionnaire`-Skill → am Ende ein gemeinsamer HAPI-Smoke-Test.
Der Excel-Abgleich ist das eigentliche Review-Werkzeug; er findet die Fehlerklasse, die beim
Durchklicken systematisch übersehen wird.

## 9. Schichtentrennung: Was gehört in den PCOR-MII-IG?

Die Trennlinie ist **nicht** „PSS-Instrumente vs. Rest", sondern:

> **Publiziertes, validiertes Instrument → KDS-Modul (normativ, wiederverwendbar).
> Studienspezifische Zusammenstellung und Ad-hoc-Items → PCOR-MII-IG (Use-Case-Schicht).**

Alles, was ein anderer Use Case (LongCARE, DZPG, Schlafmedizin) unverändert nachnutzen könnte,
gehört ins KDS-Modul. Alles, was nur im Kontext der PCOR-Studie Sinn ergibt, gehört in den
PCOR-MII-IG — sonst erbt jede spätere Nachnutzung PCOR-Spezifika mit.

### KDS-Modul (normative Fassung)
Kanonische Instrumente (SCOFF, WI-7, OPD-SFK, ISR-Z, SSD-12, PC-PTSD, EURONET-SOMA,
PROMIS-Kurzformen, PHQ-Familie), ihre Antwort-CodeSystems/ValueSets mit `ordinalValue`,
Score-ObservationDefinitions und CQL-Libraries.

### PCOR-MII-IG (Use-Case-Schicht)

| Inhalt | Warum dort |
|---|---|
| **Demografie & Anamnese** (`OECD-*`, `GIPS-*`, `CPCOR-*`, `UKE-*`, `UKHD-*`) — rund die Hälfte aller Items im PSS-Sheet | Studien-Erhebungsinstrumente, teils standortspezifisch (`UKHD-MEDI` vs. `UKE-MEDI`); kein nachnutzbares PRO-Instrument |
| **Erhebungs-Zusammenstellung** je Entität × Phase | Das Sheet *Domain Overview* ordnet jedem Instrument pro Entität (PSS/AN/NTXr/NTXd) und Phase (Screening/Monitoring/Outcome) eine A/B-Einstufung zu — reine Studienlogik |
| **Subset-Questionnaires** mit `derivedFrom` (PHQ-4/-8, ACE erste 5, ERQ-6, EDE-Q6, ANSOCQ-2, SSUK-2, MTSOSD-R59-Einzelfragen) | Konvention: Teilmengen gehören in die Use-Case-Schicht, das KDS-Modul führt die vollständigen Instrumente |
| **Mapping PCOR-Variablen-ID → linkId** | Studien-Nomenklatur (siehe Abschnitt 3) |
| **Ad-hoc-Itemsets ohne Publikation** — `EXPECT`, `IPQ_S1`, `CPCOR-*` | Keine validierten Instrumente, sondern für die Studie formulierte Fragen |

### Konsequenz für bestehende Beads

Nach dieser Regel wandern zwei Punkte aus dem KDS-Modul in den PCOR-MII-IG:

- **`py5.7` EXPECT** — laut DIZ-Tabelle „kein standardisierter Fragebogen", drei ad-hoc formulierte
  NRS-Items ohne Publikation. Gehört damit **nicht** als kanonisches Instrument ins KDS-Modul.
- **`py5.9` IPQ-S** — ein Freitext-Item, ohnehin kein Instrument (siehe Abschnitt 2).

**Fragmentarisch genutzte Instrumente gehören trotzdem in die Itembank.** Das betrifft GI-PS
(publiziert, doi:10.13109/zptm.2023.69.1.56, in PCOR nur als Anamnese-Fragmente `GIPS-REL`,
`GIPS-CD`, `GIPS-ALC*`, `GIPS-SMO*`) ebenso wie ACE, ERQ, EDE-Q, ANSOCQ, SSUK und MTSOSD-R59. Für sie
gilt **nicht** die Use-Case-Regel, und zwar aus zwei Gründen:

1. **Item-Identität.** Der linkId ist die kanonische Identität einer Frage. Bekäme ein
   GI-PS-Fragment einen PCOR-erfundenen linkId, trüge dieselbe Frage später — sobald jemand das
   vollständige Instrument nutzt — einen zweiten, abweichenden linkId. Das ist exakt die Situation,
   die die PHQ-9-linkId-Migration (`mii-cm-pro-phq-9-linkid-migration`) nachträglich reparieren
   musste. Die kanonische Vergabe muss **von Anfang an** stimmen, auch wenn das vollständige
   Instrument erst später umgesetzt wird.
2. **Score-Fähigkeit ist Modul-Wissen.** Ob sich aus den erhobenen Fragmenten ein valider Subscore
   berechnen lässt, ist nur beantwortbar, wenn die Subskalenstruktur des Originalinstruments bekannt
   und dokumentiert ist. Diese Information gehört zur normativen Instrumentendefinition, nicht in
   die Studienbeschreibung.

**Praktische Konsequenz — zwei Stufen statt Entweder-oder:**

| Stufe | Inhalt | Aufwand |
|---|---|---|
| **Itembank-Eintrag** (immer, sofort) | Kanonische linkIds und Item-Codes des Instruments, Subskalenstruktur, Scoring-Regel — auch für nicht erhobene Items dokumentiert | gering |
| **Vollständiges Questionnaire** (bei Bedarf) | Alle Item-Texte, Antwortskalen, Score-Definition, CQL | hoch, lizenzabhängig |

Für fragmentarisch genutzte Instrumente wird also mindestens der **Itembank-Eintrag** angelegt: Die
linkId-Systematik des vollständigen Instruments wird festgelegt und dokumentiert, auch wenn zunächst
nur die erhobenen Items als Questionnaire umgesetzt werden. Damit ist die Namensvergabe zukunftsfest
und die Frage der Subscore-Berechenbarkeit beantwortbar, ohne dass sofort das komplette Instrument
(samt Lizenzklärung für alle Item-Texte) umgesetzt werden muss.

Unberührt davon bleibt die Zuordnung von **Ad-hoc-Items ohne Publikation** (`EXPECT`, `CPCOR-*`,
`IPQ_S1`) zur Use-Case-Schicht — dort gibt es kein Originalinstrument, dessen Systematik man
verletzen könnte.

### Offene Frage

Der PCOR-MII-IG referenziert die KDS-Instrumente über eine Package-Dependency
(`de.medizininformatikinitiative.kerndatensatz.pros`, derzeit gepinnt auf 2026.3.0). Zu klären ist,
ob die Use-Case-Schicht die Instrumente **direkt referenziert** (Canonical im
Assembly-Questionnaire) oder per `derivedFrom` **ableitet**. Direkt = keine Redundanz, aber keine
Möglichkeit, Pflichtfelder oder Reihenfolge use-case-spezifisch festzulegen; abgeleitet = mehr
Ressourcen, dafür saubere Subset-Semantik. Vorschlag: direkt referenzieren, wo das vollständige
Instrument erhoben wird; `derivedFrom` nur für echte Teilmengen.

## 10. Drei Schichten: PRO-Modul (Infrastruktur) · PRO Library (Instrumente) · PCOR-MII-IG (Use Case)

Abschnitt 9 unterscheidet normativ vs. Use Case. Innerhalb des normativen Teils gibt es aber noch
eine zweite Grenze, die für die Umsetzung wichtig ist — zwischen der **instrumentenunabhängigen
Infrastruktur** und dem **Instrumenten-Katalog** („PRO Library" im IG-Menü).

| Schicht | Inhalt | Kriterium |
|---|---|---|
| **PRO-Modul — Infrastruktur** | Profile (`MII_PR_PRO_Questionnaire`, `-QuestionnaireResponse`, Score-Blueprint/-Instance), Extensions (Capabilities, ScoreHealthCorrelation), Logical Model, Domänenmodell, Katalog-CodeSystems, **generische Antwortskalen**, Scoring-Architektur, ID-/Itembank-Systematik | Gilt für **alle** Instrumente, ändert sich nicht, wenn ein Instrument hinzukommt |
| **PRO Library — Instrumenten-Katalog** | Je Instrument: Questionnaire, instrumentenspezifische Antwort-CS/VS mit `ordinalValue`, Score-ObservationDefinition, CQL-Library, Capabilities-Deklaration, Lizenz-Tier, Itembank-Eintrag | Wächst mit jedem Instrument, jedes Element gehört genau **einem** Instrument |
| **PCOR-MII-IG — Use Case** | Assembly (Entität × Phase), Demografie/Anamnese, Subset-Questionnaires (`derivedFrom`), Variablen-Mapping, Standortvarianten | Beschreibt **eine Studie**, nicht ein Instrument |

### Was das für die PSS-Umsetzung konkret heißt

Die neun PSS-Instrumente sind **PRO-Library**-Inhalt: je ein Questionnaire, eigene Antwortskala,
Score-Definition, CQL-Library. Was sie *benutzen* — Score-Profile, Capabilities-Extension,
Katalog-Einträge — ist bestehende Infrastruktur und wird nur referenziert, nicht kopiert.

**Damit klärt sich auch die offene Entscheidung `py5.10` (geteilte Ja/Nein-Skala):** Eine
Antwortskala, die von SCOFF, WI-7 und PC-PTSD gleichermaßen genutzt wird, ist per Definition
*nicht* instrumentenspezifisch — sie gehört in die **Infrastruktur-Schicht**, nicht zu einem der
drei Instrumente. Das Kriterium ist damit nicht mehr Geschmackssache, sondern folgt der
Schichtenlogik: gehört ein Artefakt genau einem Instrument, liegt es in der PRO Library; wird es
von mehreren geteilt, ist es Infrastruktur.

### Hinweis zur Weiterentwicklung

Die PRO Library ist derzeit im Wesentlichen eine **Katalogseite** im IG (Tabelle mit Instrumenten
und Capabilities) und noch keine eigene strukturelle Schicht. Eine Überarbeitung dieses Konzepts
ist vorgesehen (eigener Bead) — unter anderem im Zusammenhang mit der Zwei-Schichten-Distribution
(Formserver vs. Package) und der Lizenz-Tier-Steuerung. Die hier getroffene Zuordnung ist deshalb
**inhaltlich** gemeint und soll die spätere strukturelle Umsetzung nicht vorwegnehmen: Ob die
PRO Library eines Tages ein eigenes Package, eine IG-Sektion oder ein Formserver-Katalog wird,
ändert nichts daran, *welche* Artefakte instrumentengebunden und welche instrumentenunabhängig sind.
