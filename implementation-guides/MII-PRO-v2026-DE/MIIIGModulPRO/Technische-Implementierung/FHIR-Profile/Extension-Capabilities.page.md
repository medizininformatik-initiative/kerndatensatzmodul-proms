---
parent: 
topic: Extension-Capabilities
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities
expand: 4
---

## Extension: Questionnaire Capabilities

Um Fragebögen für unterschiedliche Verwendungsmöglichkeiten und Zwecke hinsichtlich der Erhebung, Verarbeitung und Anzeige zu definieren, bedarf es einer Möglichkeit zur Abbildung und Definition der damit einhergehenden Charakteristiken und Fähigkeiten (sog. *Capabilities*) eines Fragebogens. Mehr Details dazu sind auf der Seite {{pagelink:MIIIGModulPRO/Technische-Implementierung/Workflows.page.md}} zu finden.

Diese Extension definiert daher folgende Capabilities für einen Fragebogen: 

1. `displayable` (anzeigbar): Wie Daten/Ergebnisse **dargestellt** werden
2. `collectable` (erfassbar): Wie Daten von Nutzern **eingegeben** werden
3. `populatable` (vorausfüllbar): Wie existierende Daten **geladen** werden
4. `calculatable` (berechenbar): Wie Scores aus Daten **berechnet** werden
5. `extractable` (extrahierbar): Wie Daten aus dem Fragebogenformat in andere FHIR-Ressourcen **überführt** werden

Die definierten Capabilities können **einzeln oder in Kombination** verwendet werden, was vom jeweiligen konkreten Einsatzszenario abhängt. Die Capabilities werden als separate boolesche Sub-Extensions implementiert, was eine flexible Kombinationen ermöglicht, da mehrere Capabilities gleichzeitig aktiv sein können.

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities'
        select
            Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

### Beispiel (EQ-5D-5L)

Anhand des EQ-5D-5L-Fragebogens wird die Verwendung der Erweiterung nachfolgend demonstriert.

*Basis-Fragebogen mit Kernstruktur*

Zunächst erfolgt die Definition eines Basis-Fragebogens, der die grundlegenden Elemente beinhaltet und keine Capabilities aufweist:

```
Instance: mii-qst-pro-euroqol-eq5d5l-base
* url = ".../mii-qst-pro-euroqol-eq5d5l-base"
```

*Displayable-Variante, z.B. zur Ansicht im KIS*

Auf Grundlage des Basis-Fragebogens kann ein weiterführender Fragebogen zum Zweck der Anzeige in einem User Interface erstellt werden, wobei die notwendigen Erweiterungen zur korrekten Darstellung hinzukommen:

```
Instance: mii-qst-pro-euroqol-eq5d5l-displayable
* derivedFrom = ".../mii-qst-pro-euroqol-eq5d5l-base"
* extension[capabilities].valueCode = #displayable
```

*Collectable-Variante, z.B. für Patientendateneingabe*

Auf Grundlage des Basis-Fragebogens kann ein weiterführender Fragebogen zum Zweck der Datenerfassung erstellt werden, wobei die notwendigen Erweiterungen zur vollständigen Erfassung hinzukommen:

```
Instance: mii-qst-pro-euroqol-eq5d5l-collectable
* derivedFrom = ".../mii-qst-pro-euroqol-eq5d5l-base"
* extension[capabilities].valueCode = #collectable
// Enthält versteckte "Fehlender Wert"-Optionen
```

*Calculatable-Variante mit Scoring-Logik*

Auf Grundlage des Basis-Fragebogens kann ein weiterführender Fragebogen zum Zweck der Erfassung und Score-Berechnung erstellt werden, wobei die notwendigen Erweiterungen zur vollständigen Erfassung und die Berechnungsvorschriften hinzukommen:

```
Instance: mii-qst-pro-euroqol-eq5d5l-calculatable
* derivedFrom = ".../mii-qst-pro-euroqol-eq5d5l-base"
* extension[capabilities].valueCode = #calculatable
// Enthält FHIRPath-Ausdrücke für Index-, VAS-, Profil-Scores
```

#### Beispielhafte Einsatzszenarien

**Mobile Erfassung und Server-seitige Score-Berechnung**

1. Patient nutzt mobile App mit **Collectable**-Variante
2. QuestionnaireResponse wird an Server gesendet
3. Server nutzt **Calculatable**-Variante, vorausgefüllt mit Antwortdaten
4. Berechnete Scores werden als Observations gespeichert
5. Kliniker sieht Ergebnisse über **Displayable**-Variante

**Forschungsdatenerfassung und Einsatz von multiplen Scoring-Algorithmen**

1. Eine einzige **Collectable**-Variante über alle Studienzentren
2. Mehrere **Calculatable**-Varianten für verschiedene Scoring-Ansätze:
   - Standard-Scoring
   - Populationsspezifisches Scoring
   - Forschungsspezifische Algorithmen
3. Alle Berechnungen nutzen dieselben Quelldaten

**Historische Datenmigration**

1. Legacy-Daten als QuestionnaireResponses importiert
2. **Calculatable**-Varianten nachträglich angewendet
3. Standardisierte Scores für historische Vergleiche generiert

#### Definierte EQ-5D-5L Fragebogen-Varianten

<tabs>
    <tab title="EQ-5D-5L (displayable)"> 
        {{json:mii-qst-pro-euroqol-eq5d5l-displayable}}
    </tab>
    <tab title="EQ-5D-5L (collectable)"> 
        {{json:mii-qst-pro-euroqol-eq5d5l-collectable}}
    </tab>
    <tab title="EQ-5D-5L (calculatable)"> 
        {{json:mii-qst-pro-euroqol-eq5d5l-collectable}}
    </tab>
</tabs> 