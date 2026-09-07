<!-- markdownlint-disable MD041 -->

Technische Hinweise für **Softwarehersteller und DIZ-Implementierende**: Formular-Renderer, KIS-Integrationen, ePRO-Apps und ETL-Strecken, die Ressourcen des PRO-Moduls erzeugen oder konsumieren.

### Was zu implementieren ist, nach Rolle

| Ihr System | konsumiert | erzeugt | Schlüsselseiten |
|---|---|---|---|
| **Formular-Renderer / ePRO-App** | Questionnaire (mit SDC-Extensions) | QuestionnaireResponse | [Capabilities](questionnaire-capabilities.html), [Scoring](scoring.html) (Kanal A) |
| **KIS-Integration** | QuestionnaireResponse, Score-Observations | Anzeige, Workflows | [Workflows](workflows.html), [Abgeleitete Metriken](derived-metrics.html) |
| **ETL- / DIZ-Strecke** | Primärsystemdaten, QuestionnaireResponses | Observations konform zu den Score-Profilen | [Scoring](scoring.html) (Kanäle B/C), [Validierung](validation.html) |
| **Scoring-Service** | QuestionnaireResponse | Score-Observation | [Scoring](scoring.html) (Kanal B, CQL) |

### Die fünf Regeln, die jede Implementierung einhalten muss

1. **Erst die Capabilities-Extension lesen.** Ein Questionnaire deklariert maschinenlesbar, ob es displayable, collectable, calculatable, extractable, populatable ist — [Details](questionnaire-capabilities.html). Der BDI-II etwa ist *nicht* displayable (Lizenz); seine Itemtexte zu rendern ist eine Lizenzverletzung, kein Bug.
2. **Niemals Antwortkodierungen erfinden.** Antworten tragen die Codes der gebundenen Antwortskala (`answerOption` oder `answerValueSet`) — mit `system` und `code`, nie nackte Integer. An diesen Codes hängen die ordinalen Gewichte fürs Scoring ([ID-Systematik](id-systematics.html)).
3. **linkIds sind kanonisch und instrumentenübergreifend.** Dieselbe Frage trägt über Instrumente hinweg denselben linkId (PHQ-D-Block-Namespace: PHQ-9/PHQ-15/GAD-7). Nicht ummappen; Daten aus Fremdnummerierungen werden über die mitgelieferten ConceptMaps überbrückt.
4. **Clientseitige Scores sind Komfort, serverseitige sind maßgeblich.** Wer Kanal-A-Calculated-Expressions rendert, kennzeichnet das Ergebnis als vorläufig; die maßgebliche Score-Observation kommt aus Kanal B — einschließlich der Medizinprodukte-Abgrenzung auf der [Scoring](scoring.html)-Seite.
5. **Gegen das versionierte Package validieren**, nicht gegen den CI-Build: `de.medizininformatikinitiative.kerndatensatz.pros` aus der [Package-Registry](https://packages.simplifier.net/de.medizininformatikinitiative.kerndatensatz.pros). Die [Validierungs](validation.html)-Seite beschreibt die Terminologieserver-Anforderungen (deutsche Displays!) und bekannte Validator-Fallen.

### Hinweise für Renderer

Die Fragebögen nutzen SDC-Rendering- und Verhaltens-Extensions (Calculated Expressions, enableWhen, Variablen, Item Control). Renderer, die die `translation`-Extension ignorieren, können die DE-primären Darstellungsvarianten nutzen, wo vorhanden (z. B. `mii-qst-pro-promis-29-de`) — reine Darstellungsvarianten; die EN-primäre Ressource bleibt maßgeblich. Testseiten rendern mit LHC-Forms und SMART App Launch; sowohl inline `answerOption`- als auch `answerValueSet`-gebundene Skalen müssen auflösen.

### Bezug der Artefakte

- **Package (Build-Zeit, reproduzierbar):** `fhir install de.medizininformatikinitiative.kerndatensatz.pros@<version>`
- **Gerenderte Artefakte (menschliches Review):** die [Artefakt](artifacts.html)-Seiten dieses IG
- Ein Laufzeit-Verteilkanal steht auf der Roadmap: [Nationaler Fragebogenserver](national-questionnaire-server.html).
