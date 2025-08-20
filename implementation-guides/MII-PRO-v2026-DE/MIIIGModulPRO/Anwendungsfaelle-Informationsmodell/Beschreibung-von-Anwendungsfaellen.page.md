---
topic: Beschreibung-von-Anwendungsfaellen
---
## {{page-title}}

### Allgemeine Betrachtungen

Klassischerweise werden Fragebögen auf Papier ausgefüllt. Das führt dazu, dass die Fragebogendefinition (welche Fragen, welche Antworten möglich etc.) und die Fragebogenantworten (welche Antworten ein Patient zu einem bestimmten Anlass konkret ausgewählt hat) direkt innerhalb des gleichen Dokuments vorliegen. In elektronischer Form hingegen benötigt man nur eine einzige digitale Vorlage, auf die ausgefüllte Fragebögen dann verweisen können. Zusätzliche Versionen sind lediglich für bspw. Versionierung und ggfs. Sprachanpassungen notwendig.  

Diese Aufspaltung zwischen Vorlage und ausgefüllte Antwort findet sich auch in der aktuellen FHIR-Spezifikation wieder, wo zwischen Questionnaires und QuestionnaireResponse unterschieden wird.  

Dieser Modellierungsunterschied scheint hier profan, bringt aber einige Besonderheiten mit sich, die am Ende noch einmal aufgegriffen werden.  

Ähnlich verhält es sich mit der Berechnung von Scores auf Basis der gegebenen Antworten. Die meisten Papierfragebögen enthalten Felder für die berechneten Scores.  

Art-Decor wurde genutzt, um eine grundsätzliche Modellierung des Datensatzes zu erreichen. In einem weiteren Schritt wurden UML-Diagramme erstellt und um weitere relevante Datenpunkte ergänzt. *Achtung: Die Darstellung von verschiedenen Sprachen in einem Fragebogen ist derzeit nicht im Informationsmodell enthalten.*

Das Erweiterungsmodul "PROs, PROMs und abgeleitete Metriken" bezieht sich auf die Verwendung von PROs und PROMs im Forschungskontext. Wir freuen uns, mit unserer Spezifikationen Vorarbeiten für eine Erhebung und Austausch von PROM-Daten in der breiten Versorgungspraxis zu ermöglichen. Dabei ist jedoch zu beachten, dass die Berechnung von Scores in Software dem europäischen Medizinproduktgesetz MDR unterliegen können.

### Use Case 1: Praktische Erfassung von ePROMs mit FHIR-Questionnaires im Forschungskontext 
 
Ein Patient (Herr Hauff) berichtet beim Hausarzt von wiederkehrenden Angst – und Panikattacken und wird daraufhin zur weiteren Diagnostik an eine Psychosomatische Klinik überwiesen. Die behandelnde Ärztin Dr. Schmidt bereitet das Aufnahmegespräch vor. Herr Hauff erfüllt die Kriterien zum Einschluss in eine Studie mit Fokus auf digitaler Erfassung von Symptomen, und gibt seine Einwilligung zur Teilnahme. In Vorbereitung des Gesprächs soll Herr Hauff in einem Untersuchungsraum auf einem Tablet einen ePROM ausfüllen, dessen Ergebnisse dann im Gespräch ausgewertet und besprochen werden. Als ePROM wurde sich für den PHQ-9 entschieden, der und Depressionssymptomatik erfasst. Dr. Schmidt wählt über eine Schaltfläche im KIS aus, dass der PHQ-9-Fragebogen Untersuchungsraum 3 abgefragt werden soll. Das KIS informiert das ePROM-System, dass der PHQ-9 abgefragt werden soll. Da dieser vor Ort häufig zum Einsatz kommt, ist die Fragebogendefinition schon lokal vorhanden und kann direkt an das Tablet in Raum 3 übertragen werden, dass diesen Fragebogen rendern kann und ausfüllbar macht.  
 
Herr Hauff nimmt in Untersuchungsraum 3 an einem Tisch mit Tablet Platz, bestätigt seine Identität mit seinem Geburtsdatum. Anschließend beantwortet er neben einigen Anamnese- und soziodemographischen Fragen den PHQ-9, was ca. 5 Minuten dauert. Er schließt den Fragebogen ab. Der ausgefüllte Fragebogen wird zurück an das ePROM-System gespielt. Hier werden aus den beantworteten Fragen die Scores berechnet. Anschließend werden sowohl die Fragen als auch die Antworten innerhalb des KIS gerendert und dargestellt. Während des Gesprächs können die Scores und Antworten von Patient und Ärztin eingesehen und besprochen werden.  
Herr Hauff zeigt einen erhöhten Wert im PHQ-9  (12 Punkte )Punkte) , was im folgenden strukturierten Interview aufgegriffen wird. Am Ende des mehrtägigen Aufenthalts, bei dem weitere diagnostische und therapeutische Maßnahmen durchgeführt werden, erhält Herr Hauff einen Entlassbericht, in dem die erfassten Instrumente sowie Scores und Interpretation enthalten und für Patienten und nachbehandelnde Ärzte angemessen dargestellt wird. 


Das vorliegende Beispiel soll die Datenwege von PROMs zur Verwendung in der Primärversorgung zeigen. Die erhobenen Daten können darüber hinaus für Forschung genutzt werden. 

![Use Case 1](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/main/out/input/Images/Sequence_Diagram_UseCase_1/UseCase%201%20%20ePRO%20Collection.png?raw=true "Bild 1")


#### Anforderungen an ein PROM-Modul 

- Eine Fragebogendefinition als Vorlage 
- Eine Definition eines ausgefüllten Fragebogen  
- Eine Scorebezeichnung und -berechnungslogik für jeden Score 
- Optional: Technische Spezifikation von Anzeige- und Darstellung 
- Optional: Eine formal strukturierte Einordnung des Scores zur Interpretation 

---

#### Use Case 2: Standortinterne Aufbereitung von erfassten Daten in einem Datenintegrationszentrum  

Ein zweites Beispiel soll den Use Case der Primärforschung mit PROM-Daten deutlichE machen.  

Dr. Schmidt hat in der Vergangenheit bereits in mehreren Forschungsprojekten mit dem PHQ-9 gearbeitet.  Es liegen umfangreiche PHQ-9-Daten zum Aufnahme- und Entlasszeitpunkt im KIS vor. Außerdem wurden in der Vergangenheit für mehrere Studien PHQ-9-Daten mit REDCap erhoben.  
Frau Dirsch arbeitet im Datenintegrationszentrum und bekommt von Dr. Schmidt den Auftrag, die Daten zusammenführen und gemeinsam mit den neuen, im Use Case 1 beschriebenen, auf FHIR basierten Studiendaten zu harmonisieren und auswertbar zu machen.  

![Use Case 2](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/main/out/input/Images/Sequence_Diagram_UseCase_2/UseCase%202%20%20local%20harmonization.png?raw=true "Bild 2")

#### Anforderungen an PROM-Modul:  

- Öffentlich verfügbare Fragebogenvorlage (des PHQ-9) als Mapping-Target 
- Mapping der ausgefüllten Antworten vom Source-Format ( entweder als selbstgebaute ETL-Strecke beim NonFHIR-to-FHIR-Mapping, oder über FHIR Structure Map bei FHIR-to-FHIR-Mapping)  
- Optional: Neuberechnung der Scores aus Konsistenz- / Validierungsgründen 

---
 
### Use Case 3 Standortübergreifende Aufbereitung von erfassten Daten in einem Datenintegrationszentrum
Dr. Schmidt betreut ein Forschungsprojekt zum Thema “Depressive Erkrankungen und Burnout im Home-Office” und setzt dabei neben anderen Fragebögen ebenfalls den PHQ-9 ein. Dabei arbeitet sie innerhalb eines Verbunds aus Krankenhäusern, die alle den PHQ-9, aber unterschiedliche ePROM-Systeme benutzen. Auch hier soll eine harmonisierte Bereitstellung über die Datenintegrationszentren erfolgen.  


![Use Case 3](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/main/out/input/Images/Sequence_Diagram_UseCase_3/UseCase3%20%20interhospital%20harmonization.png?raw=true "Bild 3")

#### Anforderung an PROM-Modul:  

- Standardisierte Zielspezifikation eines PHQ-9-Fragebogens inkl. Scores 
- Harmonisierung von Fragebogenantworten mit lokal unterschiedlichen Codes 
- Bereitstellung eines Mappings von lokalen zu global standardisierten Fragen- und Antwortcodes 
- Optional:  Neuberechnung / Validierung der berechneten Scores vor zentraler Auswertung 

---

### Use Case 4:  Sekundärdatenforschung mit PROMs  

Dr. Claussen ist ein Clinical Researcher und forscht an Sekundärdatennutzung zu Depression. Er nutzt dafür verteilte Analysen mit dem Forschungsportal für Gesundheit der Medizininformatik-Initiative.  

In ersten  explorativen Anfragen hatte sich gezeigt, dass an verschiedenen Standorten verschiedene PROMs zum Einsatz kommen. Zusätzlich erschwert wird dieses Problem, dass nicht bei allen Indikationen die gleichen PROMs zum Einsatz kommen. Durch umfassende Vorarbeiten und die Definition von Referenzpopulationen ist es Dr. Claussen jedoch möglich, die vorhandenen PROM-Scores mittels Mapping auf vordefinierte Domänen vergleichbar zu machen. Dabei gibt es zwei verschiedene Ansätze: Beim Score-based Mapping wird der Score umgerechnet (z.B. mit einer Lookup Table) ; beim komplexeren item-based Mapping wird stattdessen eine Berechnung des Domänenscores auf Basis der ausgefüllten Antworten vorgenommen 

![Use Case 4](https://github.com/medizininformatik-initiative/kerndatensatzmodul-proms/blob/main/out/input/Images/Sequence_Diagram_UseCase_4/UseCase%204%20%20cross-domain%20harmonization.png?raw=true "Bild 4")

#### Anforderungen an PROM-Modul:  

- Technische Spezifikation einer Vorlage für übergeordnete Domänen und Skalen 
- Inhaltliche und technische Spezifikation von einzelnen Domänen 
- Verknüpfungen und Mappings von einzelnen berechneten Scores zu Domänen 
- Verknüpfung und Mappings von ausgefüllten Fragebögen zu Domänen 
- Berechnung von Domänen-Scores an den Standorten 
- Governance zur Erschließung neuer Domänen 