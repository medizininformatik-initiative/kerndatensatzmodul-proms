---
parent:
topic: ObservationDefinition
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint
---

## MII_PR_PRO_Score_Blueprint (Abstract)

### Beschreibung

Das abstrakte Score Blueprint Profil definiert die Struktur für ObservationDefinitions, die als Vorlagen für PRO-Scores dienen. Es beschreibt, welche Scores ein Instrument produziert, einschließlich Wertebereiche, Einheiten und Referenzbereiche. Konkrete Score-Definitionen (z.B. PHQ-9 Gesamtscore, EQ-5D-5L Index) müssen dieses abstrakte Profil erweitern.

**Kernelemente:**
- Code zur eindeutigen Score-Identifikation (typischerweise LOINC)
- QuantitativeDetails mit Einheiten und Wertebereichen
- QualifiedInterval für Referenzbereiche (z.B. klinische Cut-offs)
- Populationsspezifische Normwerte
- Health-Correlation Extension für Score-Interpretationsrichtung

---

### Konformität

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint'
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

### Suchparameter

@```
from CapabilityStatement
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CapabilityStatement/mii-cps-pro-capabilitystatement'
    for rest.resource
    where type = 'ObservationDefinition'
    select Suchparameter: searchParam.name, Typ: searchParam.type
```

---

### Beispiele

Konkrete ObservationDefinition-Instanzen, die von diesem abstrakten Profil erben:

{{json:mii-obsdef-pro-score-bdi-ii}}
