# Guidance for ePRO Systems - MII IG PRO v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Guidance for ePRO Systems**

## Guidance for ePRO Systems

Hinweise für **Hersteller von ePRO-Systemen**: Patienten-Apps und -Portale, Formular-Renderer und Formularserver, die Fragebögen des PRO-Moduls anfordern, verschicken und erheben. Datenintegrationszentren (DIZ), die die Ergebnisse übernehmen und transformieren, haben eine eigene Seite: [Hinweise für Implementierende](implementer-guidance.md).

> **Hinweis zum Status:** Der unten beschriebene Erhebungsablauf (ServiceRequest, Task, Communication) ist ein **empfohlenes Muster**; das Modul profiliert diese Ressourcen nicht. Was das Modul verlangt, steht als Regel da und wird von den [Profilen](profiles.md) für QuestionnaireResponse und Score-Observation durchgesetzt. Rückmeldungen zum Muster sind willkommen.

### Rolle Ihres Systems

| | | | |
| :--- | :--- | :--- | :--- |
| **Formularserver / Versandsystem** | Questionnaire, Erhebungsplan, auslösende Ereignisse | ServiceRequest, Task, Communication; leitet QuestionnaireResponses weiter | [Erhebungsablauf](#collection-lifecycle),[Erhebungskontext](workflows.md#collection-context) |
| **ePRO-App / Patientenportal** | Task, Questionnaire | QuestionnaireResponse, Task-Status | [Was eine QuestionnaireResponse tragen muss](#questionnaireresponse),[Capabilities](questionnaire-capabilities.md) |
| **Eingebetteter Formular-Renderer** | Questionnaire (SDC) | QuestionnaireResponse | [Umgang mit Fragebögen](#questionnaires),[Scoring](scoring.md)(Kanal A) |
| **Scoring-Service** | QuestionnaireResponse | Score-Observation | [Scores](#scores),[Scoring](scoring.md)(Kanal B, CQL) |

### Erhebungsablauf

Eine Erhebung durchläuft Plan, Anforderung, Ausführung, Benachrichtigung und Ergebnis. Jeder Schritt hat seine eigene FHIR-Ressource; die QuestionnaireResponse verweist zurück auf die Anforderung.

| | | |
| :--- | :--- | :--- |
| Plan | CarePlan (Patient), PlanDefinition (Studienprotokoll) | alle Zeitpunkte einer Messreihe |
| Anforderung pro Zeitpunkt | ServiceRequest | welches Instrument (`code`, z. B. Code aus dem Fragebogen-Katalog oder LOINC-Panel), Soll-Fenster (`occurrencePeriod`), auslösendes Ereignis (`reasonReference`auf Encounter oder Procedure), Plan (`basedOn`) |
| Ausführung | Task | `basedOn`der ServiceRequest,`for`und`owner`die Patientin oder der Patient (oder eine Vertretung), Fälligkeitsfenster in`restriction.period`, der Questionnaire als versionierte Canonical in`input`, die QuestionnaireResponse in`output`; Status`requested`→`in-progress`→`completed`, oder`cancelled`/`failed` |
| Benachrichtigung | Communication | eine einzelne Einladung oder Erinnerung,`basedOn`der ServiceRequest |
| Ergebnis | QuestionnaireResponse | `basedOn`der ServiceRequest, siehe unten |

Drei Zeitpunkte haben je ihren eigenen Platz und werden nicht vermischt: das **auslösende Ereignis** (Entlassung, OP: am ServiceRequest und im Erhebungskontext), der **Versand** (Communication `sent`) und das **Ausfüllen** (`QuestionnaireResponse.authored`). Rücklaufquoten und Erinnerungen werden über Task und Communication ausgewertet, Messreihen nur über das auslösende Ereignis.

In R4 erlaubt `QuestionnaireResponse.basedOn` nur CarePlan und ServiceRequest. Eine Task verweist über `output` auf ihre QuestionnaireResponse, nicht umgekehrt.

### Was eine QuestionnaireResponse tragen muss

Das [QuestionnaireResponse-Profil](StructureDefinition-mii-pr-pro-questionnaire-response.md) ist der Vertrag zwischen Ihrem System und allen nachgelagerten Systemen. Zu befüllen sind:

* **`questionnaire`** als versionierte Canonical (`…/Questionnaire/mii-qst-pro-phq-9|<version>`). Die Version entscheidet, welche Antwortskalen und Gewichte gelten.
* **`status`** `completed` (oder `amended` nach einer Korrektur), **`authored`** als Zeitpunkt des Ausfüllens, **`subject`**.
* **`language`** sowie Itemtexte und Antwort-Displays **so, wie sie angezeigt wurden**, mit der `translation`-Extension, wenn das Formular in einer zweiten Sprache dargestellt wurde.
* **`basedOn`** der ServiceRequest (oder CarePlan), wenn die Erhebung angefordert wurde.
* **`encounter`** nur, wenn die Erhebung während dieses Kontakts stattfand. Ein Follow-up drei Monate nach Entlassung verweist nicht auf den Entlass-Encounter; das gehört in den Erhebungskontext.
* **Erhebungskontext** (Extension [Collection Context](StructureDefinition-mii-ex-pro-collection-context.md)): der Trigger-Typ, in einer Studie die Protokollposition. Ihr System setzt ihn aus dem ServiceRequest oder dem Launch-Context, nie die Patientin oder der Patient. Regeln und Beispiele: [Workflows › Erhebungskontext](workflows.md#collection-context).

### Umgang mit Fragebögen

* **Eine feste Version laden**, aus dem Package, und sie mit jeder Antwort festhalten. Einen publizierten Questionnaire nicht verändern; eine lokale Variante ist eine neue Ressource mit `derivedFrom`.
* **Die Capabilities-Extension beachten.** Instrumente, deren Lizenz die Anzeige verbietet (z. B. BDI-II), tragen keine Displayable-Capability; ihre Itemtexte darzustellen ist eine Lizenzverletzung. Siehe [Questionnaire-Capabilities](questionnaire-capabilities.md).
* **linkIds und Antwortcodes beibehalten.** linkIds sind instrumentenübergreifend kanonisch; Antworten tragen `system` und `code` der gebundenen Skala, nie nackte Integer.
* **Die `translation`-Extension nutzen**, um den deutschen Wortlaut darzustellen; die englischsprachige Primärressource bleibt maßgeblich.
* **Scoring-Gewichte** sind SDC-`itemWeight`-Werte, gelesen mit der FHIRPath-Funktion `.weight()`; siehe [Scoring](scoring.md).

### Scores

* Ein im Formular berechneter Score (Kanal A, `calculatedExpression`) ist ein **vorläufiger** Anzeigewert. Die maßgebliche Score-Observation kommt vom Scoring-Service (Kanal B); siehe die Medizinprodukte-Abgrenzung auf der [Scoring](scoring.md)-Seite.
* Eine Score-Observation verweist in `derivedFrom` auf ihre QuestionnaireResponse und **übernimmt deren Erhebungskontext**.

### Übergabe an das Datenintegrationszentrum

Task, ServiceRequest und Communication bleiben meist im klinischen oder ePRO-System und erreichen das DIZ nicht. Alles, was eine spätere Auswertung braucht, muss deshalb an der QuestionnaireResponse und den Score-Observations selbst stehen: versionierter Fragebogen, Erhebungskontext, `authored`, `language`, `subject`. Die DIZ-Seite beschreiben die [Hinweise für Implementierende](implementer-guidance.md).

### Bezug der Artefakte

* **Package (Build-Zeit, reproduzierbar):** `fhir install de.medizininformatikinitiative.kerndatensatz.pros@<version>`
* **Gerenderte Artefakte (menschliches Review):** die [Artefakt](artifacts.md)-Seiten dieses IG
* Ein Laufzeit-Verteilkanal für Fragebögen steht auf der Roadmap: [Nationaler Fragebogenserver](national-questionnaire-server.md).

