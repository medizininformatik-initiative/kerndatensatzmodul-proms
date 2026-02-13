// ============================================================================
// PROMIS Depression Item Bank v1.0 for Computer Adaptive Testing (28 Items)
// ============================================================================
// Source: Pilkonis et al. (2011) - PMC3153635
// All items use PROMIS frequency scale: Never(1) / Rarely(2) / Sometimes(3) / Often(4) / Always(5)
// IRT parameters are NOT in this file - see the separate IRT Calibration Library
// ============================================================================

// RuleSet for PROMIS frequency answer options (Never/Rarely/Sometimes/Often/Always)
RuleSet: PROMISDepressionFrequencyAnswerOptions
* item[=].answerOption[0].valueCoding = $LNC#LA6270-8 "Never"
* item[=].answerOption[0].valueCoding.display.extension[+].url = $hl7-translation
* item[=].answerOption[0].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[0].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[=].extension[=].valueString = "Nie"
* item[=].answerOption[0].extension.url = $hl7-ordinal-value
* item[=].answerOption[0].extension.valueDecimal = 1
* item[=].answerOption[1].valueCoding = $LNC#LA10066-1 "Rarely"
* item[=].answerOption[1].valueCoding.display.extension[+].url = $hl7-translation
* item[=].answerOption[1].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[1].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[=].extension[=].valueString = "Selten"
* item[=].answerOption[1].extension.url = $hl7-ordinal-value
* item[=].answerOption[1].extension.valueDecimal = 2
* item[=].answerOption[2].valueCoding = $LNC#LA10082-8 "Sometimes"
* item[=].answerOption[2].valueCoding.display.extension[+].url = $hl7-translation
* item[=].answerOption[2].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[2].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[=].extension[=].valueString = "Manchmal"
* item[=].answerOption[2].extension.url = $hl7-ordinal-value
* item[=].answerOption[2].extension.valueDecimal = 3
* item[=].answerOption[3].valueCoding = $LNC#LA10044-8 "Often"
* item[=].answerOption[3].valueCoding.display.extension[+].url = $hl7-translation
* item[=].answerOption[3].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[3].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[=].extension[=].valueString = "Oft"
* item[=].answerOption[3].extension.url = $hl7-ordinal-value
* item[=].answerOption[3].extension.valueDecimal = 4
* item[=].answerOption[4].valueCoding = $LNC#LA9933-8 "Always"
* item[=].answerOption[4].valueCoding.display.extension[+].url = $hl7-translation
* item[=].answerOption[4].valueCoding.display.extension[=].extension[+].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[=].extension[=].valueCode = #de
* item[=].answerOption[4].valueCoding.display.extension[=].extension[+].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[=].extension[=].valueString = "Immer"
* item[=].answerOption[4].extension.url = $hl7-ordinal-value
* item[=].answerOption[4].extension.valueDecimal = 5

Instance: mii-qst-pro-promis-depression-cat
InstanceOf: MII_PR_PRO_Questionnaire_Item_Bank
Title: "MII QST PRO PROMIS Depression Item Bank v1.0 (CAT)"
Description: "PROMIS Depression Item Bank v1.0 for Computer Adaptive Testing (28 items). Source: Pilkonis et al. (2011)"
Usage: #definition
* insert Version
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-item-bank)

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-depression-cat"
* status = #active
* experimental = true
* language = #en
* derivedFrom = "http://loinc.org/vs/LL358-3"

* code[+] = $LNC#73832-8 "PROMIS item bank - emotional distress - depression - version 1.0"
* code[+] = $mii-cs-pro-questionnaire-catalogue#promis-depression-cat "PROMIS Depression Item Bank v1.0 (Adaptive/CAT)"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueReference.reference = "https://www.healthmeasures.net/images/PROMIS/manuals/Scoring_Manuals_/PROMIS_Depression_Scoring_Manual.pdf"
* useContext[=].valueReference.display = "PROMIS Depression Scoring Manual"

* extension[capabilities].extension[adaptive].valueBoolean = true
* extension[capabilities].extension[domainAligned].valueBoolean = true
* extension[questionnaireAdaptive].valueBoolean = true

// Display item
* item[+].linkId = "PROMIS-Depression.Description"
* item[=].type = #display
* item[=].text = "In the past 7 days..."
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "In den vergangenen 7 Tagen..."

// Item 1
* item[+].linkId = "promis-eddep04"
* item[=].type = #choice
* item[=].code = $LNC#61953-6 "I felt worthless in past 7 days [PROMIS]"
* item[=].text = "I felt worthless"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...fühlte ich mich wertlos"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 2
* item[+].linkId = "promis-eddep05"
* item[=].type = #choice
* item[=].code = $LNC#61954-4 "I felt that I had nothing to look forward to in past 7 days [PROMIS]"
* item[=].text = "I felt that I had nothing to look forward to"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...hatte ich das Gefühl, dass es nichts gab, worauf ich mich freuen konnte"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 3
* item[+].linkId = "promis-eddep06"
* item[=].type = #choice
* item[=].code = $LNC#61955-1 "I felt helpless in past 7 days [PROMIS]"
* item[=].text = "I felt helpless"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...fühlte ich mich hilflos"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 4
* item[+].linkId = "promis-eddep07"
* item[=].type = #choice
* item[=].code = $LNC#61956-9 "I withdrew from other people in past 7 days [PROMIS]"
* item[=].text = "I withdrew from other people"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...zog ich mich von anderen Menschen zurück"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 5
* item[+].linkId = "promis-eddep09"
* item[=].type = #choice
* item[=].code = $LNC#61958-5 "I felt that nothing could cheer me up in past 7 days [PROMIS]"
* item[=].text = "I felt that nothing could cheer me up"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...hatte ich das Gefühl, dass mich nichts aufheitern konnte"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 6
* item[+].linkId = "promis-eddep14"
* item[=].type = #choice
* item[=].code = $LNC#61963-5 "I felt that I was not as good as other people in past 7 days [PROMIS]"
* item[=].text = "I felt that I was not as good as other people"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...hatte ich das Gefühl, nicht so gut zu sein wie andere Menschen"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 7
* item[+].linkId = "promis-eddep17"
* item[=].type = #choice
* item[=].code = $LNC#61964-3 "I felt sad in past 7 days [PROMIS]"
* item[=].text = "I felt sad"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...fühlte ich mich traurig"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 8
* item[+].linkId = "promis-eddep19"
* item[=].type = #choice
* item[=].code = $LNC#61965-0 "I felt like a failure in past 7 days [PROMIS]"
* item[=].text = "I felt like a failure"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...fühlte ich mich wie ein Versager"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 9
* item[+].linkId = "promis-eddep21"
* item[=].type = #choice
* item[=].code = $LNC#61966-8 "I felt depressed in past 7 days [PROMIS]"
* item[=].text = "I felt depressed"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...fühlte ich mich deprimiert"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 10
* item[+].linkId = "promis-eddep22"
* item[=].type = #choice
* item[=].code = $LNC#61967-6 "I felt unhappy in past 7 days [PROMIS]"
* item[=].text = "I felt unhappy"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...fühlte ich mich unglücklich"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 11
* item[+].linkId = "promis-eddep23"
* item[=].type = #choice
* item[=].code = $LNC#61968-4 "I felt I had nothing to live for in past 7 days [PROMIS]"
* item[=].text = "I felt I had nothing to live for"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...hatte ich das Gefühl, dass ich nichts hatte, wofür es sich zu leben lohnt"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 12
* item[+].linkId = "promis-eddep26"
* item[=].type = #choice
* item[=].code = $LNC#61971-8 "I felt lonely in past 7 days [PROMIS]"
* item[=].text = "I felt lonely"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...fühlte ich mich einsam"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 13
* item[+].linkId = "promis-eddep27"
* item[=].type = #choice
* item[=].code = $LNC#61972-6 "I felt emotionally exhausted in past 7 days [PROMIS]"
* item[=].text = "I felt emotionally exhausted"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...fühlte ich mich emotional erschöpft"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 14
* item[+].linkId = "promis-eddep28"
* item[=].type = #choice
* item[=].code = $LNC#61977-5 "I felt hopeless in past 7 days [PROMIS]"
* item[=].text = "I felt hopeless"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...fühlte ich mich hoffnungslos"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 15
* item[+].linkId = "promis-eddep29"
* item[=].type = #choice
* item[=].code = $LNC#61978-3 "I felt pessimistic in past 7 days [PROMIS]"
* item[=].text = "I felt pessimistic"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...war ich pessimistisch"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 16
* item[+].linkId = "promis-eddep30"
* item[=].type = #choice
* item[=].code = $LNC#61979-1 "I felt that my life was empty in past 7 days [PROMIS]"
* item[=].text = "I felt that my life was empty"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...hatte ich das Gefühl, dass mein Leben leer war"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 17
* item[+].linkId = "promis-eddep31"
* item[=].type = #choice
* item[=].code = $LNC#61980-9 "I felt disappointed in myself in past 7 days [PROMIS]"
* item[=].text = "I felt disappointed in myself"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...war ich von mir selbst enttäuscht"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 18
* item[+].linkId = "promis-eddep35"
* item[=].type = #choice
* item[=].code = $LNC#61984-1 "I felt that I was to blame for things in past 7 days [PROMIS]"
* item[=].text = "I felt that I was to blame for things"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...hatte ich das Gefühl, dass ich an Dingen schuld war"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 19
* item[+].linkId = "promis-eddep36"
* item[=].type = #choice
* item[=].code = $LNC#61985-8 "I felt like crying in past 7 days [PROMIS]"
* item[=].text = "I felt like crying"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...war mir zum Weinen zumute"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 20
* item[+].linkId = "promis-eddep37"
* item[=].type = #choice
* item[=].code = $LNC#61986-6 "I felt sad in past 7 days [PROMIS]"
* item[=].text = "I felt sad"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...war ich traurig"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 21
* item[+].linkId = "promis-eddep39"
* item[=].type = #choice
* item[=].code = $LNC#61988-2 "I felt that I wanted to give up on everything in past 7 days [PROMIS]"
* item[=].text = "I felt that I wanted to give up on everything"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...hatte ich das Gefühl, dass ich alles aufgeben wollte"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 22
* item[+].linkId = "promis-eddep41"
* item[=].type = #choice
* item[=].code = $LNC#61990-8 "I felt that nothing was interesting in past 7 days [PROMIS]"
* item[=].text = "I felt that nothing was interesting"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...hatte ich das Gefühl, dass nichts interessant war"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 23
* item[+].linkId = "promis-eddep42"
* item[=].type = #choice
* item[=].code = $LNC#61991-6 "I felt negative about the future in past 7 days [PROMIS]"
* item[=].text = "I felt negative about the future"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...sah ich die Zukunft negativ"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 24
* item[+].linkId = "promis-eddep44"
* item[=].type = #choice
* item[=].code = $LNC#61993-2 "I felt that my life was not worth living in past 7 days [PROMIS]"
* item[=].text = "I felt that my life was not worth living"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...hatte ich das Gefühl, dass mein Leben nicht lebenswert war"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 25
* item[+].linkId = "promis-eddep45"
* item[=].type = #choice
* item[=].code = $LNC#61994-0 "I felt that I disliked myself in past 7 days [PROMIS]"
* item[=].text = "I felt that I disliked myself"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...mochte ich mich selbst nicht"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 26
* item[+].linkId = "promis-eddep46"
* item[=].type = #choice
* item[=].code = $LNC#61995-7 "I felt that I was a failure in past 7 days [PROMIS]"
* item[=].text = "I felt that I was a failure"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...hatte ich das Gefühl, ein Versager zu sein"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 27
* item[+].linkId = "promis-eddep48"
* item[=].type = #choice
* item[=].code = $LNC#61997-3 "I had trouble feeling close to people in past 7 days [PROMIS]"
* item[=].text = "I had trouble feeling close to people"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...fiel es mir schwer, mich anderen Menschen nahe zu fühlen"
* insert PROMISDepressionFrequencyAnswerOptions

// Item 28
* item[+].linkId = "promis-eddep50"
* item[=].type = #choice
* item[=].code = $LNC#61999-9 "I felt that I had no reason for living in past 7 days [PROMIS]"
* item[=].text = "I felt that I had no reason for living"
* item[=].text.extension[+].url = $hl7-translation
* item[=].text.extension[=].extension[+].url = "lang"
* item[=].text.extension[=].extension[=].valueCode = #de
* item[=].text.extension[=].extension[+].url = "content"
* item[=].text.extension[=].extension[=].valueString = "...hatte ich das Gefühl, keinen Grund zum Leben zu haben"
* insert PROMISDepressionFrequencyAnswerOptions
