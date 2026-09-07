# Zentrale Förderung & Nutzungs-Metriken — Notiz

> Festgehalten 2026-07-28. Strategie: die Delivery-Logs der Distributions-Schicht (L2) tragen gleichzeitig **Betriebskennzahl** (Funding-Antrag) **und** **Forschungsdaten** (Implementation-Science-Paper 2 / PROMetheus). Eine Datenquelle, zwei Zwecke.

## Kernidee

Nutzungszahlen sind **Nebenprodukt der Architektur**, kein Extra-Bau: das mTLS-gated `$crmi-package`-Delivery erzeugt ohnehin auditable Logs (VISION §3.2, ursprünglich für Lizenz-Compliance). Jeder Manifest-Pull + jeder `$transform`-Lauf = ein Datenpunkt.

## Welche Felder die Logs erfassen MÜSSEN (damit sie beides tragen)

**Pro Delivery (Manifest-Pull):**
- Instrument-Canonical + **Version**
- anforderndes **Zentrum** (mTLS-Identität, pseudonymisierbar)
- **Studie / Manifest-ID** (+ Use-Case-Tag: longcare/pcor/ntx)
- Timestamp, Delivery-Channel (Container/REST/Syndication/NPM)
- Entitlement-Ergebnis (voll / gefiltert / metadata-only) — Compliance-Nachweis

**Pro `$transform` (V1→V2-Migration):**
- Instrument, Quell-Version → Ziel-Version
- Zentrum, Anzahl konvertierter Responses
- Konvertierbarkeits-Flag (verlustfrei / rescale / partiell-lossy)

## Aggregate

**Für den Funding-Antrag:**
- X Studien/Jahr · Y Unikliniken · Z Instrument-Pulls (reale Adoption statt Schätzung)
- **Reuse-Faktor** („1 validierter PHQ-9 statt N DIZ-Eigenbauten, N× nachgenutzt") = Effizienz/Qualität
- M zentrale V1→V2-Migrationen = Wert der Brücken-Pflege
- Lizenz-gated Deliveries = Compliance-Wert (kommerzielle Instrumente/Sponsoren)

**Für IS-Paper 2 (dieselben Daten):**
- Adoptionskurve pro Standort/Instrument; Version-Transition-Uptake; Drop-off
- Heterogenität über Standorte (Fidelity vs. Adaptation — Beads `0fu.4/0fu.5`)
- Completeness-/Qualitätssignale (Kahn-Framework)

## Funding-Modelle (deutsche Landschaft)

- **MII/NUM-Kerninfrastruktur** — KDS-Modul → Betriebs-Service (natürliche Erweiterung)
- **VUD-Kostenteilung** — ~36 Unikliniken, Nutzungszahlen begründen fairen Verteilschlüssel
- **Freemium/Layer** — offene Instrumente + metadata-only frei; Value-Add (Migrations-`$transform`, versionierte Manifeste, Lizenz-Gate, Scoring) = geförderter/kostenpflichtiger Layer

## Caveats

1. **Henne-Ei**: Adoption ↔ Förderung ↔ Adoption → **Seed/Pilot** mit Flaggschiff-Studien (LongCARE) liefert erste belastbare Logs.
2. **Telemetrie-Governance**: Metadaten (Instrument/Standort/Zeit), **keine** Patientendaten → datenschutzarm, aber Standort-Tracking braucht Vereinbarung im DIZ-Verbund + Retention-Policy.

## Verknüpfung
[[pro-distribution-formserver-vs-package]] · [[pro-examples-first-study-composer]] · IS-Konzept (PROMetheus, JAMIA-Paper, Beads `0fu`).
