# Computer-Adaptive Testing (CAT) - MII IG PRO v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Computer-Adaptive Testing (CAT)**

## Computer-Adaptive Testing (CAT)

### Was CAT ist

**Computer-adaptives Testen (CAT)** wählt die nächste Frage während der Erhebung aus, abhängig von den bereits gegebenen Antworten. Ein IRT-Modell (Item-Response-Theorie) schätzt nach jeder Antwort den latenten Merkmalswert der antwortenden Person und wählt aus einer **Itembank** das Item, das an der aktuellen Schätzung am informativsten ist. Die Erhebung endet, sobald die Schätzung präzise genug ist — typischerweise nach 4–8 Items statt fester 20–30, bei vergleichbarer Messpräzision.

Für PRO-Instrumente zählt das doppelt: Die Belastung der Patientinnen und Patienten sinkt deutlich (entscheidend für wiederholte Messung in der Versorgungsroutine), und die Scores bleiben auf derselben T-Score-Metrik wie die festen Kurzformen — ein PROMIS-Depressions-CAT und die [PROMIS Depression SF 4a](promis-depression.md) messen dasselbe Konstrukt auf derselben Skala.

### Warum CAT inhärent serverseitig ist

CAT passt nicht in den clientseitigen Scoring-Kanal ([Scoring](scoring.md), Kanal A): Das nächste Item lässt sich nicht in einen statischen Questionnaire vorausberechnen, weil es von der laufenden Merkmalsschätzung abhängt. Itemauswahl und Scoring liegen deshalb auf einem Server (Kanal B), und der Formular-Client wird zur schlanken Schleife: Item anzeigen → Antwort senden → nächstes Item empfangen.

FHIR SDC modelliert genau diese Schleife als **Adaptive Forms**: Der Client ruft wiederholt die Operation `$next-question` mit der bisher gesammelten QuestionnaireResponse auf, und der Server liefert sie mit den nächsten Items zurück, angehängt an einen contained, wachsenden Questionnaire. Das Ergebnis eines abgeschlossenen CAT ist damit eine normale **QuestionnaireResponse** — sie läuft durch dieselbe Extraktions- und Score-Observation-Pipeline wie jeder feste Fragebogen dieses Moduls.

### Was das Modul heute schon mitbringt

CAT ist in der aktuellen Version nicht implementiert. Die architektonischen Grundlagen sind aber bewusst gelegt:

* **Kanonische Item-Identitäten.** Die [ID-Systematik](id-systematics.md) gibt jedem Item einen stabilen, instrumentenunabhängigen linkId (z. B. den PHQ-D-Block-Namespace, den PHQ-9, PHQ-15 und GAD-7 teilen). Eine Itembank ist genau das: Items mit Identität unabhängig von jedem festen Fragebogen.
* **Antwortgewichte auf Item-Ebene.** Die ordinalen Gewichte hängen an den Antwortcodes, nicht an Fragebogenpositionen — ein adaptiv gewähltes Teilset bleibt scorebar.
* **Serverseitiger Scoring-Kanal.** Die [Drei-Kanal-Scoring-Architektur](scoring.md) führt die autoritative Berechnung bereits über den Server (`Library/$evaluate`, CQL) — denselben Ort, an dem eine CAT-Engine liegen würde.
* **T-Score-Infrastruktur.** Die PROMIS-Implementierungen tragen Rohwert→T-Score-Konversion und ObservationDefinitions auf der T-Score-Metrik — der gemeinsamen Währung, in der CAT-Ergebnisse berichtet werden.

### Was bewusst noch nicht entschieden ist

* **Die CAT-Engine selbst.** IRT-Parameter-Hosting, Itemauswahl und Abbruchregeln sind die Domäne spezialisierter Dienste (z. B. der PROMIS Assessment Center API). Ob das MII-Modul einen solchen Dienst anbindet oder die SDC-Adaptive-Forms-Operationen selbst profiliert, ist eine Architekturentscheidung für 2027+.
* **Lizenzierung.** CAT braucht die vollständige Itembank mit IRT-Parametern — ein wesentlich anderer Lizenzumfang als eine feste Kurzform (für PROMIS: Nutzungsanfrage via CPCOR, siehe [PROMIS-Lizenzierung](promis.md)).
* **Score-Provenienz.** Ein CAT-Score entsteht aus einem variablen Itemset; wie die Observation dokumentiert, welche Items und welche Parameterversion ihn erzeugt haben, gehört zur Item-basierten-Architektur-Arbeit der [Roadmap](module-description.md).

### Roadmap

Die CAT-Unterstützungsinfrastruktur steht in der Modul-Roadmap für **2027** als Teil der item-basierten Architektur (item-zentrierte Score-Berechnung, modulare Fragebögen, CAT) — nach der CQL-Scoring-Migration, auf der sie aufbaut.

