Instance: mii-exa-pro-phq-9-response
InstanceOf: MII_PR_PRO_QuestionnaireResponse
Usage: #example
Title: "PHQ-9 Questionnaire Response Example"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response)
* status = #completed
* language = #en
* subject = Reference(Patient/mii-exa-pro-patient)
* authored = "2023-10-01T12:00:00Z"
* insert QuestionnaireRef(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9)
// Severe depression responses (score = 27)
* item[+].linkId = "phq-phq2a" // Little interest or pleasure
* item[=].text = "Little interest or pleasure in doing things"
* insert TranslationDE(item[=].text, [["Wenig Interesse oder Freude an Ihren Tätigkeiten"]])
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Beinahe jeden Tag"]])

* item[+].linkId = "phq-phq2b" // Feeling down, depressed
* item[=].text = "Feeling down, depressed, or hopeless"
* insert TranslationDE(item[=].text, [["Niedergeschlagenheit, Schwermut oder Hoffnungslosigkeit"]])
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Beinahe jeden Tag"]])

* item[+].linkId = "phq-phq2c" // Sleep problems
* item[=].text = "Trouble falling or staying asleep, or sleeping too much"
* insert TranslationDE(item[=].text, [["Schwierigkeiten ein- oder durchzuschlafen oder vermehrter Schlaf"]])
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Beinahe jeden Tag"]])

* item[+].linkId = "phq-phq2d" // Feeling tired
* item[=].text = "Feeling tired or having little energy"
* insert TranslationDE(item[=].text, [["Müdigkeit oder Gefühl, keine Energie zu haben"]])
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Beinahe jeden Tag"]])

* item[+].linkId = "phq-phq2e" // Poor appetite
* item[=].text = "Poor appetite or overeating"
* insert TranslationDE(item[=].text, [["Verminderter Appetit oder übermäßiges Bedürfnis zu essen"]])
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Beinahe jeden Tag"]])

* item[+].linkId = "phq-phq2f" // Feeling bad about yourself
* item[=].text = "Feeling bad about yourself - or that you are a failure or have let yourself or your family down"
* insert TranslationDE(item[=].text, [["Schlechte Meinung von sich selbst; Gefühl, ein Versager zu sein oder die Familie enttäuscht zu haben"]])
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Beinahe jeden Tag"]])

* item[+].linkId = "phq-phq2g" // Trouble concentrating
* item[=].text = "Trouble concentrating on things, such as reading the newspaper or watching television"
* insert TranslationDE(item[=].text, [["Schwierigkeiten, sich auf etwas zu konzentrieren, z.B. beim Zeitunglesen oder Fernsehen"]])
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Beinahe jeden Tag"]])

* item[+].linkId = "phq-phq2h" // Moving/speaking slowly
* item[=].text = "Moving or speaking so slowly that other people could have noticed? Or the opposite — being so fidgety or restless that you have been moving around a lot more than usual"
* insert TranslationDE(item[=].text, [["Waren Ihre Bewegungen oder Ihre Sprache so verlangsamt, dass es auch anderen auffallen würde? Oder waren Sie im Gegenteil 'zappelig' oder ruhelos und hatten dadurch einen stärkeren Bewegungsdrang als sonst?"]])
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Beinahe jeden Tag"]])

* item[+].linkId = "phq-phq2i" // Thoughts of death
* item[=].text = "Thoughts that you would be better off dead or of hurting yourself in some way"
* insert TranslationDE(item[=].text, [["Gedanken, dass Sie lieber tot wären oder sich Leid zufügen möchten"]])
* item[=].answer[0].valueCoding = $LNC#LA6571-9 "Nearly every day"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Beinahe jeden Tag"]])

// Total score: 9 questions × 3 points = 27 (severe depression)
// Note: Unit {score} is defined in the Questionnaire via questionnaire-unit extension
* item[+].linkId = "phq-phq9-score-total"
* item[=].text = "PHQ-9 Total Score"
* insert TranslationDE(item[=].text, [["PHQ-9 Gesamtwert"]])
* item[=].answer[0].valueDecimal = 27

* item[+].linkId = "phq-phq9-difficulty" // Functional impairment
* item[=].text = "If you checked off any problems, how difficult have these problems made it for you to do your work, take care of things at home, or get along with other people?"
* insert TranslationDE(item[=].text, [["Wenn eines oder mehrere dieser Probleme bei Ihnen vorliegen, geben Sie bitte an, wie sehr diese Probleme es Ihnen erschwert haben, Ihre Arbeit zu erledigen, Ihren Haushalt zu regeln oder mit anderen Menschen zurecht zu kommen"]])
* item[=].answer[0].valueCoding = $LNC#LA6574-3 "Extremely difficult"
* insert TranslationDE(item[=].answer[0].valueCoding.display, [["Sehr stark erschwert"]])
