# Erhebungskontext und Studienprotokoll: Beispiel PCOR-MII-AN

Begleitmaterial zu den Ballotkommentaren **HDB-1030** (MII-Modul PRO, 2027.0.0-ballot) und
**HDB-1044** (**Modul Medizinisches Forschungsvorhaben** (Paket
`de.medizininformatikinitiative.kerndatensatz.studie` 2027.0.0-ballot). Stand 2026-11-04.

Frage dahinter: Wie wird auf Instanzebene festgehalten, *welcher Punkt im Versorgungs- oder
Studienverlauf* eine QuestionnaireResponse oder Score-Observation ausgelöst hat, so dass sich
Messreihen bilden lassen (Baseline, Entlassung, Follow-up, prä-/postoperativ, on demand)?

## Modell in einem Satz

Das **Studienprotokoll** (PlanDefinition) beschreibt die Zeitpunkte einmal pro Studie; der
**Probandenplan** (CarePlan) instanziiert es pro Proband:in mit Soll-Fenstern und Ergebnissen;
die einzelne **QuestionnaireResponse** zeigt per `basedOn` auf den Probandenplan und trägt in der
Extension **Erhebungskontext** nur noch die Protokollposition (Visitencode) – oder, in der Routine
ohne Protokoll, Trigger-Typ und Ereignisdatum.

```
ResearchStudy (MII Studie) ──protocol──▶ PlanDefinition "Studienprotokoll"
      ▲                                      │ action.id = Visitencode
ResearchSubject (MII Proband)                │ relatedAction.offsetDuration zum Referenzereignis
  period.start = Indexdatum                  ▼
Patient ◀──subject── CarePlan "Probandenplan" ──instantiatesCanonical──▶ (PlanDefinition)
                       │ activity.detail.code = Visitencode, scheduledPeriod = Soll-Fenster
                       │ activity.outcomeReference ──▶ QuestionnaireResponse
                       ▼
QuestionnaireResponse ──basedOn──▶ CarePlan
  extension[Erhebungskontext]: protocol + protocolPosition  (Modus b, Studie)
                               triggerType + triggerDate     (Modus a, Routine)
```

## Inhalt

| Datei | Was |
|---|---|
| `fsh/ex-erhebungskontext.fsh` | Extension **Erhebungskontext** (Vorschlag HDB-1030): `triggerType`, `triggerDate`, `protocol` (canonical PlanDefinition), `protocolPosition` (Coding); Invariante: Typ *oder* Protokoll |
| `fsh/profile.fsh` | Drei Profilvorschläge für das Modul Forschungsvorhaben: **Studienprotokoll** (PlanDefinition), **Studie mit Protokollreferenz** (abgeleitet von `MII_PR_Studie_Studie`, `protocol` must-support), **Probandenplan** (CarePlan) |
| `fsh/terminologie.fsh` | CodeSystems Protokoll-Aktionstyp (Referenzereignis, Befragung, Untersuchung, Intervention, Dokumentation), **Trigger-Ereignistyp** (17 Konzepte, Property `achse` = ereignis/zweck), PCOR-MII-AN-Visitencodes; **ConceptMap** Trigger-Ereignistyp → NHS Wales PSOM Trigger Event Type |
| `fsh/plandefinition.fsh` | **PCOR-MII-AN Erhebungsplan** nach DRKS00038048: zwei Settings, 16 Zeitpunkte, BMI-abhängige Rhythmen, drei Endpunkte |
| `fsh/instanzen.fsh` | ResearchStudy (DRKS-ID, FKZ, Ethik), Proband:in, Consent, Encounter, Probandenplan mit 9 Aktivitäten, drei QuestionnaireResponses (Protokollmodus FU-3M, Routinemodus Entlassung, Studienendpunkt EP-18M) |
| `resources/` | SUSHI-Ausgabe (24 JSON-Ressourcen) |

## Trigger-Ereignistyp: Herkunft und Erweiterung

Vorbild ist der Wertebereich **PROMs Trigger Event Type** des NHS Wales PROMs Information
Standard ([Data Dictionary, Information Specification PROMs](https://www.datadictionary.wales.nhs.uk/WordDocuments/informationspecification98.htm)),
der im IG [FHIR Data Standards Wales for PSOM](https://simplifier.net/guide/fhir-psom-wales) als
CodeSystem `DataStandardsWales-PSOM-TriggerEventType` (Codes 10–18, 71, 91) vorliegt. Die
Wales-Codes sind vollständig übernommen (eigene Codes, formales Mapping in der ConceptMap
`pcor-cm-trigger-ereignis-to-wales`, alle 1:1 außer *Baseline* und *Follow-up*).

Ergänzt wurde, was Wales nicht abdeckt:

| Konzept | Achse | Warum |
|---|---|---|
| `baseline`, `follow-up` | Ereignis | Position in einer Messreihe; Wales leitet das aus Ereignis + Datum ab |
| `screening` | Zweck | Anlassunabhängige Reihenerhebung |
| `diagnostik` | Zweck | Anlassbezogene Abklärung / Schweregrad vor Therapieentscheidung |
| `monitoring` | Zweck | Verlaufskontrolle *innerhalb* der Behandlungsepisode (vs. Follow-up danach) |
| `studienendpunkt` | Zweck | Erhebung für einen protokollierten Endpunkt; Protokollposition nennt welchen |

Die Property `achse` macht sichtbar, dass die Liste zwei Dimensionen mischt: das **auslösende
Ereignis** (Wales-Logik) und den **Zweck** der Erhebung. Solange die Extension nur einen
`triggerType` trägt, gilt: zweckbezogenes Konzept wählen, wenn kein konkretes Verlaufsereignis
Auslöser ist. Ob daraus später zwei getrennte Elemente werden, ist offen.

## Was das PCOR-MII-AN-Beispiel zeigt

Quelle: DRKS00038048 (registriert 2025-11-13), wissenschaftliche Kurzbeschreibung und Endpunkte.

- **Setting (teil-)stationär**: Aufnahme T0 (Befragung Basisdatensatz, PHQ-9/GAD-7 an
  Validierungsstandorten, Blut-/Stuhlprobe, Klinikerrating), Entlassung T1 als Referenzereignis,
  Follow-ups 2 W / 4 W / 3 M nach Entlassung, danach vierteljährlich oder jährlich je nach BMI,
  Endpunkte 18 M (primär) / 3 J / 6 J mit Routinedaten-Extraktion.
- **Setting ambulant**: Befragungsbeginn A-T0 als Referenzereignis, direkt vierteljährlich,
  BMI-adaptiv, gleiche Endpunkte relativ zum Befragungsbeginn.
- Alle vier Zeitpunkttypen kommen vor: Befragung, Untersuchung, Dokumentation, Referenzereignis.
  Intervention ist in dieser nicht-interventionellen Studie bewusst unbelegt.
- Zeitbezug ausschließlich über `relatedAction` (`after-end` + `offsetDuration`) zum
  Referenzereignis; Wiederholungen über `timingTiming`; Toleranzfenster über `timingRange`.
- BMI-Schwelle ist im Registereintrag nicht beziffert und daher als CQL-Bezeichner
  (`BMIUnterStudienschwelle`) offengelassen.

## Validierung

SUSHI 3.20.1: 0 Fehler. FHIR-Validator (validator_cli, Nov 2025) gegen
`kerndatensatz.studie#2027.0.0-ballot`, offline (`-tx n/a`):

- alle 12 Instanzen, die ConceptMap, die PlanDefinition und drei der vier StructureDefinitions: **0 Fehler**
- `mii-pr-studie-studie-mit-protokoll`: 1 Fehler in **geerbten** CRMI-Metadaten des
  Elternprofils (`artifact-version-policy-codes`, Versionskonflikt 5.2.0); betrifft das
  Studie-Modul selbst, nicht den Vorschlag.
- Warnungen sind erwartbar: fehlende Narrative, ICD-10-GM und LOINC ohne Terminologieserver,
  PHQ-9-Questionnaire nicht im Paket.

Nachbauen:

```bash
mkdir -p /tmp/pcor/input && cp -R fsh /tmp/pcor/input/fsh && mv /tmp/pcor/input/fsh/sushi-config.yaml /tmp/pcor/
cd /tmp/pcor && sushi .
java -jar validator_cli.jar fsh-generated/resources/*.json -version 4.0.1 \
  -ig de.medizininformatikinitiative.kerndatensatz.studie#2027.0.0-ballot -tx n/a
```

## Offene Punkte

- **Wales bindet den Trigger-Typ an `Task.reasonCode`** (ein Task pro Instrument und
  Erhebungsereignis, Collection Event = Tasks mit gleichem Typ und Datum). Das MII-Modul
  arbeitet nicht mit Tasks, sondern legt den Kontext als Extension auf QuestionnaireResponse
  bzw. Observation. Ob und wo ein Task-basierter Erhebungsauftrag ins Modul gehört, ist an
  anderer Stelle zu diskutieren; die Werteliste ist davon unabhängig.

- **PHQ-8 vs. PHQ-9**: Der DRKS-Eintrag zu PCOR-MII-PSS (DRKS00039615) nennt PHQ-8; das Modul
  führt PHQ-9. Mit dem UKE klären, bevor PCOR-Instrumente Studienverweise erhalten.
- **Canonicals** unter `https://pcor-mii.de/fhir` sind Platzhalter; die Extension trägt bewusst
  die künftige MII-PRO-URL, damit Beispiele nicht umgeschrieben werden müssen.
- **Modul Forschungsvorhaben**: als **HDB-1044** eingereicht (2026-10-20): PlanDefinition-Profil
  Studienprotokoll, `ResearchStudy.protocol` must-support, CarePlan-Profil Probandenplan;
  keine Änderung an der Studientypologie (HDB-187 bis 189 laufen).
- **Geerbter CRMI-Metadatenfehler** im Elternprofil: bewusst nicht im Ballotkommentar, eher ein
  Thema für die laufende PCOR-MII-/TF-KDS-Abstimmung.
