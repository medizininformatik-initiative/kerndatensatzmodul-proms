# Erhebungskontext und Studienprotokoll: Beispiel PCOR-MII-AN

Begleitmaterial zu den Ballotkommentaren **HDB-1030** (MII-Modul PRO, 2027.0.0-ballot) und
**HDB-1044** (**Modul Medizinisches Forschungsvorhaben** (Paket
`de.medizininformatikinitiative.kerndatensatz.studie` 2027.0.0-ballot). Stand 2026-10-20.

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
| `fsh/terminologie.fsh` | CodeSystems Protokoll-Aktionstyp (Referenzereignis, Befragung, Untersuchung, Intervention, Dokumentation), Trigger-Ereignistyp (mit Wales-Mapping), PCOR-MII-AN-Visitencodes |
| `fsh/plandefinition.fsh` | **PCOR-MII-AN Erhebungsplan** nach DRKS00038048: zwei Settings, 16 Zeitpunkte, BMI-abhängige Rhythmen, drei Endpunkte |
| `fsh/instanzen.fsh` | ResearchStudy (DRKS-ID, FKZ, Ethik), Proband:in, Consent, Encounter, Probandenplan mit 9 Aktivitäten, zwei QuestionnaireResponses (Protokollmodus FU-3M, Routinemodus Entlassung) |
| `resources/` | SUSHI-Ausgabe (22 JSON-Ressourcen) |

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

- alle 11 Instanzen, die PlanDefinition und drei der vier StructureDefinitions: **0 Fehler**
- `mii-pr-studie-studie-mit-protokoll`: 1 Fehler in **geerbten** CRMI-Metadaten des
  Elternprofils (`artifact-version-policy-codes`, Versionskonflikt 5.2.0); betrifft das
  Studie-Modul selbst, nicht den Vorschlag.
- Warnungen sind erwartbar: fehlende Narrative, ICD-10-GM und LOINC ohne Terminologieserver,
  PHQ-9-Questionnaire nicht im Paket.

Nachbauen:

```bash
mkdir -p /tmp/pcor && cp -R fsh /tmp/pcor/input && mv /tmp/pcor/input/sushi-config.yaml /tmp/pcor/
cd /tmp/pcor && sushi .
java -jar validator_cli.jar fsh-generated/resources/*.json -version 4.0.1 \
  -ig de.medizininformatikinitiative.kerndatensatz.studie#2027.0.0-ballot -tx n/a
```

## Offene Punkte

- **PHQ-8 vs. PHQ-9**: Der DRKS-Eintrag zu PCOR-MII-PSS (DRKS00039615) nennt PHQ-8; das Modul
  führt PHQ-9. Mit dem UKE klären, bevor PCOR-Instrumente Studienverweise erhalten.
- **Canonicals** unter `https://pcor-mii.de/fhir` sind Platzhalter; die Extension trägt bewusst
  die künftige MII-PRO-URL, damit Beispiele nicht umgeschrieben werden müssen.
- **Modul Forschungsvorhaben**: als **HDB-1044** eingereicht (2026-10-20): PlanDefinition-Profil
  Studienprotokoll, `ResearchStudy.protocol` must-support, CarePlan-Profil Probandenplan;
  keine Änderung an der Studientypologie (HDB-187 bis 189 laufen).
- **Geerbter CRMI-Metadatenfehler** im Elternprofil: bewusst nicht im Ballotkommentar, eher ein
  Thema für die laufende PCOR-MII-/TF-KDS-Abstimmung.
