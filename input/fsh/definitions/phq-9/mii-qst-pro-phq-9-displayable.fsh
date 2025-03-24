// TODO: Title/ Description Translation?
Instance: mii-qst-pro-phq-9
InstanceOf: SDCBaseQuestionnaire
Title: "MII QST PRO PHQ-9"
Description: "Patient Health Questionnaire (PHQ-9)"
Usage: #definition

// Definitional Metadata
* insert DefinitionResourceMetadata($mii-qst-pro-phq-9, active, true, de)
* code = $LNC#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"

// PHQ-9.Description
* insert DisplayItemIntl(item[0], PHQ-9.Description,
    Wie oft fühlten Sie sich im Verlauf der letzten 2 Wochen durch die folgenden Beschwerden beeinträchtigt?,
    en, Over the last two weeks\, how often have you been bothered by any of the following problems?)

// PHQ-9.1
* insert ItemAnswerSetIntl(item[1], PHQ-9.1, 1, $LNC#44250-9, choice, $mii-vs-pro-phq-9-answer-list-ll358-3,
    Wenig Interesse oder Freude an Ihren Tätigkeiten,
    en, Little interest or pleasure in doing things)
* insert ItemAnswerSetColumnRendering(item[1], 4)

// PHQ-9.2
* insert ItemAnswerSetIntl(item[2], PHQ-9.2, 2, $LNC#44255-8, choice, $mii-vs-pro-phq-9-answer-list-ll358-3,
    Niedergeschlagenheit\, Schwermut oder Hoffnungslosigkeit,
    en, Feeling down\, depressed\, or hopeless)
* insert ItemAnswerSetColumnRendering(item[2], 4)

// PHQ-9.3
* insert ItemAnswerSetIntl(item[3], PHQ-9.3, 3, $LNC#44259-0, choice, $mii-vs-pro-phq-9-answer-list-ll358-3,
    Schwierigkeiten ein- oder durchzuschlafen oder vermehrter Schlaf,
    en, Trouble falling or staying asleep\, or sleeping too much)
* insert ItemAnswerSetColumnRendering(item[3], 4)

// PHQ-9.4
* insert ItemAnswerSetIntl(item[4], PHQ-9.4, 4, $LNC#44254-1, choice, $mii-vs-pro-phq-9-answer-list-ll358-3,
    Müdigkeit oder Gefühl\, keine Energie zu haben,
    en, Feeling tired or having little energy)
* insert ItemAnswerSetColumnRendering(item[4], 4)

// PHQ-9.5
* insert ItemAnswerSetIntl(item[5], PHQ-9.5, 5, $LNC#44251-7, choice, $mii-vs-pro-phq-9-answer-list-ll358-3,
    Verminderter Appetit oder übermäßiges Bedürfnis zu essen,
    en, Poor appetite or overeating)
* insert ItemAnswerSetColumnRendering(item[5], 4)

// PHQ-9.6
* insert ItemAnswerSetIntl(item[6], PHQ-9.6, 6, $LNC#44258-2, choice, $mii-vs-pro-phq-9-answer-list-ll358-3,
    Schlechte Meinung von sich selbst; Gefühl\, ein Versager zu sein oder die Familie enttäuscht zu haben,
    en, Feeling bad about yourself - or that you are a failure or have let yourself or your family down)
* insert ItemAnswerSetColumnRendering(item[6], 4)

// PHQ-9.7
* insert ItemAnswerSetIntl(item[7], PHQ-9.7, 7, $LNC#44252-5, choice, $mii-vs-pro-phq-9-answer-list-ll358-3,
    Schwierigkeiten\, sich auf etwas zu konzentrieren\, z.B. beim Zeitunglesen oder Fernsehen,
    en, Trouble concentrating on things\, such as reading the newspaper or watching television)
* insert ItemAnswerSetColumnRendering(item[7], 4)

// PHQ-9.8
* insert ItemAnswerSetIntl(item[8], PHQ-9.8, 8, $LNC#44253-3, choice, $mii-vs-pro-phq-9-answer-list-ll358-3,
    Waren Ihre Bewegungen oder Ihre Sprache so verlangsamt\, dass es auch anderen auffallen würde? Oder waren Sie im Gegenteil „zappelig“ oder ruhelos und hatten dadurch einen stärkeren Bewegungsdrang als sonst?,
    en, Moving or speaking so slowly that other people could have noticed? Or the opposite — being so fidgety or restless that you have been moving around a lot more than usual)
* insert ItemAnswerSetColumnRendering(item[8], 4)

// PHQ-9.9
* insert ItemAnswerSetIntl(item[9], PHQ-9.9, 9, $LNC#44260-8, choice, $mii-vs-pro-phq-9-answer-list-ll358-3,
    Gedanken\, dass Sie lieber tot wären oder sich Leid zufügen möchten,
    en, Thoughts that you would be better off dead or of hurting yourself in some way)
* insert ItemAnswerSetColumnRendering(item[9], 4)

// TODO: Score calculation and interpretation
// PHQ-9.Score
* insert ItemIntl(item[10], PHQ-9.Score, Auswertung, $LNC#44261-6, quantity, Gesamtwert, en, Total Score)

// PHQ-9.10
* insert ItemAnswerSetIntl(item[11], PHQ-9.10, 10, $LNC#69722-7, choice, $mii-vs-pro-phq-9-answer-list-ll359-1,
    Wenn eines oder mehrere dieser Probleme bei Ihnen vorliegen\, geben Sie bitte an\, wie sehr diese Probleme es Ihnen erschwert haben\, Ihre Arbeit zu erledigen\, Ihren Haushalt zu regeln oder mit anderen Menschen zurecht zu kommen,
    en, If you checked off any problems\, how difficult have these problems made it for you to do your work\, take care of things at home\, or get along with other people?)
* insert ItemAnswerSetColumnRendering(item[11], 4)