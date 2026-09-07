# National Questionnaire Server (Concept 2027) - MII IG PRO v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **National Questionnaire Server (Concept 2027)**

## National Questionnaire Server (Concept 2027)

> **Status:** Konzept für das Arbeitsprogramm 2027. Nichts auf dieser Seite ist implementiert; sie beschreibt das Zielbild, auf das die Modul-Architektur hin gebaut wird, und die noch offenen Entscheidungen.

### Das Problem

Heute erreichen die Instrumente die Implementierenden ausschließlich **zur Build-Zeit**, als versioniertes FHIR-Package. Für Validierung und Reproduzierbarkeit ist das richtig — und für alles andere strukturell zu langsam: Ein korrigierter Item-Wortlaut, ein neu lizenziertes Instrument oder eine aktualisierte Antwortskala erreicht einen Renderer erst mit dem nächsten Package-Upgrade des Standorts. Jeder Standort klärt Lizenzen separat, jedes ePRO-System hält eigene Kopien, und niemand kann sagen, welche Fragebogenversion wo tatsächlich im Einsatz ist. Der Fragebogenkatalog (CodeSystem `mii-cs-pro-questionnaire-catalogue`) benennt die Instrumente — aber ein Namensregister ist kein Verteilkanal.

### Das Konzept

Ein **nationaler Fragebogenserver**: ein FHIR-Endpunkt, in der Rolle analog zum zentralen Terminologieserver, der die **definitorischen** Ressourcen des Moduls zur Laufzeit bereitstellt —

| | |
| :--- | :--- |
| Questionnaire | die Instrumente, jede publizierte Version, Capability-Varianten |
| CodeSystem / ValueSet | die Antwortskalen mit ihren ordinalen Gewichten |
| ObservationDefinition | Score-Definitionen inkl. Referenzintervallen |
| Library (CQL) | die maßgebliche Scoring-Logik (Kanal B) |
| ConceptMap | linkId-Brücken und später Score-Crosswalks |

Clients lösen über **Canonical URL und Version** auf (`Questionnaire?url=…&version=…`), entdecken über Katalogcode und Capability — genau dafür existieren die SearchParameter des Moduls (z. B. `mii-sp-pro-questionnaire-capabilities`) — und erhalten immer den aktuellen publizierten Stand. Das Package fällt nicht weg: Es bleibt der **reproduzierbare Schnappschuss** für Validierung und Archiv; der Server ist die **lebende Verteilung**.

### Was ein zentraler Server möglich macht

1. **Aktualität zur Laufzeit.**Ein Renderer holt den Fragebogen beim Öffnen des Formulars; Korrekturen verbreiten sich ohne Standort-Releasezyklen.
1. **Lizenzdurchsetzung an der Quelle.**Tier-B/C-Instrumente (metadata-only, lizenzpflichtig) lassen sich zugriffskontrolliert ausliefern: Metadaten öffentlich, Itemtexte hinter einer Autorisierung, die der Lizenzgeber erteilt — einmal zentral durchgesetzt statt an jedem Standort erhofft. Die WHODAS- und BDI-II-Situationen sind die konkreten Treiber.
1. **Ein Zuhause für den Scoring-Service.**Kanal B (`Library/$evaluate`) will dort leben, wo die Libraries liegen; die Kolokation macht aus dem Server statt einer Dateiablage den**maßgeblichen Scoring-Endpunkt**.
1. **Die CAT-Perspektive.**[Computer-adaptives Testen](cat.md)braucht einen Server, der Itembanken und IRT-Parameter hält und`$next-question`beantwortet — dieselbe Infrastruktur, eine Fähigkeit weiter.
1. **Transparenz im Feld.**Versionsaufgelöster Abruf macht „welche Version ist wo im Einsatz" zur beantwortbaren Frage — die Voraussetzung für gesteuerte linkId-Migrationen wie die des PHQ-9.

### Offene Entscheidungen

* **Betreiber und Governance:** Wer betreibt ihn (das Betriebsmodell des Terminologieservers ist die naheliegende Vorlage), wer publiziert (die Release-Pipeline dieses Moduls als einziger Schreibpfad), und wie erteilen Lizenzgeber Zugriff.
* **AuthN/AuthZ-Modell** für die geschützten Stufen (SMART Backend Services ist der natürliche Kandidat).
* **Verhältnis zu Registries:** Die Simplifier-Package-Registry behält die Packages; der Server liefert die Ressourcen. Ob der Server zusätzlich **föderiert** (Standorte spiegeln ihn) oder Single-Instance bleibt, ist offen.
* **Offline-Erfassung:** ePRO-Apps brauchen einen definierten Caching-Vertrag (wie lange darf ein geholter Fragebogen ohne Neuauflösung verwendet werden?).

### Woher die Aussagen dieser Seite kommen

Die hier benannten Bausteine existieren im Modul heute: der Katalog-CodeSystem, die Capability-SearchParameter, durchgängig versionierte Canonicals, CQL-Libraries für EQ-5D/PHQ-9/PRO-CTCAE und die Drei-Kanal-Scoring-Architektur, in die sich der Server einfügen würde. Was nicht existiert, ist der Server selbst — daher: Konzept, 2027.

