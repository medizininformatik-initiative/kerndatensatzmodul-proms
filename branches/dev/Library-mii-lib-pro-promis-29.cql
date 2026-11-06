// GENERIERT von scripts/generate-promis29-cql.py — nicht von Hand editieren.
// Quellen: promis29-answer-weights.csv, promis29-t-score-tables.csv, Questionnaire-JSON.
//
// PROMIS-29 Profile v2.1 — Scoring (Server-Kanal, Dual-Channel-Architektur).
// Rohwert = Summe der Antwortgewichte der vier Items einer Domaene; T-Score nur bei
// vollstaendig beantworteter Short Form (Count-Guard, wie im FHIRPath-Kanal).
// Define-Namen == Score-linkIds des Questionnaires (Konvention 6yu.14).
library "mii-lib-pro-promis-29" version '2027.0.0-rc.1'

using FHIR version '4.0.1'

// Flow B: QuestionnaireResponse explizit uebergeben (Library/$evaluate mit Parameters).
parameter "Response" QuestionnaireResponse

context Patient

define "QuestionnaireUrl":
  'https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29'

// Flow A: juengste Response des Instruments aus den Patientendaten.
define "MostRecentResponse":
  First(
    ([QuestionnaireResponse]) R
      where R.questionnaire.value.startsWith("QuestionnaireUrl")
        and R.status.value in {'completed', 'amended'}
      sort by authored.value desc
  )

define "ScoredResponse":
  Coalesce("Response", "MostRecentResponse")

// PROMIS-29 ist zweistufig gruppiert (Domaene -> Items); flach fuer die Summen.
define "AllItems":
  flatten((("ScoredResponse".item) G return all G.item))

define function "AnswerCode"(I FHIR.QuestionnaireResponse.Item):
  ((First(I.answer).value) as FHIR.Coding).code.value

// ---- Antwortskalen (Gewichte aus promis29-answer-weights.csv) ----
// Scale1: promis-pfa11, promis-pfa21, promis-pfa23, promis-pfa53
define function "Scale1"(code String):
  case code
    when 'LA13912-3' then 1
    when 'LA13918-0' then 4
    when 'LA13919-8' then 2
    when 'LA13920-6' then 3
    when 'LA13921-4' then 5
    else null
  end

// Scale2: promis-edanx01, promis-edanx40, promis-edanx41, promis-edanx53, promis-eddep04, promis-eddep06, promis-eddep29, promis-eddep41
define function "Scale2"(code String):
  case code
    when 'LA10044-8' then 4
    when 'LA10066-1' then 2
    when 'LA10082-8' then 3
    when 'LA6270-8' then 1
    when 'LA9933-8' then 5
    else null
  end

// Scale3: promis-hi7, promis-an3, promis-fatexp41, promis-fatexp40, promis-sleep20, promis-sleep44, promis-painin9, promis-painin22, promis-painin31, promis-painin34
define function "Scale3"(code String):
  case code
    when 'LA13863-8' then 2
    when 'LA13902-4' then 4
    when 'LA13909-9' then 3
    when 'LA13914-9' then 5
    when 'LA6568-5' then 1
    else null
  end

// Scale4: promis-sleep109
define function "Scale4"(code String):
  case code
    when 'LA13913-1' then 1
    when 'LA8967-7' then 2
    when 'LA8968-5' then 3
    when 'LA8969-3' then 4
    when 'LA9615-1' then 5
    else null
  end

// Scale5: promis-sleep116
define function "Scale5"(code String):
  case code
    when 'LA13863-8' then 4
    when 'LA13902-4' then 2
    when 'LA13909-9' then 3
    when 'LA13914-9' then 1
    when 'LA6568-5' then 5
    else null
  end

// Scale6: promis-srpper23-caps, promis-srpper11-caps, promis-srpper18-caps, promis-srpper46-caps
define function "Scale6"(code String):
  case code
    when 'LA10066-1' then 4
    when 'LA10082-8' then 3
    when 'LA14747-2' then 2
    when 'LA6270-8' then 5
    when 'LA9933-8' then 1
    else null
  end

define function "Weight"(linkId String, code String):
  case
    when linkId in {'promis-pfa11', 'promis-pfa21', 'promis-pfa23', 'promis-pfa53'} then "Scale1"(code)
    when linkId in {'promis-edanx01', 'promis-edanx40', 'promis-edanx41', 'promis-edanx53', 'promis-eddep04', 'promis-eddep06', 'promis-eddep29', 'promis-eddep41'} then "Scale2"(code)
    when linkId in {'promis-hi7', 'promis-an3', 'promis-fatexp41', 'promis-fatexp40', 'promis-sleep20', 'promis-sleep44', 'promis-painin9', 'promis-painin22', 'promis-painin31', 'promis-painin34'} then "Scale3"(code)
    when linkId in {'promis-sleep109'} then "Scale4"(code)
    when linkId in {'promis-sleep116'} then "Scale5"(code)
    when linkId in {'promis-srpper23-caps', 'promis-srpper11-caps', 'promis-srpper18-caps', 'promis-srpper46-caps'} then "Scale6"(code)
    else null
  end

// ---- PROMIS-29.PhysicalFunction ----
define "physical-function-answered":
  Count((("AllItems") I where I.linkId.value in {'promis-pfa11', 'promis-pfa21', 'promis-pfa23', 'promis-pfa53'} and exists(I.answer)))

define "promis-29-physical-function-raw":
  if "physical-function-answered" = 4 then
    Sum((("AllItems") I where I.linkId.value in {'promis-pfa11', 'promis-pfa21', 'promis-pfa23', 'promis-pfa53'}
      return all "Weight"(I.linkId.value, "AnswerCode"(I))))
  else null

define "promis-29-physical-function-tscore":
  case "promis-29-physical-function-raw"
    when 4 then 22.5
    when 5 then 26.6
    when 6 then 28.9
    when 7 then 30.5
    when 8 then 31.9
    when 9 then 33.2
    when 10 then 34.4
    when 11 then 35.6
    when 12 then 36.7
    when 13 then 37.9
    when 14 then 39.2
    when 15 then 40.5
    when 16 then 41.9
    when 17 then 43.5
    when 18 then 45.5
    when 19 then 48.3
    when 20 then 57.0
    else null
  end

// ---- PROMIS-29.Anxiety ----
define "anxiety-answered":
  Count((("AllItems") I where I.linkId.value in {'promis-edanx01', 'promis-edanx40', 'promis-edanx41', 'promis-edanx53'} and exists(I.answer)))

define "promis-29-anxiety-raw":
  if "anxiety-answered" = 4 then
    Sum((("AllItems") I where I.linkId.value in {'promis-edanx01', 'promis-edanx40', 'promis-edanx41', 'promis-edanx53'}
      return all "Weight"(I.linkId.value, "AnswerCode"(I))))
  else null

define "promis-29-anxiety-tscore":
  case "promis-29-anxiety-raw"
    when 4 then 40.3
    when 5 then 48.0
    when 6 then 51.2
    when 7 then 53.7
    when 8 then 55.8
    when 9 then 57.7
    when 10 then 59.5
    when 11 then 61.4
    when 12 then 63.4
    when 13 then 65.3
    when 14 then 67.3
    when 15 then 69.3
    when 16 then 71.2
    when 17 then 73.3
    when 18 then 75.4
    when 19 then 77.9
    when 20 then 81.6
    else null
  end

// ---- PROMIS-29.Depression ----
define "depression-answered":
  Count((("AllItems") I where I.linkId.value in {'promis-eddep04', 'promis-eddep06', 'promis-eddep29', 'promis-eddep41'} and exists(I.answer)))

define "promis-29-depression-raw":
  if "depression-answered" = 4 then
    Sum((("AllItems") I where I.linkId.value in {'promis-eddep04', 'promis-eddep06', 'promis-eddep29', 'promis-eddep41'}
      return all "Weight"(I.linkId.value, "AnswerCode"(I))))
  else null

define "promis-29-depression-tscore":
  case "promis-29-depression-raw"
    when 4 then 41.0
    when 5 then 49.0
    when 6 then 51.8
    when 7 then 53.9
    when 8 then 55.7
    when 9 then 57.3
    when 10 then 58.9
    when 11 then 60.5
    when 12 then 62.2
    when 13 then 63.9
    when 14 then 65.7
    when 15 then 67.5
    when 16 then 69.4
    when 17 then 71.2
    when 18 then 73.3
    when 19 then 75.7
    when 20 then 79.4
    else null
  end

// ---- PROMIS-29.Fatigue ----
define "fatigue-answered":
  Count((("AllItems") I where I.linkId.value in {'promis-hi7', 'promis-an3', 'promis-fatexp41', 'promis-fatexp40'} and exists(I.answer)))

define "promis-29-fatigue-raw":
  if "fatigue-answered" = 4 then
    Sum((("AllItems") I where I.linkId.value in {'promis-hi7', 'promis-an3', 'promis-fatexp41', 'promis-fatexp40'}
      return all "Weight"(I.linkId.value, "AnswerCode"(I))))
  else null

define "promis-29-fatigue-tscore":
  case "promis-29-fatigue-raw"
    when 4 then 33.7
    when 5 then 39.7
    when 6 then 43.1
    when 7 then 46.0
    when 8 then 48.6
    when 9 then 51.0
    when 10 then 53.1
    when 11 then 55.1
    when 12 then 57.0
    when 13 then 58.8
    when 14 then 60.7
    when 15 then 62.7
    when 16 then 64.6
    when 17 then 66.7
    when 18 then 69.0
    when 19 then 71.6
    when 20 then 75.8
    else null
  end

// ---- PROMIS-29.Sleep ----
define "sleep-answered":
  Count((("AllItems") I where I.linkId.value in {'promis-sleep109', 'promis-sleep116', 'promis-sleep20', 'promis-sleep44'} and exists(I.answer)))

define "promis-29-sleep-raw":
  if "sleep-answered" = 4 then
    Sum((("AllItems") I where I.linkId.value in {'promis-sleep109', 'promis-sleep116', 'promis-sleep20', 'promis-sleep44'}
      return all "Weight"(I.linkId.value, "AnswerCode"(I))))
  else null

define "promis-29-sleep-tscore":
  case "promis-29-sleep-raw"
    when 4 then 32.0
    when 5 then 37.5
    when 6 then 41.1
    when 7 then 43.8
    when 8 then 46.2
    when 9 then 48.4
    when 10 then 50.5
    when 11 then 52.4
    when 12 then 54.3
    when 13 then 56.1
    when 14 then 57.9
    when 15 then 59.8
    when 16 then 61.7
    when 17 then 63.8
    when 18 then 66.0
    when 19 then 68.8
    when 20 then 73.3
    else null
  end

// ---- PROMIS-29.Social ----
define "social-answered":
  Count((("AllItems") I where I.linkId.value in {'promis-srpper23-caps', 'promis-srpper11-caps', 'promis-srpper18-caps', 'promis-srpper46-caps'} and exists(I.answer)))

define "promis-29-social-raw":
  if "social-answered" = 4 then
    Sum((("AllItems") I where I.linkId.value in {'promis-srpper23-caps', 'promis-srpper11-caps', 'promis-srpper18-caps', 'promis-srpper46-caps'}
      return all "Weight"(I.linkId.value, "AnswerCode"(I))))
  else null

define "promis-29-social-tscore":
  case "promis-29-social-raw"
    when 4 then 27.5
    when 5 then 31.8
    when 6 then 34.0
    when 7 then 35.7
    when 8 then 37.3
    when 9 then 38.8
    when 10 then 40.5
    when 11 then 42.3
    when 12 then 44.2
    when 13 then 46.2
    when 14 then 48.1
    when 15 then 50.0
    when 16 then 51.9
    when 17 then 53.7
    when 18 then 55.8
    when 19 then 58.3
    when 20 then 64.2
    else null
  end

// ---- PROMIS-29.PainInterference ----
define "pain-interference-answered":
  Count((("AllItems") I where I.linkId.value in {'promis-painin9', 'promis-painin22', 'promis-painin31', 'promis-painin34'} and exists(I.answer)))

define "promis-29-pain-interference-raw":
  if "pain-interference-answered" = 4 then
    Sum((("AllItems") I where I.linkId.value in {'promis-painin9', 'promis-painin22', 'promis-painin31', 'promis-painin34'}
      return all "Weight"(I.linkId.value, "AnswerCode"(I))))
  else null

define "promis-29-pain-interference-tscore":
  case "promis-29-pain-interference-raw"
    when 4 then 41.6
    when 5 then 49.6
    when 6 then 52.0
    when 7 then 53.9
    when 8 then 55.6
    when 9 then 57.1
    when 10 then 58.5
    when 11 then 59.9
    when 12 then 61.2
    when 13 then 62.5
    when 14 then 63.8
    when 15 then 65.2
    when 16 then 66.6
    when 17 then 68.0
    when 18 then 69.7
    when 19 then 71.6
    when 20 then 75.6
    else null
  end

// ---- Pain Intensity (Einzelitem, 0-10) ----
define "promis-global07":
  First((("AllItems") I where I.linkId.value = 'promis-global07'
    return all ((First(I.answer).value) as FHIR.integer).value))

// Smoke-Define fuer das Release-Gate (6yu.4): liefert true, sobald die Library laeuft.
define "LibraryLoaded":
  true
