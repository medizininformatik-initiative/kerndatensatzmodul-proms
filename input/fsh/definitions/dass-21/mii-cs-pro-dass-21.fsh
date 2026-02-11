CodeSystem: MII_CS_PRO_DASS_21
Id: mii-cs-pro-dass-21
Title: "MII CS PRO DASS-21 Response Scale and Item Codes"
Description: "CodeSystem for the Depression Anxiety Stress Scales - Short Form (DASS-21) with answer codes, item codes, and multilingual support (English primary, German translations from Nilges & Essau 2015)"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-dass-21"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete

// ============================================================================
// Answer codes: 4-point Likert scale (0-3), shared by all 21 items
// Scoring weights are applied at the Questionnaire level via ordinalValue extensions
// ============================================================================

* #dass-dass21-answer-0 "Did not apply to me at all"
  * ^designation[0].language = #de
  * ^designation[0].value = "Traf gar nicht auf mich zu"
* #dass-dass21-answer-1 "Applied to me to some degree"
  * ^designation[0].language = #de
  * ^designation[0].value = "Traf bis zu einem gewissen Grad auf mich zu"
* #dass-dass21-answer-2 "Applied to me to a considerable degree"
  * ^designation[0].language = #de
  * ^designation[0].value = "Traf in beträchtlichem Maße auf mich zu"
* #dass-dass21-answer-3 "Applied to me very much"
  * ^designation[0].language = #de
  * ^designation[0].value = "Traf sehr stark auf mich zu"

// ============================================================================
// Item codes: 21 items across 3 subscales (Depression, Anxiety, Stress)
// English display text primary, German translations via designations
// Subscale assignments: D=Depression, A=Anxiety, S=Stress
// ============================================================================

// Q1 - Stress
* #dass-dass21-q01 "I found it hard to wind down"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich fand es schwer abzuschalten"

// Q2 - Anxiety
* #dass-dass21-q02 "I was aware of dryness of my mouth"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich bemerkte Mundtrockenheit"

// Q3 - Depression
* #dass-dass21-q03 "I couldn't seem to experience any positive feeling at all"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich konnte überhaupt keine positiven Gefühle mehr erleben"

// Q4 - Anxiety
* #dass-dass21-q04 "I experienced breathing difficulty"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich hatte Atemschwierigkeiten"

// Q5 - Depression
* #dass-dass21-q05 "I found it difficult to work up the initiative to do things"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich fand es schwierig, die Initiative zum Tun aufzubringen"

// Q6 - Stress
* #dass-dass21-q06 "I tended to over-react to situations"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich neigte dazu, auf Situationen überzureagieren"

// Q7 - Anxiety
* #dass-dass21-q07 "I experienced trembling (e.g., in the hands)"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich zitterte (z.B. an den Händen)"

// Q8 - Stress
* #dass-dass21-q08 "I felt that I was using a lot of nervous energy"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich merkte, dass ich viel nervöse Energie verbrauchte"

// Q9 - Anxiety
* #dass-dass21-q09 "I was worried about situations in which I might panic and make a fool of myself"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich machte mir Sorgen über Situationen, in denen ich in Panik geraten könnte"

// Q10 - Depression
* #dass-dass21-q10 "I felt that I had nothing to look forward to"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich hatte das Gefühl, dass ich nichts erwarten konnte"

// Q11 - Stress
* #dass-dass21-q11 "I found myself getting agitated"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich merkte, dass ich unruhig wurde"

// Q12 - Stress
* #dass-dass21-q12 "I found it difficult to relax"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich fand es schwierig, mich zu entspannen"

// Q13 - Depression
* #dass-dass21-q13 "I felt down-hearted and blue"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich fühlte mich niedergeschlagen und traurig"

// Q14 - Stress
* #dass-dass21-q14 "I was intolerant of anything that kept me from getting on with what I was doing"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich war ungeduldig, wenn ich aufgehalten wurde"

// Q15 - Anxiety
* #dass-dass21-q15 "I felt I was close to panic"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich fühlte mich einer Panik nahe"

// Q16 - Depression
* #dass-dass21-q16 "I was unable to become enthusiastic about anything"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich konnte mich für nichts begeistern"

// Q17 - Depression
* #dass-dass21-q17 "I felt I wasn't worth much as a person"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich hatte das Gefühl, nicht viel wert zu sein"

// Q18 - Stress
* #dass-dass21-q18 "I felt that I was rather touchy"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich merkte, dass ich ziemlich empfindlich war"

// Q19 - Anxiety
* #dass-dass21-q19 "I was aware of the action of my heart in the absence of physical exertion"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich nahm meinen Herzschlag wahr, ohne körperlich aktiv zu sein"

// Q20 - Anxiety
* #dass-dass21-q20 "I felt scared without any good reason"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich fürchtete mich ohne ersichtlichen Grund"

// Q21 - Depression
* #dass-dass21-q21 "I felt that life was meaningless"
  * ^designation[0].language = #de
  * ^designation[0].value = "Ich fand das Leben sinnlos"
