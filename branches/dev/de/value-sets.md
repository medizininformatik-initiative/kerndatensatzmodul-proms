# Value Sets - MII IG PRO v2027.0.0-ballot.rc4

* [**Table of Contents**](toc.md)
* **Value Sets**

## Value Sets

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### ValueSets

Diese Seite beschreibt die ValueSets des Moduls **PRO** (Namenskonvention `MII_VS_<Modul>_<Name>`). Allgemeine Hinweise zur Verwendung von Codes: siehe [FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html); die zugrunde liegenden CodeSystems beschreibt die Seite [CodeSystems](code-systems.md).

**Expansionen:** ValueSet-Expansionen dieses Leitfadens werden über einen FHIR-Terminologieserver erzeugt — über SU-TermServ, sofern das Client-Zertifikat konfiguriert ist, sonst über den öffentlichen HL7-Server `tx.fhir.org` (dann expandieren einige KDS-spezifische ValueSets ggf. nicht vollständig).

**SNOMED CT** dient der **Identifikation von Instrumenten** — Assessment-Scale-Konzepte wie `273446001` (EORTC QLQ-C30) oder `273524006` (HADS) — nicht den Antwortskalen. Edition und Version folgen der KDS-weiten [Terminology Version Policy](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki) des Meta-Moduls; dieses Modul pinnt keine eigene SNOMED-Edition. Expansionsparameter sind zentral über das [Expansion-Manifest](Parameters-mii-param-pro-manifest.md) des Moduls fixiert.

Die **Antwortskalen** sind MII-kontrollierte ValueSets über den eigenen CodeSystems des Moduls: Jedes Antwortkonzept trägt sein Scoring-Gewicht als `itemWeight`-Property — das macht die berechneten Ausdrücke (`.weight()`) verlässlich und ist der Kern der [Terminologie-Strategie](terminologie.md) des Moduls.

