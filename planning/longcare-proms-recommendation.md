# LongCARE — AG Fragebögen und Datenteilen: Empfehlung zur Nutzung von PROMs

> Quelle: „PROMs Empfehlung der AG Fragebögen und Datenteilen 2025-07-08 (v09).xlsx" (PDF, 1 Seite, erhalten 2026-07-27 per Mail).
> Empfehlungs-Tiers: **A = empfehlenswerter Fragebogen**, **B = zusätzlicher Fragebogen** (C nicht vergeben/nicht dargestellt).
> Use Case: **LongCARE / Post-COVID-Syndrom** — dritter Use Case neben PCOR-MII-Psychosomatik und NTx.

| Domäne | Konstrukt | Fragebogen | Empf. | Kommentar |
|---|---|---|---|---|
| Post-COVID-Syndrom | Post-COVID Symptome | **PCS-Score (Bahmer et al.)** | A | |
| Post-COVID-Syndrom | Diagnosekriterien ME/CFS | **Canadian Consensus Kriterien** | A (Überschneidungen prüfen) | Expertenbeurteilung zusätzlich notwendig |
| Post-COVID-Syndrom | funktioneller Status Post COVID | **PCFS – Post-COVID-Functional-Status** | A | |
| Fatigue | Fatigue | **FSS – Fatigue Severity Scale** | A | |
| PEM Post-exertionelle Malaise | ME/CFS, PEM (De Paul Symptom Q) | **PEM-Screening, Post Exertional Malaise** | A | |
| Andere körperliche Symptome | Autonome Dysfunktion | **COMPASS 31** | A | |
| Andere körperliche Symptome | Schlafprobleme | **ISI – Insomnia Severity Index** | A | |
| Andere körperliche Symptome | Schlaf | **ESS (Epworth Sleepiness Scale)** | B (aufgrund Länge) | |
| Andere körperliche Symptome | Schmerzen | **PDI – Pain Disability Index** | A | |
| Gesundheitszustand (Beeinträchtigungen) | Schweregrad somatischer Symptome | **PHQ-15** | A (Alternative zu SSS-8) | *exists* |
| Gesundheitszustand | Somatisierung | **SSS-8** | A | |
| Gesundheitszustand | Somatisierung | **SSD-12 – Somatische Symptomstörung** | A | *auch in PSS-Plan* |
| Depression | Depression | **PHQ-4** | A (Alternative zu PHQ-9 + GAD-7) | *geplant (DZPG 3r5.7)* |
| Depression | Depression | **PHQ-9** | A | *exists* |
| Ängstlichkeit | Ängstlichkeit | **GAD-7** | A | *impl. auf feat/gad-7* |
| Lebensqualität | allg. Gesundheitszustand | **EQ-5D-5L** | A | *exists* |
| Lebensqualität | allg. Gesundheitszustand | **SF-36 – Short Form Health Survey** | A (Lizenz zu klären!) | lizenziert! Freie Version von RAND |
| Arbeitsbezogene Faktoren | Arbeitsfähigkeit | **WAI – Work Ability Index** | A | ⚠️ Konflikt: PCOR-xlsx sagt „wahrscheinlich nicht für Veröffentlichung geeignet" |
| Stress | Stresserleben | **PSS – Perceived Stress Scale** | A | |
| Resilienz/Selbstwirksamkeit | Resilienz | **BRS – Brief Resilience Scale** | B | *DZPG 3r5.6* |
| Resilienz/Selbstwirksamkeit | Kohärenzgefühl | **SOC-3 – Sense of Coherence Scale** | B | *DZPG 3r5.3 (SoC)* |
| Soziale Unterstützung | soziale Unterstützung | **ESSI – ENRICHD Social Support Instrument** | B | |
| Kognitive Beeinträchtigung | PROMIS Item Bank v2.0 – Cognitive Function | **Cognitive Function – Short Form 6a** | A | ⚠️ wir haben **SF 4a**, nicht 6a |

## Reconciliation-Notizen

**Bereits vorhanden/impl.:** PHQ-9, PHQ-15, EQ-5D-5L (exists); GAD-7 (feat/gad-7); PHQ-4/BRS/SOC unter DZPG 3r5.

**Überschneidung mit PSS-Psychosomatik-Plan:** SSD-12, PHQ-4, PHQ-9, PHQ-15, GAD-7, WAI. → Nachnutzung statt Doppelbau (wie PSS↔DZPG).

**Neu, nur in LongCARE (to-build):** PCS-Score (Bahmer), Canadian Consensus Criteria ME/CFS, PCFS, FSS, PEM-Screening, COMPASS 31, ISI, ESS, PDI, SSS-8, SF-36, **PSS (Perceived Stress Scale)**, ESSI, PROMIS Cognitive Function **SF 6a**.

**Governance-Flags:**
- **SF-36**: lizenziert — freie RAND-Version (RAND-36) prüfen. → Tier-Klärung.
- **WAI-Konflikt**: LongCARE = A (empfohlen), PCOR-xlsx = „wahrscheinlich nicht publizierbar". Use-Case-abhängige Bewertung; vor Publikation auflösen.
- **PROMIS Cognitive Function**: LongCARE will **SF 6a**, im Repo liegt **SF 4a**. Klären ob 6a zusätzlich nötig (CPCOR-Agreement).
- **Canadian Consensus Criteria**: braucht zusätzliche Expertenbeurteilung (ClinRO-Anteil?), „Überschneidungen prüfen".
