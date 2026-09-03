# Profiles - MII IG PRO v2026.7.0

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

### Abstrakte Profile

Das MII PRO Modul definiert abstrakte Profile, die als Basis für alle PRO-Implementierungen dienen. Diese Profile sind als `abstract = true` markiert und sollen nicht direkt instanziiert werden. Sie etablieren die gemeinsamen Strukturen und Verhaltensweisen, die von spezifischen Instrumenten-Profilen erweitert werden müssen. Die beiden Profile für Questionnaire und QuestionnaireResponse erben dabei von der SDC-Spezifikation, während die beiden Score-Profile für Observation und ObservationDefinition direkt von der FHIR-Spezifikation erben.

### Warum abstrakte Profile?

Abstrakte Profile stellen sicher, dass gemeinsame Strukturen konsistent über alle Implementierungen verwendet werden, während sie gleichzeitig verhindern, dass unvollständige oder generische Instanzen erstellt werden. Jedes PRO-Instrument muss ein konkretes Profil definieren, das von diesen abstrakten Profilen erbt und die instrument-spezifischen Details hinzufügt.

### Übersicht

| | | | |
| :--- | :--- | :--- | :--- |
| [MII_PR_PRO_Questionnaire](StructureDefinition-mii-pr-pro-questionnaire.md) | Questionnaire | SDC Questionnaire | Grundlage für alle PRO-Fragebögen |
| [MII_PR_PRO_QuestionnaireResponse](StructureDefinition-mii-pr-pro-questionnaire-response.md) | QuestionnaireResponse | SDC QuestionnaireResponse | Struktur ausgefüllter Fragebögen |
| [MII_PR_PRO_Score_Blueprint](StructureDefinition-mii-pr-pro-score-blueprint.md) | ObservationDefinition | FHIR R4 | Vorlagen für PRO-Score-Definitionen |
| [MII_PR_PRO_Score_Instance](StructureDefinition-mii-pr-pro-score-instance.md) | Observation | FHIR R4 | Konkrete Score-Observations |

### Vererbungshierarchie

Die abstrakten Profile bilden die Basis einer klaren Vererbungshierarchie:

![](Abstract_Profiles.png)

### Implementierungsregeln

Da diese Profile als abstrakt markiert sind, gelten folgende Regeln:

1. **Keine direkte Instanziierung**: FHIR-Server sollten die Erstellung von Ressourcen ablehnen, die direkt auf abstrakte Profile verweisen
1. **Vererbung erforderlich**: Jedes PRO-Instrument muss konkrete Profile definieren, die von den abstrakten Profilen erben
1. **Vollständige Spezifikation**: Konkrete Profile müssen alle abstrakten Elemente mit konkreten Werten oder Constraints versehen
1. **Validierung**: Validatoren prüfen, dass Instanzen nur konkrete Profile referenzieren

### Vorteile der abstrakten Profile

Die Verwendung abstrakter Profile bietet mehrere Vorteile für das MII PRO Modul:

* **Konsistenz**: Alle PRO-Implementierungen folgen derselben Grundstruktur
* **Typsicherheit**: Verhindert die Erstellung unvollständiger generischer Instanzen
* **Wartbarkeit**: Änderungen an gemeinsamen Strukturen erfolgen zentral in den abstrakten Profilen
* **Klarheit**: Deutliche Trennung zwischen Basis-Infrastruktur und konkreten Implementierungen
* **Interoperabilität**: Generische Verarbeitung möglich durch gemeinsame abstrakte Basis

### Migration bestehender Implementierungen

Bestehende Implementierungen, die die Profile bereits nutzen, müssen angepasst werden:

1. Die abstrakten Profile selbst werden mit`abstract = true`markiert
1. Konkrete Instrument-Profile bleiben unverändert (erben bereits von den abstrakten Profilen)
1. Instanzen müssen auf konkrete Profile verweisen, nicht auf die abstrakten
1. Validierung sollte aktualisiert werden, um abstract-Constraint zu prüfen

