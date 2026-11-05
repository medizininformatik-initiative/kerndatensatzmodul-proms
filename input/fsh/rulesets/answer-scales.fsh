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
// Da wir SNOMED nicht besitzen, können wir dort keine itemWeight-Property an die Konzepte
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
// bekommen weiterhin ein MII-CodeSystem mit itemWeight + answerValueSet in ihrem
// Instrumenten-Ordner — dort besitzen wir die Terminologie und die Formulierung ist Teil
// des validierten Instruments.

// ============================================================================
// Schreibhilfen für Gewichte (Beads g3b.18). Es gibt genau drei legitime Quellen eines
// Gewichts: (1) itemWeight-Extension an der answerOption (fremde Terminologie: LOINC/SNOMED),
// (2) itemWeight-Property am MII-CodeSystem, über Inline-Coding erreicht, (3) dieselbe
// Property über answerValueSet. Das Profil mii-pr-pro-questionnaire erlaubt die Extension
// NUR an answerOption.extension (nicht am valueCoding — Form-Renderer wie LHC-Forms lesen
// sie dort nicht). Vollständigkeit prüft der Laufzeit-Guard scripts/scoring-smoke.test.mjs.
// ============================================================================

// Inline-Option mit Gewicht, ohne Übersetzung (Terminologie liefert die Designations selbst).
RuleSet: WeightedOption(system, code, display, weight)
* answerOption[+].valueCoding = {system}#{code} "{display}"
* answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* answerOption[=].extension[=].valueDecimal = {weight}

// Inline-Option mit Gewicht und deutscher Übersetzung des Displays.
RuleSet: WeightedOptionIntl(system, code, display, de, weight)
* answerOption[+].valueCoding = {system}#{code} "{display}"
* answerOption[=].valueCoding.display.extension[+].url = $hl7-translation
* answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "{de}"
* answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* answerOption[=].extension[=].valueDecimal = {weight}

// CodeSystem-Konzept mit Gewicht (Property itemWeight; die Deklaration am CS siehe
// RuleSet ItemWeightProperty). Mit/ohne Designation.
RuleSet: ItemWeightProperty
* ^property[+].code = #itemWeight
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#itemWeight"
* ^property[=].description = "Numerical weight for SDC calculatedExpression scoring via .weight()"
* ^property[=].type = #decimal

RuleSet: WeightedConcept(code, display, weight)
* #{code} "{display}"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = {weight}

RuleSet: WeightedConceptIntl(code, display, language, translation, weight)
* #{code} "{display}"
  * ^designation[+].language = #{language}
  * ^designation[=].value = "{translation}"
  * ^property[+].code = #itemWeight
  * ^property[=].valueDecimal = {weight}

// Binäre Ja/Nein-Skala mit Gewichten 0/1 (SNOMED CT, TC-Terminologien-konform).
// Anwendung: * item[x] insert YesNoAnswerOptions
RuleSet: YesNoAnswerOptions
* insert WeightedOption($SCT, 373067005, No, 0)
* insert WeightedOption($SCT, 373066001, Yes, 1)

// PHQ-D-Vierpunktskala für Häufigkeit über zwei Wochen (0-3), LOINC-Antwortliste LL358-3.
// Geteilt von PHQ-9, GAD-7 und PHQ-4 — identischer Wortlaut, identische Gewichte.
// Fall A: etablierte Standard-Terminologie vorhanden (LOINC LA-Codes), Gewichte inline,
// da an LOINC-Konzepte keine itemWeight-Property angehängt werden kann.
// Deutsche Wortlaute aus dem PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002).
// Anwendung: * item[x] insert Phq4PointFrequencyAnswerOptions
RuleSet: Phq4PointFrequencyAnswerOptions
* insert WeightedOptionIntl($LNC, LA6568-5, Not at all, Überhaupt nicht, 0)
* insert WeightedOptionIntl($LNC, LA6569-3, Several days, An einzelnen Tagen, 1)
* insert WeightedOptionIntl($LNC, LA6570-1, More than half the days, An mehr als der Hälfte der Tage, 2)
* insert WeightedOptionIntl($LNC, LA6571-9, Nearly every day, Beinahe jeden Tag, 3)
