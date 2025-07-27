---
parent: 
topic: Questionnaire
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire
---

## {{page-title}}

Dieses Profil beschreibt einen PROM-Fragebogen-Vorlage, die einen PROM-Fragebogen samt Fragen und Antwortmöglichkeiten definiert.

### Definition Antwortspektrum
Die Antwortmöglichkeiten können dabei entweder direkt explizit im Fragebogen hinterlegt werden, oder als externes ValueSet. Die konkrete Ausgestaltung hängt dabei vom konkreten Fragebogen ab. 
ValueSets sollten verwendet werden, wenn: 
1. das gleiche Antwortspektrum von mehreren Fragen innerhalb des gleichen Fragebogens benutzt wird, oder
2. das gleiche Antwortspektrum in mehreren Fragebögen verwendet wird. 


### Behaviours
Prinzipiell sollen die Fragebögen im Rahmen der MII als Mapping-Targets für die Harmonisierung dienen. Dafür ist eine minimale Definition ausreichend. 

Für weitere Anwendungsfälle ist es erforderlich, dass der Fragebogen erweitertes Verhalten aufweist. 
Dazu gehört das Einfügen von Anzeige- und Überspringugnslogik ("Collectable") und automatischer Scoreberechnung ("Calculatable"). Weiterhin besteht die Möglichkeit. Diese Fragebogen-Behaviours können durch das hinzufügen von elements und extensions erstellt werden, sind im Rahmen der MII aber als optional zu betrachten. 


Die Validität eines ausgefüllten Fragebogens kann in Abwesenheit einer Collectable-alternativ über fragebogenspezifische QuestionnaireResponse-Profile überprüft werden.  


- Minimal: kein Behaviour
- Displayable: Ergebnisse können angezeigt werden
    - AnswerOptions haben Display-Label
    - Items haben 
    - Label können mehrsprachig hinterlegt werden
- Collectable
    - optionale Groupers
    - hidden URL: http://hl7.org/fhir/StructureDefinition/questionnaire-hidden
    - required:  
    - repeat
    - readOnly
    - enableWhen
- Calculatable
    - calculated expression
    - hidden
    - itemWeight / ordinalValue 
- Extractable
    - extractContext     

- 



Die eigentlichen Daten eines Ausgefüllten Fragebogens sind in der QuestionnaireResponse


---

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-pro-questionnaire' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-pro-questionnaire'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-pro-questionnaire' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

Mapping Datensatz zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie'
    for differential.element where id.contains('TumorHistologiedatum') or id.contains('HistologieEinsendenummer')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen'  
    for differential.element
    where mapping.identity='oBDS'
    select 
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele: 

    ```GET [base]/Condition?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

**Beispiele**

{{json:mii-exa-onko-specimen-1}}

---
