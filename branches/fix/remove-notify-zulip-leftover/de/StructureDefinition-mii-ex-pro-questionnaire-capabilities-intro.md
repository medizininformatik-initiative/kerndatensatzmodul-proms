Um Fragebögen für unterschiedliche Verwendungsmöglichkeiten und Zwecke hinsichtlich der Erhebung, Verarbeitung und Anzeige zu definieren, bedarf es einer Möglichkeit zur Abbildung und Definition der damit einhergehenden Charakteristiken und Fähigkeiten (sog. *Capabilities*) eines Fragebogens. Mehr Details dazu sind auf der Seite [Questionnaire Capabilities](questionnaire-capabilities.html) zu finden.

Diese Extension definiert daher folgende Capabilities für einen Fragebogen:

1. `displayable` (anzeigbar): Wie Daten/Ergebnisse **dargestellt** werden
2. `collectable` (erfassbar): Wie Daten von Nutzern **eingegeben** werden
3. `populatable` (vorausfüllbar): Wie existierende Daten **geladen** werden
4. `calculatable` (berechenbar): Wie Scores aus Daten **berechnet** werden
5. `extractable` (extrahierbar): Wie Daten aus dem Fragebogenformat in andere FHIR-Ressourcen **überführt** werden

Die definierten Capabilities können **einzeln oder in Kombination** verwendet werden, was vom jeweiligen konkreten Einsatzszenario abhängt. Die Capabilities werden als separate boolesche Sub-Extensions implementiert, was flexible Kombinationen ermöglicht, da mehrere Capabilities gleichzeitig aktiv sein können.

**Beispiele** — der EQ-5D-5L zeigt, wie Capability-Kombinationen das Verhalten desselben Instruments verändern: die [collectable-Variante](Questionnaire-mii-qst-pro-euroqol-eq5d5l-collectable.html) zur Erfassung, die [displayable-Variante](Questionnaire-mii-qst-pro-euroqol-eq5d5l-displayable.html) zur Darstellung.
