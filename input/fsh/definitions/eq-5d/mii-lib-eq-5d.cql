library EQ-5DScoring version '1.0.0'

using FHIR version '4.0.1'

codesystem AnswerOptions: 'mii-cs-pro-eq-5d-value-set'

context QuestionnaireResponse

define "AllAnswers":
  QuestionnaireResponse.item.answer

define "AnswerCodes":
  "AllAnswers".valueCoding

define "AnswerScores":
  "AnswerCodes" return {
    code: value,
    score: System.CodeSystem.Lookup(AnswerOptions, value.code).property.where(name = 'score').value as Integer
  }

define "CalculateTotalScore":
  Sum("Answer Scores".score)