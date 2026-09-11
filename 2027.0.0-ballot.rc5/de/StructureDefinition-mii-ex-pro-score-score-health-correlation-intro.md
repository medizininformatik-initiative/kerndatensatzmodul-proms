Extension zur Angabe der Interpretationsrichtung eines Scores — ob höhere Werte für bessere oder schlechtere Gesundheit stehen. Sie verwendet das HL7-ValueSet [measure-improvement-notation](https://terminology.hl7.org/6.5.0/CodeSystem-measure-improvement-notation.html).

**Beispiele**

Beim PHQ-9 ist das „gesunde" Ende der Skala 0 Punkte, das „pathologische" Ende 27, daher trägt der PHQ-9-Score den Wert `decrease` — ein steigender Punktwert weist auf sinkende Gesundheit bzw. Lebensqualität hin.

Der EORTC QLQ-C30 besitzt Funktions- und Symptom-Skalen. Bei den Funktions-Skalen entsprechen hohe Werte hoher physiologischer Funktion, daher tragen diese Skalen den Wert `increase` — ein steigender Punktwert weist auf bessere Gesundheit bzw. Funktion hin.

Bei den Symptom-Skalen entsprechen hohe Werte einem schlechten Gesundheitszustand, daher tragen diese Skalen den Wert `decrease` — ein steigender Punktwert weist auf schlechtere Gesundheit bzw. mehr Symptome hin.
