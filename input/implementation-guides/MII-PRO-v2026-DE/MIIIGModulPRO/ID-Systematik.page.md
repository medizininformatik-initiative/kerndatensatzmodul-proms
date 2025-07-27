## {{page-title}}

Ein wichtiges Untefangen bei der Darstellung von PRO-Daten ist eine saubere Systematik der Identifier. 

Identifier sind explizit als MII-interne Business Identifier zu verstehen und nicht zu verwechseln mit dem code von Fragebögen und Fragbogen-Items, die einer semantischen Annotation in offenen Terminologien gleichzusetzen sind. Identifier werden an fünf Stellen gebraucht: 

1. zur genauen Identifizierung eines einzelnen Fragebogens (z.B. PHQ-9)
1. Zur genauen Identifikation einer Gruppe von Fragen (z.B. PROMIS-29 - Physical Function 4a-Frageblock)
1. Zur genauen Identifikation eines einzelnen Fragen (z.B. EQ-5D-5L Mobility)
1. Zur genauen Idenfitikation einer speziellen Auswahlmöglichkeit einer Auswahlfragen-Antwortlistenmöglichkeiten (z.B. 0: Keine Schmerzen)
1. zur genauen Identifizierung einer Fragebogen-Score-Vorlage (z.B. EQ-5D-VAS-Score) 
1. zur genauen Identifizierung einer Domäne 



## Datei- und Ressourcenbenennung

In der MII hat sich auf Artefakt / Dateiebene) folgendes Benennungsschema für die Artefakte bewährt

mii-[1]-[2]-[3]

1 : der Typ des Artefakts (z.B. pr für profil, exa für example, cs für CodeSystem und VS für ValueSet)
2: Modulabkürzung
3: nähere Beschreibung

Für das Modul PRO und die Verwendung von neuen FHIR-Ressourcen schlagen wir daher für Dateinamen und Ressourcenfolgende Abkürzungen vor

1. mii-qst-pro-* für FragebogenVor-lagen qst = Questionaire
2. mii-qr-pro-* Für FragebogenAntworten qr = QuestionnaireResponse
3. mii-pr-pro-eq5d5l-vas-score
4. mii-obsdef-pro-eq5d5l-vas-score für ObservationDefinitions

## Namespaces
Bei der ID-Erstellung soll auf gehashte Strings nach Möglichkeit verzichtet werden und stattdessen eine menschenlesbare Repräsentation gewählt werden. 

Negativbeispiel: 
* PHQ-9
* PHQ_9
* phq-9
* phq9
Um eine konsequente Systematik zu ermöglichen, sollen die Namen von Organsiationen und PRO-Abkürzungen nach Möglichkeit vereinheitlicht werden. 



Da die PROM-Instrumenteabkürzungen nicht eindeutig sind und in verschiedenen Fachgebieten Fragebögen mit der gel

1. Vorliegen von mehreren PROMs einer einzigen Organisation
1. Vorliegen von verschiedenen Major-Versionen eines Fragebogens
1. Vorliegen von verschiedenen Versionen für Eltern / Kinder (Parent Proxy)
1. Vorliegen von mehreren altersgerecht variierten Fragebogenversionen in der Pädiatrie
1. Vorliegen von mehreren Sprachvarianten als einzelne Fragebögen, falls inhaltliche Unterschiede zwischen den Sprachen bestehen (z.B. 

Es ist zu beachten, dass diese unterschiedlichen Fragebögen häufig identische ider verlgeichbare Scores produzieren


Namespaces für den Anfang
* mii-qst-pro-euroqol-eq5d5l
* mii-qst-pro-euroqol-eq5dy5l
* mii-qst-pro-euroqol-eq5d3l
* mii-qst-pro-promis-promis29
* mii-qst-pro-promis-promis33
* mii-qst-pro-phq-phq9
* mii-qst-pro-phq-gad7
* mii-qst-pro-phq-phqsads







Fragebogen-ID
s
PROMIS-SF-4a
PHQ-9
mii-qst-pro-promis-sf-4a-(de)

Frage-IDs
- phq9-q01
- phq9-q02
- phq9-score-total

- eq5d5l-q01-mo
- eq5d5l-
- eq5d5l-score-profile -> 12341
- eq5d5l-score-vas -> 0-100
- eq5d5l-score-index-> 1.0- (-0.661)



- PHQ-8.q01 - > wäre dann das gleiche, aber andere ID

- bei Frageböge nmit expliziter Liste
    - können wir selber definieren
        dann vsl. nach oben genanntem Muster
    - Vorlage von PROM ggfs. nutzen? 
        bsp. PROMIS-Item-Ids
    - EDDEP04 (Bsp aus PROMIS - Item ID) -> itemid kann theoretisch in vielen Fragebögen Vorkommen
        - hat die dann überall (technisch gesprochen) die gleiche ItemID? 
        - wahrscheinlich ja
        - oder evtl. in adaptierter FORM (z.B. (PROMIS_EDDEP04)
    - andere Möglichkeit - PROMIS-item drekt übernehmen?
    - was machen wir, wenn es keine Vorgaben gibt? 
        - (Fragenummern, buchstaben) -> die brauch man formal nicht, aber die helfen allen Beteiligten bei der Identifikation der Fragen



Antwort-IDs
- bei Fragebögen mit vordefinierter Antworliste: 
    - z.B. LOINC-Antwortlisten
    - automatisch als Antwort-code hinterlegt, bei ausgefüllten Fragebögen
- AntwortIDs sind nicht immer identisch mit Scorewerten
- Problem: wegen der nicht-deutschen Label muss ohenhin auch bei Verwendung von LoincVAlueSets nochmal ein eigenes ValueSet angelegt werden (oder wir reichen es ein) 
- ToDo: Terminolgieserver abfrage mit Mehrsprachigkeit generell
- ToThink: Spezifikation von internationalen Fragebögen primär in Englisch? 
- ToThink: Spezifikation von deutschen Fragebögen primär in deutsch? 

- Frage: Orientieren wir uns in der Wertevergabe nach dem, was in der Vorlage steht, oder nicht? 
- Haben wir für jeden PROM eine gute Vorlage? 
- Beispiele: Invertieren von einzelnen Items in der Scoreberechnung -> wahrscheinlich in den Rohdaten
- was machen, wenn ein PROM irgendwann bei LOINC registriert wird -> updaten? mapping bereitstellen? 


Dikussion zu Capabilities des FHIR-Terminologieservers von LOINC
https://mii.zulipchat.com/#narrow/channel/381072-SU-TermServ/topic/Bereitstellung.20von.20LOINC-Values.20und.20Codes


Entwicklung einer schrittweisen Logik / Flussdiagramms zur bestimmung, wie die IDs in einem bestimmten Use Case sein sollten.  

Vorgabe IDs der Hersteller: 





