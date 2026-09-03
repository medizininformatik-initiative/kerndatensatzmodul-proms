Das abstrakte Score Blueprint Profil definiert die Struktur für ObservationDefinitions, die als Vorlagen für PRO-Scores dienen. Es beschreibt, welche Scores ein Instrument produziert, einschließlich Wertebereiche, Einheiten und Referenzbereiche. Konkrete Score-Definitionen (z.B. PHQ-9 Gesamtscore, EQ-5D-5L Index) müssen dieses abstrakte Profil erweitern.

**Kernelemente:**
- Code zur eindeutigen Score-Identifikation (typischerweise LOINC)
- QuantitativeDetails mit Einheiten und Wertebereichen
- QualifiedInterval für Referenzbereiche (z.B. klinische Cut-offs)
- Populationsspezifische Normwerte
- Health-Correlation Extension für Score-Interpretationsrichtung
