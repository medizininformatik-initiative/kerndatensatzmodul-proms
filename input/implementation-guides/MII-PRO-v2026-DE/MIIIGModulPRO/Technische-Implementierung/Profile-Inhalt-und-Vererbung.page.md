## {{page-title}}

Under construction

Für jeden Fragebogen können verschiedene Extension hinterlegt werden

Ein Base-Fragebogen beinhaltet die reinen Informationen und Datenelementen. Darüber hinaus können 
Abgeleitete Fragebögen mit Logik für folgende Subdomänen. 
Basierend auf gängiger Interface-Beschreibung kann jeder Fragebogen zusätzliches Verhalten über reguläre Datenelemente und Extension erhalten. 

Dies sind vor allem: 
1. Displayable (Fragebogen-Ergebnisse und Scores können gerendert werden)
1. Collectable (Fragebogen kann korrekt gerendert und Daten innerhalb eines FHIR FormRenderers korrekt erfasst werden)
2. Calculatable (Score kann innerhalb eines FormRenderers direkt berechnet werden) 
3. Extractable (Observations und andere FHIR-Ressourcen können aus dem Questionnaire extrahiert werden)

Ein MII-Fragebogen kann keinen, einen oder mehrere dieser Verhalten umgesetzt haben, je nach benötigtem Use Case. Es SOLL mindestens die Displayable-Funktionalität umgesetzt werden, falls nicht lizenzrechtliche Gründe gegen eine Veröffentlichung der Frage- und Antworttexte sprechen. 


Für die Scores gelten zunächst folgende Interface-Beschreibungen
1. Mappable (Mappings für min. einen anderen Score verfügbar)
4. DomainAlignable (Domänenzuordnungen sind verfügbar)



