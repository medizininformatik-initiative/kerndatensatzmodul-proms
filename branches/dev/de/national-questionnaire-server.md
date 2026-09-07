# National Questionnaire Server (Concept 2027) - MII IG PRO v2027.0.0-ballot.rc2

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

### Architekturskizze — und ein funktionierendes Prototypen-Paar

Das Konzept ist nicht nur Papier: Zwei BIH-CEI-Prototyp-Repositories implementieren den Schichtenschnitt für den PHQ-9 bereits Ende-zu-Ende — [`pro-library`](https://github.com/BIH-CEI/pro-library) (die Inhaltsschicht) und [`fhir-sdc-questionnaire-service`](https://github.com/BIH-CEI/fhir-sdc-questionnaire-service) (die Diensteschicht, ein SDC-**Form-Manager**).

```
flowchart TB
    subgraph N["Normative Schicht — dieses Modul"]
        IG["MII PRO IG + versioniertes Package<br/>(reproduzierbarer Schnappschuss)"]
    end
    subgraph C["Inhaltsschicht — Prototyp: pro-library"]
        LIB["FSH-Artefakte<br/>Questionnaires · ValueSets · CodeSystems · CQL"]
        MAN["CRMI-Manifest<br/>(Library, type asset-collection —<br/>pinnt jede Artefaktversion)"]
        LIB --- MAN
    end
    subgraph S["Diensteschicht — Prototyp: fhir-sdc-questionnaire-service"]
        FM["SDC-Form-Manager-Container<br/>HAPI FHIR + SDC-IG + MII-PRO-IG eingebacken<br/>$package · $populate · $extract · $localize<br/>validiert gegen das SDC-Form-Manager-CapabilityStatement"]
    end
    subgraph K["Clients"]
        R["Formular-Renderer / ePRO-App"]
        E["KIS / Primärsystem"]
        SC["Scoring-Service<br/>(Kanal B, Library/$evaluate)"]
    end
    IG -- "derivedFrom, versionierte Canonicals (…|version)" --> LIB
    MAN -- "Release = gepinntes Manifest" --> FM
    R -- "$package (Formular + Abhängigkeiten)" --> FM
    E -- "Auflösung per canonical|version" --> FM
    FM -- "Libraries kolokalisiert" --> SC

```

Die Arbeitsteilung ist genau die oben begründete: Das **Package bleibt der reproduzierbare Schnappschuss** (normative Schicht), das **Inhaltsrepository** trägt die Artefakte mit einem CRMI-Asset-Collection-Manifest als Release-Primitiv, und der **Form-Manager** ist der Laufzeit-Endpunkt — mit den SDC-Operationen, die ein Renderer tatsächlich aufruft. Die Prototypen beanspruchen bewusst keine normative Autorität; sie bauen die Infrastruktur, die eine künftige Autorität betreiben würde.

### Warum ein Terminologieserver diese Rolle nicht erfüllt

Der Terminologieserver ist die Analogie für das **Betriebsmodell** (zentral, governed, national erreichbar) — nicht für die Funktion. Ein FHIR-Terminologieserver liefert CodeSystems und ValueSets und beantwortet `$expand` und `$validate-code`; dort endet sein Vertrag. Was der Fragebogenserver braucht, ist genau das, was ein Terminologieserver nicht tut:

* Er liefert keine **Questionnaires** (auch keine ObservationDefinitions, ConceptMaps oder CQL-Libraries) als versionierte, auffindbare Artefakte,
* er implementiert keine **SDC-Operationen** — kein `$package`, kein `$populate`, kein `$extract`, kein `$next-question`,
* er kennt keine **capability- oder lizenzgesteuerte** Artefaktausgabe,
* und er ist kein Zuhause für **`Library/$evaluate`**-Scoring.

Beide Server sind Komplemente, keine Alternativen: Der Form-Manager löst seine Antwortskalen-ValueSets **gegen** den Terminologieserver auf, und beide sitzen im selben Vertrauens- und Betriebsmodell.

### Offene Entscheidungen

* **Betreiber und Governance:** Wer betreibt ihn (das Betriebsmodell des Terminologieservers ist die naheliegende Vorlage), wer publiziert (die Release-Pipeline dieses Moduls als einziger Schreibpfad), und wie erteilen Lizenzgeber Zugriff.
* **AuthN/AuthZ-Modell** für die geschützten Stufen (SMART Backend Services ist der natürliche Kandidat).
* **Verhältnis zu Registries:** Die Simplifier-Package-Registry behält die Packages; der Server liefert die Ressourcen. Ob der Server zusätzlich **föderiert** (Standorte spiegeln ihn) oder Single-Instance bleibt, ist offen.
* **Offline-Erfassung:** ePRO-Apps brauchen einen definierten Caching-Vertrag (wie lange darf ein geholter Fragebogen ohne Neuauflösung verwendet werden?).

### Woher die Aussagen dieser Seite kommen

Die hier benannten Bausteine existieren im Modul heute: der Katalog-CodeSystem, die Capability-SearchParameter, durchgängig versionierte Canonicals, CQL-Libraries für EQ-5D/PHQ-9/PRO-CTCAE und die Drei-Kanal-Scoring-Architektur, in die sich der Server einfügen würde. Was nicht existiert, ist der Server selbst — daher: Konzept, 2027.

