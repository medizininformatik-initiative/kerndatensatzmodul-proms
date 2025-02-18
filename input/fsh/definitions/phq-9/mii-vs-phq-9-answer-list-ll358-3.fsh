// TODO: Title/ Description Translation?
ValueSet: MII_VS_PHQ9_AnswerList_LL3583
Id: mii-vs-phq-9-answer-list-ll358-3
Title: "PHQ-9"
Description: "Patient Health Questionnaire (PHQ-9) Not at all/Several days/More than half the days/Nearly every day"

* ^url = $mii-vs-phq-9-answer-list-ll358-3
* ^status = #active
* ^language = #de

* insert ConceptWeightIntl($LNC#LA6568-5, Überhaupt nicht, 0, en, Not at all)
* insert ConceptWeightIntl($LNC#LA6569-3, An einzelnen Tagen, 1, en, Serveral days)
* insert ConceptWeightIntl($LNC#LA6570-1, An mehr als der Hälfte der Tage, 2, en, More than half the days)
* insert ConceptWeightIntl($LNC#LA6571-9, Beinahe jeden Tag, 3, en, Nearly every day)