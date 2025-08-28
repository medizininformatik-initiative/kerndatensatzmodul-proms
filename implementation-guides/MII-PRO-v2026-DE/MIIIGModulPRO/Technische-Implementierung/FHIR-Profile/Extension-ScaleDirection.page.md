---
parent: 
topic: Extension-ScaleDirection  
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-score-health-correlation
---

## Extension: Score Health Correlation

Extension zur Angabe der Interpretationsrichtung eines Scores (höhere Werte = bessere/schlechtere Gesundheit). Diese Extension verwendet das HL7-Value Set. 

### Beispiele
Beim PHQ-9 ist das "gesunde" Ende der Skala 0 Punkte, das "pathologische" Ende der Skala 27, daher hat der PHQ-9-Score den "increase" Wert -> positive Korrelation von 
Der EORTC QLQ-C30 

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree:mii-ex-pro-score-health-correlation}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-score-health-correlation'
        select
            Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-score-health-correlation' 
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