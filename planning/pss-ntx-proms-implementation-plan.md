# PSS-Psychosomatik & NTx-PROMs — Implementierungsplan (Entwurf)

> Status: **Planungsentwurf zur Review** (Beads werden erst nach Freigabe angelegt).
> Quelle der Instrumentenliste + Lizenzen: `~/Downloads/DIZ_Implementierung_PCORMII (1).xlsx` (2026-07-24, 30 Instrumente).
> Lizenz-Fakten gespeichert in `bd` memory: `pcor-mii-diz-instrument-license-table`, `pcor-mii-ntx-metadata-only-instruments`.

## Branch-Audit (2026-07-24) — bereits (teil-)implementiert, nicht auf dev

| Instrument | Branch | Reife | Aktion |
|---|---|---|---|
| **GAD-7** | `feat/gad-7` (2026-05-04) | produktionsreif (Qst+ObsDef+3 Examples+IG DE/EN) | **integrieren**: rebase + phq5-linkId-Migration (ConceptMap) + Merge. Bead `0de`. |
| **PROMIS Global Health 2-Item-Subset** | `experiment/globalhealth-pcormii-subset` (lokal, 2026-07-20) | PoC/experimental | **produktiv ausbauen**; zugleich **Referenz-Konvention** für Subset/1-Item-pro-Skala (Opt.3 derived Subset-Qst + Opt.2 linkId-Enforcement-QR-Profil). Bead `92b`. |
| PROMIS Depression CAT | `feature/cat-referenzimplementierung` | Referenz-Impl | Roadmap 2027, **nicht PSS/NTx** |
| EORTC QLQ-BR42/BR23/BR45 | `feature/eortc-qlq-br45` | Onko-Brustmodul | **nicht PSS/NTx** (Onko-Epic) |

Konsequenz: Die **Subset-Modellierungsfrage (A12–A15, EXPECT, IPQ-S) ist durch den Global-Health-PoC methodisch gelöst** (derived Subset-Questionnaire + linkId-Enforcement-QR-Profil). Alle übrigen PSS-Tier-A + NTx + WAI/OECD/GI-PS sind auf keinem Branch → echt to-build.

## 0. Kernentscheidung / Prämissen

- **Zwei Epics** (bestätigt): **(1) PSS-Psychosomatik (PCOR-MII)** und **(2) NTx / Transplant-Adherence**.
- **Nachnutzung statt Doppelbau:** Instrumente, die sich mit dem bestehenden **DZPG-Epic `kerndatensatzmodul-proms-3r5`** überschneiden, werden **zuerst im Rahmen von PSS/PCOR-MII umgesetzt**; die entsprechenden DZPG-Children **nutzen dieselbe Ressource nach** (Beads-Dependency `3r5.x depends-on PSS-Instrument`, kein zweiter Questionnaire). Betrifft: PHQ-4 (→ 3r5.7), ERQ (→ 3r5.5), ACE (→ 3r5.23), PC-PTSD (→ 3r5.11 PC-PTSD-5).
- **Bereits im Repo vorhanden** (kein Neubau, ggf. Zuordnung/Review): PHQ-9, PHQ-15, WHODAS-12, PROMIS-16.
- **Lizenz-Tier steuert das FHIR-Modell** (nicht die Priorität):
  - **Tier A – frei:** vollständiger Questionnaire mit verbatim Items + Antworten + Scoring.
  - **PROMIS – CPCOR-Nutzungsvereinbarung:** vollständig, unter Charité/CPCOR-Agreement (Absprache Felix ↔ Thomas).
  - **Tier B – metadata-only:** **KEINE** wortwörtlichen Items/Antworten im offiziellen IG/Package (Muster HADS/EPDS/K6/CES-D). Nur Metadaten, Capabilities, Score-ObsDef, canonical. **→ wird JETZT gebaut und offiziell verteilt.**
  - **Tier B – Vollversion (später, NICHT distributiert):** die vollständige Fassung mit verbatim Items/Antworten wird ggf. **später** erstellt, aber **außerhalb der offiziell publizierten Packages** gehalten (siehe §1a Distributionsmechanismus). Metadata-only-Stub und Vollversion teilen dieselbe canonical/`Questionnaire.url`, sind aber getrennte Artefakte.

## 1. Cross-cutting Fundament (blockiert saubere Tier-B-Umsetzung)

- **`0` — Lizenz-Tier-Framework (Tier A/B/C) über `capabilities`-Extension.** Der in `CLAUDE.md` benannte Governance-Gap. Tier B braucht ein durchgängiges Muster (`displayable=false`, `collectable=false`, `calculatable`/`extractable` je nach Recht) plus `copyright`-Element mit Kontakt/Bezugsweg. **Voraussetzung** für BAASIS/MTSOSD-R59/ABQ/WAI/OECD/GI-PS. → eigenes Fundament-Issue in beiden Epics referenziert.
- **Wortlaut-Verifikation Tier A** gegen Validierungsliteratur (Zotero, paper-reader-Skill) bevor verbatim Items publiziert werden.

### 1a. Distributionsmechanismus für Tier-B-Vollversionen (später)

Jetzt: nur metadata-only im offiziellen Package. Später sollen Vollversionen (verbatim Items) existieren, aber **nicht** in `de.medizininformatikinitiative.kerndatensatz.pros-*.tgz` landen. Optionen (Entscheidung offen, eigenes Fundament-Issue):
- **A) Separates FSH-Unterverzeichnis, aus dem SUSHI-Build ausgeschlossen** (z.B. `input/fsh-restricted/`, nicht im SUSHI-Pfad; oder via `.gitignore` + lokalem Overlay). Einfach, aber „nicht gebaut = nicht validiert" im CI.
- **B) Separates, nicht-öffentliches Companion-Package/Repo** (eigene `sushi-config`, eigener Registry-Eintrag mit Zugangsbeschränkung / gar nicht publiziert). Sauberste Trennung, mehr Overhead.
- **C) Build-Flag / Profil**, das die Vollversionen nur bei explizitem lokalem Build einbezieht und aus dem Publish-Pfad (`fhir bake`/`publish-package`) herausfiltert.
- Gemeinsame Anforderung: metadata-only-Stub und Vollversion teilen **dieselbe canonical URL/Version**; nur eines darf pro Package-Build aufgelöst werden (Kollisionsvermeidung).

---

## Epic 1 — PSS-Psychosomatik (PCOR-MII)

### 1A. Tier A – frei publizierbar (voller Questionnaire)

Priorisiert nach „validierte dt. Fassung vorhanden + geringe Komplexität" zuerst.

| # | Instrument | Items | Dt. Übersetzung | Hinweis | Prio |
|---|---|---|---|---|---|
| A1 | **GAD-7** | 7 | Löwe et al. 2008 (10.1097/MLR.0b013e318160d093) | Angst-Screening, Standard-4er-Likert, simple sum 0–21 | P1 |
| A2 | **PHQ-4** | 4 | Löwe/Spitzer PHQ-D-Manual 2002 | ultra-kurz (GAD-2+PHQ-2). **Hier bauen → 3r5.7 nutzt nach** | P1 |
| A3 | **SCOFF** | 5 | 10.1007/s00103-007-0242-6 | Essstörungs-Screen, ja/nein | P2 |
| A4 | **SSD-12** | 12 | dt. Originalentwicklung (10.1097/PSY.0000000000000240) | Somatic Symptom Disorder B-Kriterien | P2 |
| A5 | **ISR-Z** | — | dt. Originalentwicklung (10.13109/zptm.2008.54.4.409) | ICD-10-Symptom-Rating, Zusatzskala | P2 |
| A6 | **WI-7** | 7 | Rief et al. 1994 | Whiteley-Index Gesundheitsangst | P2 |
| A7 | **PC-PTSD** | — | Schäfer & Schulze 2010 | **Hier bauen → 3r5.11 nutzt nach.** Vorher Version klären (PC-PTSD vs. PC-PTSD-5) | P2 |
| A8 | **EURONET-SOMA1** | — | dt. in Originalpub (10.1097/PSY.0000000000000502) | somatische Symptome | P2 |
| A9 | **EURONET-SOMA2** | — | dt. in Originalpub (s.o.) | somatische Symptome | P2 |
| A10 | **OPD-SFK** | — | dt. Entwicklung (10.13109/zptm.2015.61.3.262) | „frei nach Rücksprache Autor:innen" → **Rücksprache dokumentieren** | P3 |
| A11 | **GSLTPAQ** | 3+ | akt. Eigenübersetzung (validierte Lindner 2026 noch nicht genutzt) | Godin-Shephard körperl. Aktivität | P3 |
| A12 | **ERQ-6** | 6 | 10.1026/0012-1924.55.3.144 | **nur Item mit höchster Trennschärfe pro Skala.** Hier bauen → 3r5.5 nutzt nach | P3 |
| A13 | **EDE-Q6** | — | 10.1026/0012-1924.53.3.144 | **nur höchste Trennschärfe pro Skala** | P3 |
| A14 | **ANSOCQ-2** | 2 | 10.1186/s40337-016-0125-z | **nur höchste Trennschärfe pro Skala** | P3 |
| A15 | **SSUK-2** | 2 | 10.3233/ZMP-2003-12_1_06 | soziale Unterstützung, **nur höchste Trennschärfe** | P3 |
| A16 | **ACE** | 5 | 10.1055/s-0030-1263161 | **erste 5 Fragen.** Hier bauen → 3r5.23 nutzt nach | P3 |

> Für A12–A15 ist die „nur ein Item pro Skala"-Reduktion ein bewusster PCOR-Modellierungsentscheid — muss als Subset/`derivedFrom`-Kennzeichnung dokumentiert werden (nicht als „vollständiges Instrument" ausgeben).

### 1B. PROMIS – CPCOR-Nutzungsvereinbarung

| # | Instrument | Hinweis | Prio |
|---|---|---|---|
| P1 | **PROMIS Scale v1.2 – Global Health** (3-Item Kurz) | Absprache Felix ↔ Thomas; CPCOR-Agreement | P1 |
| P2 | **PROMIS NRS – Pain Intensity 1a** | Single-Item NRS; CPCOR | P2 |
| — | *PROMIS-16 (vorhanden)* | ggf. dieser Epic zuordnen | — |

### 1C. Tier B – metadata-only (psychosomatisch)

| # | Instrument | Grund | Prio |
|---|---|---|---|
| B1 | **WAI (Kurzversion, 3 Items)** | „wahrscheinlich nicht für Veröffentlichung geeignet" | P3 |
| B2 | **OECD** | „nur zur internen Verwendung — Chef fragen" → **Governance-Klärung** | P3 |
| B3 | **GI-PS** | Rechte bei Testautor:innen; keine Modifikation/Übersetzung/Weitergabe | P3 |

### 1D. Sonder-/Teilfälle (Modellierungsentscheidung nötig)

| # | Instrument | Frage | Prio |
|---|---|---|---|
| S1 | **EXPECT** | 3 Einzelitems (NRS), kein standardisierter Fragebogen → als lose Items modellieren oder auslassen? | P3 |
| S2 | **IPQ-S** | nur 1 offene Frage angelehnt an B-IPQ → einzelnes Freitext-Item? | P3 |

---

## Epic 2 — NTx / Transplant-Adherence (Tier B, metadata-only)

**Harte Vorgabe der NTx-Kooperationspartner:** *„Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt."* → strikt metadata-only, **kein** verbatim Item-/Antworttext im IG. Jedes Zentrum braucht für Routine-Nutzung eine eigene Lizenzvereinbarung (im `copyright`-Element + IG-Seite dokumentieren).

| # | Instrument | Copyright / Bezug | Modell | Prio |
|---|---|---|---|---|
| N1 | **BAASIS** | © Uni Basel — https://baasis.nursing.unibas.ch/how-to-obtain | metadata-only Questionnaire + ggf. Score-ObsDef | P1 |
| N2 | **MTSOSD-R59** | © KU Leuven — joke.willems@kuleuven.be | metadata-only; „einzelne Fragen genutzt" | P1 |
| N3 | **ABQ** | Müller/Kohlmann/Wilke 2015; gleiche No-Publish-Klausel | metadata-only | P2 |

**Gemeinsame NTx-Anforderungen:**
- **Jetzt bauen: metadata-only** (offiziell verteilbar). Vollversion mit verbatim Items ggf. später, aber außerhalb der offiziellen Packages (§1a).
- `capabilities`: `displayable=false`, `collectable=false`; `calculatable`/`extractable` nur, wenn Scoring-Methode public ist (bei BAASIS/MTSOSD i.d.R. nicht verbatim publizierbar → konservativ false).
- `copyright`-Element mit Bezugsweg + „Veröffentlichung der Items nicht erlaubt"-Hinweis.
- IG-Seite je Instrument mit Lizenz-/Bezugshinweis, **ohne** Itemtexte.
- SNOMED/LOINC-Codes für das Instrument als Ganzes prüfen (Termserver), aber keine Item-Terminologie ausrollen.

---

## 3. Vorgeschlagene Reihenfolge (über beide Epics)

1. **Fundament:** Lizenz-Tier-/`capabilities`-Framework (Tier A/B/C) sauber definieren → entblockt alle Tier-B.
2. **Quick Wins Tier A** mit fertiger dt. Validierung: GAD-7, PHQ-4, SCOFF, SSD-12.
3. **PROMIS** Global Health v1.2 (Agreement steht).
4. **Restliche Tier A** (EURONET-SOMA, ISR-Z, WI-7, PC-PTSD-Dedup, OPD-SFK, GSLTPAQ).
5. **Teil-Instrumente** A12–A15 (Subset-Modellierung), Sonderfälle S1/S2.
6. **NTx metadata-only** N1–N3 (nach Framework).
7. **Tier-B psychosomatisch** B1–B3 + Governance-Klärungen (OECD).

## 4. Offene Governance-Punkte (brauchen Entscheidung, nicht Code)

- OECD-Nutzung: „Chef fragen, ob etwas anderes besprochen wurde".
- PC-PTSD: welche Version (PC-PTSD vs. PC-PTSD-5 in DZPG) ist die PCOR-verbindliche? Dedup.
- A12–A15 Trennschärfe-Reduktion: als offizielle MII-Subsets deklarieren?
- Verhältnis der beiden neuen Epics zum DZPG-Epic 3r5: **PSS baut zuerst, DZPG nutzt nach** (Dependency-Links, keine Migration/Doppelbau). Beim Beads-Anlegen: `3r5.7/5/23/11` als `depends-on` die jeweiligen PSS-Instrument-Issues setzen.
