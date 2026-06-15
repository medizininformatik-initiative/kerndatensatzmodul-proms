# Changelog - MII IG PRO v2026.4.1

## Changelog

Diese Seite dokumentiert die Änderungen zwischen den Versionen des MII PRO-Moduls.

**Version: 2026.4.1**

Datum: 2026-06-15 (released, Tag `v2026.4.1`)

Patch-Release auf v2026.4.0: behebt fehlendes Versions-Metadatum auf den 3 EQ-5D-5L ObservationDefinitions, das beim Bake von v2026.4.0 entdeckt wurde.

FHIR-Ressourcen:

* Fixed: `mii-obsdef-pro-score-eq5d5l-index`, `mii-obsdef-pro-score-eq5d5l-profile`, `mii-obsdef-pro-score-eq5d5l-vas` – `* insert ObsDefVersion` und `* insert MetaProfile(...)` ergänzt (vorher fehlten beide RuleSets, dadurch keine `artifact-version`-Extension im Package und kein `meta.profile`-Eintrag mit Canonical-Version). Andere ObsDefs (PHQ-9, BDI-II, PROMIS-29, DASS-21, PRO-CTCAE, EORTC QLQ-C30, Depression T-Score) hatten beide RuleSets bereits.

Verifikation:

* Vorher: 36 ObsDefs mit artifact-version=2026.4.0, 3 ohne (EQ-5D)
* Nachher: 39 ObsDefs mit artifact-version=2026.4.1

**Version: 2026.4.0**

Datum: 2026-06-14 (released, Tag `v2026.4.0`)

Zwei thematische Erweiterungen in einem Release: **PROMIS-Konsolidierung** (PROMIS-16 PROPr, Wording-Migration, Copyright-Modell) und **Symptom-Screening für die onkologische und palliative Versorgung** (MIDOS2 + PRO-CTCAE Onkologisches Basisscreening).

## Symptom-Screening (MIDOS2 + PRO-CTCAE Onkologisches Basisscreening)

PRO-Instrumente:

* Added: **MIDOS2** (Minimal Documentation System for Patients in Palliative Care, DGP) – Palliativ-Symptom-Screening mit 13 Items (11 Symptome auf DGP-4-stufiger Severity-Skala, Wohlbefinden auf 4-stufiger Skala, Freitext)
* Added: **PRO-CTCAE Onkologisches Basisscreening** (DKG) – Subset des NCI PRO-CTCAE mit MIDOS2-äquivalenter Symptomauswahl, 10 AEs / 23 Items, Depressivität via PRO-CTCAE-konformes Mehrfach-Mapping (#55 Discouraged + #56 Sad), Angst+Anspannung via #54 Anxiety

Architektur:

* Added: PRO-CTCAE Complete als Master-Itembank, Derivate via `derivedFrom`
* Added: Catalogue-Einträge `midos-midos2` und `proctcae-onkologisches-basisscreening`

Terminologie & Mapping:

* Added: MIDOS2 CodeSystem mit DGP-4-stufiger Severity-Skala (keine/leichte/mittlere/starke)
* Added: MIDOS2 separate Wohlbefinden-Skala (sehr gut/eher gut/eher schlecht/sehr schlecht)
* Added: SNOMED-Properties auf MIDOS2 Item-Codes (wo eindeutig; Verifikation via Snowstorm ausstehend)
* Added: MIDOS2 ↔ PRO-CTCAE Item-Level Mapping (11 AEs, 23 Items)
* Verified: PRO-CTCAE Item-Wordings gegen NCI-Originaldokument (EN/DE)
* Identified: Diskrepanzen #27 Hair Loss + #59 Vaginal Discharge (int → amt) – dokumentiert

IG-Dokumentation:

* Added: `midos2.md` – Überblick, Skalen, Score-Berechnung, Mapping zu Onkologischem Basisscreening, Literatur
* Added: `proms-onkologisches-basisscreening.md` – PRO-CTCAE-basierte Symptomauswahl, Skalen, Composite Grading, MIDOS-Mapping
* Added: Beide Seiten als Unterseiten der PRO Library in `sushi-config.yaml` registriert

Beispiele:

* Added: `mii-exa-pro-midos2-response` – Palliativpatient mit moderater Symptomlast (Summe 19/33)
* Added: `mii-exa-pro-pro-ctcae-onkologisches-basisscreening-response` – Onkologischer Patient unter Chemotherapie

Qualitätssicherung:

* Status: Beide Instrumente `draft` + `experimental`
* TODO: MIDOS2 Source-Verifikation gegen Stiel et al. 2010/2012 (Bead `5jd`)

Quellen:

* NCI PRO-CTCAE Item Library v1.0 (EN/DE)
* Stiel et al. 2010/2012 (MIDOS2, Verifikation ausstehend)

## PROMIS-Konsolidierung

PROMIS-Konsolidierung: vollständige Implementierung des PROMIS-16-Profile v2.1 (PROPr), Wording-Migration der bestehenden PROMIS-29- und Cognitive-Function-SF4a-Questionnaires auf die offizielle deutsche PROMIS-Quelle, und Einführung eines mehrschichtigen Copyright-/Lizenz-Modells für alle PROMIS-Ressourcen.

PRO-Instrumente:

* Added: **PROMIS-16 Profile v2.1 (PROPr)** – ultrakurzes Multi-Domain-Instrument mit 16 Items über 8 Domänen (inkl. Cognitive Function); alle Items mit offiziellen deutschen Wordings aus dem PHO PDF "PROMIS-16 Profile v2.1 (PROPr), German, 20 September 2024" implementiert. Score-Berechnung (PROPr Utility + 8 Domain T-Scores) bewusst auf spätere Version verschoben (CQL Library `mii-lib-promis-16` geplant)
* Fixed: **PROMIS-29 Wording-Migration** – 25 Item-Texte in `mii-qst-pro-promis-29` und `mii-qst-pro-promis-29-de` an die offiziellen deutschen Wordings angepasst (vorher: AI-generierte/LOINC-Fragment-Übersetzungen). Quellen-Hierarchie: das PHO PDF "PROMIS-29 Profile v2.1 German, 06 April 2020" ist normativ; das PCOR-MII Master Item-Level Dictionary (DZPG-3-Entities) dient als sekundärer Cross-Check
* Fixed: **PROMIS-29 Pain Interference Verb-Tempus** – 4 Items (`promis-painin9`, `promis-painin22`, `promis-painin31`, `promis-painin34`) von Präsens "beeinträchtigen" auf Präteritum "beeinträchtigten" umgestellt, konform mit PHO PDF und mit der eigenen Section-Description "In den letzten 7 Tagen: Inwieweit beeinträchtigten Schmerzen…" (vorheriger Stand basierte auf PCOR-MII Master Wording, das hier vom PHO-Original abweicht)
* Fixed: **PROMIS-29 Antwortskalen** – 5 Items (HI7, AN3, Sleep116, Sleep20, Sleep44) von der Frequency-Skala auf die Intensity-Skala umgestellt; LOINC-Code-Tausch LA6270-8/LA10066-1/LA10082-8/LA10044-8/LA9933-8 → LA6568-5/LA13863-8/LA13909-9/LA13902-4/LA13914-9
* Fixed: **PROMIS-29 SRPPER23-CaPS** – falscher LOINC-Code 62041-9 ("satisfied with work") ersetzt durch 76709-5 ("trouble doing usual work") mit passendem deutschem Text (PCOR-MII Master enthält hier einen Tippfehler "erldige", unsere Version "erledigen" folgt PHO PDF)
* Changed: **PROMIS Cognitive Function SF 4a** – Copyright-RuleSet eingefügt (Wordings waren bereits PHO-konform und bleiben unverändert)

Architektur & Lizenzierung:

* Added: Zentrales RuleSet `PROMIS_Copyright_DE` (`input/fsh/rulesets/promis-copyright.fsh`) mit Schichten-Attribution für alle PROMIS-Questionnaires: 
1. FHIR-Resource-Struktur © MII (CC-BY 4.0)
1. PROMIS-Items © PROMIS Health Organization (Northwestern University)
1. Offizielle deutsche Übersetzungen bereitgestellt durch PCOR-MII, kuratiert durch PROMIS National Center Deutschland (CPCOR Charité, Leitung Felix Fischer)
1. LOINC-Codes © Regenstrief Institute
 
* Added: `publisher`, `copyright`, `useContext` (PROMIS + CPCOR) und `contact` (CPCOR-Nutzungsanfrage) auf allen PROMIS-Questionnaire-Instanzen
* Added: Neue ValueSet `MII_VS_PRO_PROMIS_Intensity_Response_Scale` (LOINC LL1024-0: Not at all/A little bit/Somewhat/Quite a bit/Very much mit deutschen Designationen)
* Clarified: `mii-qst-pro-promis-29-de` ist nur eine Darstellungsvariante (DE-primary für Renderer, die die `translation`-Extension nicht auswerten); inhaltlich identisch zur EN-primären Hauptversion `mii-qst-pro-promis-29`, die maßgeblich ist

IG-Dokumentation:

* Added: `input/pagecontent/promis-16.md` – Übersicht, Capabilities, PROPr-Methodik (3-Stufen), Item-Überlapp mit PROMIS-29, Vergleichstabelle, Lizenzierungs-Abschnitt
* Added: `implementation-guides/.../PROMIS/PROMIS-16.page.md` – Simplifier-Seite mit Vorschau/Tree/JSON/XML-Tabs
* Added: PROMIS-16 in `sushi-config.yaml` Menü und Simplifier-`toc.yaml` registriert
* Added: Zentrale "Lizenzierung & Urheberrecht"-Sektion in `input/pagecontent/promis.md` mit 4-Schichten-Tabelle und CPCOR-Nutzungsanfrage-Link
* Added: Hinweis auf der PROMIS-29-Seite (input + Simplifier), dass die DE-Variante nur zur Darstellung dient und nicht als eigenständige Implementierung gepflegt wird

Tooling:

* Added: Skill `.claude/skills/extract-qst-translations/` – jq-basierter Extraktor für Item-Texte und Translation-Extensions aus generierten Questionnaire-JSONs; inkl. automatischem Diff gegen PCOR-MII Master-Referenz. Verifikation aller PROMIS-Wording-Änderungen via `MATCH/DIFF`-Counter
* Added: `.gitignore`-Schutz für die Master-Referenz-TSV und den beads-credential-key

Verifikation:

* PROMIS-29 gegen PHO PDF (normativ): alle 29 Items wortgleich nach den PAININ4-Tempus-Fixes
* PROMIS-29 gegen PCOR-MII Master (sekundär): MATCH=24, DIFF=5 – 4 davon sind die bewussten PAININ-Präteritum-Fixes nach PHO, 1 ist der bekannte Master-Tippfehler "erldige" bei SRPPER23
* PROMIS-16 gegen PCOR-MII Master: MATCH=15, DIFF=0
* PROMIS Cognitive Function SF 4a gegen PCOR-MII Master: MATCH=4, DIFF=0

**Version: 2026.3.0**

Datum: 2026-05-08 (released, Tag `v2026.3.0`, noch nicht zurück in dev gemerged)

PRO-Instrumente:

* Added: GAD-7 (Generalized Anxiety Disorder 7-item Scale) – vollständige Implementierung mit Questionnaire, Terminologie und Scoring (#80)

FHIR-Ressourcen:

* Fixed: PROMIS-29 englische Variante repariert – 33 fehlerhafte Item-Texte korrigiert
* Removed: Unvollständige PROMIS-29 Minimal-Variante entfernt
* Removed: Unvollständiger ConceptMap-Stub `mii-cm-pro-bdi-ii-to-promis-depression-observation` entfernt (nur 2 von 64 PROsetta-Stone-Einträgen). Architektur-Entscheidung: Score-Konversionen werden zukünftig als CQL Library modelliert (geplant für 2027-Release)
* Fixed: Capabilities-Extension in `mii-qst-pro-promis-cognitive-function-sf4a` vervollständigt (`domainAligned`=true ergänzt)
* Added: Capabilities-Extension zu `mii-qst-pro-pro-ctcae-breast-de` hinzugefügt (`displayable`+`collectable`=true; `calculatable`/`extractable`/`domainAligned`=false – bewusste Entscheidung wegen cross-entity-Charakter, Composite-Grade-Scoring und noch ausstehender Scoring-Algorithmus-Wahl)

**Version: 2026.2.0**

Datum: 2026-03-30 (released, Tag `v2026.2.0`, Simplifier-Package published)

PRO-Instrumente:

* Added: DASS-21 (Depression Anxiety Stress Scales) – vollständige Implementierung mit Questionnaire, Terminologie (CodeSystem, ValueSets), Scoring und Beispielen
* Added: DASS-21 IG-Dokumentationsseite

Dependencies und Tooling:

* Changed: Dependency de.gematik.isik von 5.0.0 auf 5.1.1 aktualisiert (konsistent mit Bildgebung und Laborbefund)
* Changed: Dependency hl7.fhir.uv.extensions.r4 von 5.1.0 auf 5.2.0 aktualisiert (konsistent mit Bildgebung und Laborbefund)

ObservationDefinition:

* Fixed: Depression T-Score ObsDef – Populationsinformation von `qualifiedInterval.context.coding` nach `qualifiedInterval.appliesTo` verschoben (`context` beschreibt die Intervall-Kategorie, nicht die Zielpopulation)

EORTC QLQ-C30 ValueSet-Architektur:

* Changed: EORTC QLQ-C30 ValueSets von contained auf standalone external ValueSets umgestellt (Variant A)
* Added: Post-SUSHI ValueSet-Expansion-Script für LHC Forms Rendering-Kompatibilität
* Fixed: Display-Texte zu EORTC QLQ-C30 ValueSet-Konzepten hinzugefügt

Qualitätssicherung:

* Fixed: ObsDef-Titel entdoppelt, IG-Seite Score-Darstellung verbessert
* Fixed: Kaputte `` Syntax durch Markdown-Blockquotes ersetzt (DASS-21, PHQ-9 IG-Seiten)
* Fixed: CodeSystem/ValueSet auf kurze IDs umgestellt

Hinweis: Die DASS-21- und Qualitätssicherungs-Punkte waren ursprünglich als eigenständiger v2026.1.0-Release geplant, wurden aber nie als eigenes Package veröffentlicht. Inhalt ist erstmals als Teil von v2026.2.0 released.

**Version: 2026.0.1**

Datum: 26.01.2026

Bugfix-Release mit PROMIS-29 Ergänzungen und Canonical-URL-Korrektur.

FHIR-Ressourcen:

* Added: PROMIS-29 Deutsche Variante und umfassende Beispiele
* Fixed: PROMIS-29 QuestionnaireResponse Validierungsfehler behoben
* Fixed: Canonical URLs auf https standardisiert (http zu https)
* Fixed: packageId korrigiert (kerndatensatz.pro zu kerndatensatz.pros)

IG-Dokumentation:

* Changed: PROMIS IG-Seiten reorganisiert und Tree-Rendering gefixt
* Added: Individuelle Profilseiten für abstrakte Profile
* Added: SDC STU3 Spec-Links zu Questionnaire- und QR-Profilseiten

**Version: 2026.0.0**

Datum: 12.01.2026

Erster stabiler Release des MII PRO-Moduls für den produktiven Einsatz.

FHIR-Ressourcen und Profile:

* Added: SearchParameters für Questionnaire, QuestionnaireResponse, Observation (Suche nach Code, Subject, Patient)
* Added: CapabilityStatement zur Dokumentation der unterstützten FHIR-Operationen des PRO-Moduls
* Fixed: meta.profile zu allen Observation-Beispielinstanzen hinzugefügt (FHIR-Konformität)

Versionsverwaltung und Metadaten:

* Added: MetaProfile RuleSet für konsistente Profil-Konformanz mit versionierten Canonicals (Format: `{canonical}|{version}`)
* Added: ObsDefVersion RuleSet für R5-Backport der artifact-version Extension in ObservationDefinition (R4-Kompatibilität)
* Changed: Version RuleSets in zentrale Datei extrahiert (`input/fsh/rulesets/version.fsh`) für einfachere Release-Verwaltung

Dependencies und Tooling:

* Changed: Abhängigkeit zu de.medizininformatikinitiative.kerndatensatz.meta auf 2026.0.0 aktualisiert
* Added: package.bake.yaml für Firely Bake Packaging-Workflow
* Changed: package.json Name-Korrektur zu `de.medizininformatikinitiative.kerndatensatz.pros`

Qualitätssicherung und Validierung:

* Added: EORTC QLQ-C30 Validierungs-Suppressions und QA-Dokumentation
* Added: Vollständige Wartung des Questionnaire- und Score-Katalogs
* Changed: CI/CD mit inline Java-Validierung, Gradle-Caching und Timing-Informationen für schnellere Builds

Developer Experience:

* Added: Claude Code Konfiguration mit Build-, Release- und IG-Export-Skills
* Added: Zentralisiertes `/build-package` Kommando für FHIR Package Building
* Added: `/mii-testdata-contribution` Skill für Testdaten-Repository
* Added: `/fix-ig-export-links` Skill für Simplifier IG Export Link-Reparatur

**Version: 2026.0.0-ballot**

Initiale Ballotierungsversion mit Fokus auf SDC-basierte PRO-Erfassung und Score-Berechnung.

PRO-Instrumente:

* PHQ-9 (Patient Health Questionnaire-9) mit vollständiger Score-Berechnung (Raw-Score und T-Score)
* EQ-5D-5L (EuroQol 5-Dimension 5-Level) mit Index-, VAS- und Profil-Scores
* PROMIS-29 Profile v2.1 mit allen 7 Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Social Function, Pain) und automatischer Scoring-Berechnung
* PROMIS Cognitive Function SF4a
* BDI-II (Beck Depression Inventory II) als Referenzimplementierung
* EORTC QLQ-C30 (Lebensqualität bei Krebspatienten) mit 15 Subskalen

FHIR Profile und Extensions:

* MII_PR_PRO_Questionnaire: SDC-basiertes Questionnaire-Profil mit Calculated Expressions und Conditional Display
* MII_PR_PRO_QuestionnaireResponse: Response-Erfassungsprofil mit SDC Extraction Capabilities
* MII_PR_PRO_Score_Blueprint: Vorlage für Score-Observations mit ObservationDefinition-Referenz
* MII_PR_PRO_Score_Instance: Instanz-Profil für berechnete Scores mit derivedFrom-Verknüpfung
* EX_MII_PRO_Questionnaire_Capabilities: Extension zur Dokumentation von Questionnaire-Fähigkeiten (displayable, collectable, calculatable, extractable)

Terminologie-Strategie:

* MII-kontrollierte CodeSysteme und ValueSets für zuverlässige Score-Berechnung mit ordinalValue-Extensions
* Deutsche Übersetzungen für alle Questionnaire-Items via translation-Extensions
* ordinalValue-Extensions (SDC STU3) für numerische Scoring-Gewichte in Antwort-Optionen
* FHIRPath-Ausdrücke nutzen `.ordinal()` für Weight-basierte Berechnungen

Technische Basis:

* FHIR R4 (4.0.1) mit SDC 3.0.0 (Structured Data Capture)
* Dependency zu de.medizininformatikinitiative.kerndatensatz.meta 2026.0.0
* Dependency zu de.gematik.isik 5.0.0 für deutsche Interoperabilität

