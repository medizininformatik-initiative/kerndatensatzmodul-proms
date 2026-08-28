// Wiederverwendbare Antwortskalen als RuleSets.
//
// SCHICHT: Modul-Infrastruktur (instrumentenübergreifend).
//
// WARUM SNOMED UND NICHT EIN EIGENES CODESYSTEM:
// Für generische Ja/Nein-Antworten empfiehlt das TC Terminologien (HL7 Deutschland /
// Interop Council, Leitfaden "Best Practice bei der Implementierung und Spezifizierung mit
// HL7") die SNOMED-CT-Codes 373066001 (Yes) und 373067005 (No). Ein selbstdefiniertes
// MII-CodeSystem für "ja/nein" wäre eine Doppelung bereits standardisierter Terminologie.
//
// WARUM INLINE answerOption UND NICHT answerValueSet:
// Da wir SNOMED nicht besitzen, können wir dort keine ordinalValue-Property an die Konzepte
// hängen; ein answerValueSet über SNOMED-Codes trüge folglich keine Scoring-Gewichte.
// Inline answerOption ist zugleich der robustere Weg für Kanal-A-Scoring — Form-Renderer lesen
// Gewichte zuverlässig aus answerOption, nicht immer aus einem expandierten ValueSet.
//
// SPRACHE: Es werden BEWUSST keine deutschen Übersetzungs-Extensions gesetzt. SNOMED CT führt
// die deutschen Designations selbst (373066001 = "Ja", 373067005 = "Nein"); sie über den
// Terminologie-Service aufzulösen ist die einzige Quelle der Wahrheit. Eine hier
// hartkodierte Übersetzung wäre eine Doppelung, die bei Terminologie-Updates veraltet.
// Übersetzungs-Extensions bleiben den Item-TEXTEN vorbehalten — die stehen in keiner
// Terminologie. Siehe Bead epb (Bereitstellung der PRO-Terminologie über Terminologie-Service).
//
// ABGRENZUNG: Instrumente mit eigener, validierter Antwortskala (OPD-SFK, ISR, SSD-12 …)
// bekommen weiterhin ein MII-CodeSystem mit ordinalValue + answerValueSet in ihrem
// Instrumenten-Ordner — dort besitzen wir die Terminologie und die Formulierung ist Teil
// des validierten Instruments.

// Binäre Ja/Nein-Skala mit Gewichten 0/1 (SNOMED CT, TC-Terminologien-konform).
// Anwendung: * item[x] insert YesNoAnswerOptions
RuleSet: YesNoAnswerOptions
* answerOption[+].valueCoding = $SCT#373067005 "No"
* answerOption[=].valueCoding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* answerOption[=].valueCoding.extension[=].valueDecimal = 0
* answerOption[+].valueCoding = $SCT#373066001 "Yes"
* answerOption[=].valueCoding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* answerOption[=].valueCoding.extension[=].valueDecimal = 1
