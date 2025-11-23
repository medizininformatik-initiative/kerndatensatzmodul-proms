// ===== PROMIS-29 T-Score ObservationDefinitions =====

// Physical Function T-Score
Instance: mii-obsdef-pro-promis-29-physical-function-tscore
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO PROMIS-29 Physical Function T-Score"
Description: "PROMIS Physical Function T-Score from PROMIS-29 Profile v2.1"
Usage: #definition

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#91721-1 "PROMIS physical function - version 2.0 T-score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method.text = "PROMIS-29 Profile v2.1"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #reference
* qualifiedInterval.range.low.value = 20
* qualifiedInterval.range.high.value = 80
* qualifiedInterval.context.text = "PROMIS T-Score metric (Mean=50, SD=10)"
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate better physical function"

// Anxiety T-Score
Instance: mii-obsdef-pro-promis-29-anxiety-tscore
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO PROMIS-29 Anxiety T-Score"
Description: "PROMIS Anxiety T-Score from PROMIS-29 Profile v2.1"
Usage: #definition

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#71967-4 "PROMIS-29 Anxiety score T-score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method.text = "PROMIS-29 Profile v2.1"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #reference
* qualifiedInterval.range.low.value = 20
* qualifiedInterval.range.high.value = 80
* qualifiedInterval.context.text = "PROMIS T-Score metric (Mean=50, SD=10)"
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate more anxiety"

// Depression T-Score (already exists as mii-obsdef-pro-depression-t-score, but adding PROMIS-29 specific one)
Instance: mii-obsdef-pro-promis-29-depression-tscore
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO PROMIS-29 Depression T-Score"
Description: "PROMIS Depression T-Score from PROMIS-29 Profile v2.1"
Usage: #definition

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method.text = "PROMIS-29 Profile v2.1"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #reference
* qualifiedInterval.range.low.value = 20
* qualifiedInterval.range.high.value = 80
* qualifiedInterval.context.text = "PROMIS T-Score metric (Mean=50, SD=10)"
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate more depression"

// Fatigue T-Score
Instance: mii-obsdef-pro-promis-29-fatigue-tscore
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO PROMIS-29 Fatigue T-Score"
Description: "PROMIS Fatigue T-Score from PROMIS-29 Profile v2.1"
Usage: #definition

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#77864-7 "PROMIS fatigue - version 1.0 Tscore"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method.text = "PROMIS-29 Profile v2.1"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #reference
* qualifiedInterval.range.low.value = 20
* qualifiedInterval.range.high.value = 80
* qualifiedInterval.context.text = "PROMIS T-Score metric (Mean=50, SD=10)"
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate more fatigue"

// Sleep Disturbance T-Score
Instance: mii-obsdef-pro-promis-29-sleep-disturbance-tscore
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO PROMIS-29 Sleep Disturbance T-Score"
Description: "PROMIS Sleep Disturbance T-Score from PROMIS-29 Profile v2.1"
Usage: #definition

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#77860-5 "PROMIS sleep disturbance - version 1.0 Tscore"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method.text = "PROMIS-29 Profile v2.1"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #reference
* qualifiedInterval.range.low.value = 20
* qualifiedInterval.range.high.value = 80
* qualifiedInterval.context.text = "PROMIS T-Score metric (Mean=50, SD=10)"
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate more sleep disturbance"

// Social Function T-Score
Instance: mii-obsdef-pro-promis-29-social-function-tscore
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO PROMIS-29 Social Function T-Score"
Description: "PROMIS Ability to Participate in Social Roles and Activities T-Score from PROMIS-29 Profile v2.1"
Usage: #definition

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#77854-8 "PROMIS ability to participate in social roles and activities - version 2.0 Tscore"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method.text = "PROMIS-29 Profile v2.1"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #reference
* qualifiedInterval.range.low.value = 20
* qualifiedInterval.range.high.value = 80
* qualifiedInterval.context.text = "PROMIS T-Score metric (Mean=50, SD=10)"
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate better social function"

// Pain Interference T-Score
Instance: mii-obsdef-pro-promis-29-pain-interference-tscore
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO PROMIS-29 Pain Interference T-Score"
Description: "PROMIS Pain Interference T-Score from PROMIS-29 Profile v2.1"
Usage: #definition

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#77865-4 "PROMIS pain interference - version 1.0 Tscore"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method.text = "PROMIS-29 Profile v2.1"
* quantitativeDetails.unit = $UCUM#{score} "score"
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval.category = #reference
* qualifiedInterval.range.low.value = 20
* qualifiedInterval.range.high.value = 80
* qualifiedInterval.context.text = "PROMIS T-Score metric (Mean=50, SD=10)"
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate more pain interference"

// Pain Intensity (Single Item - 0-10 scale, not a T-score)
Instance: mii-obsdef-pro-promis-29-pain-intensity
InstanceOf: mii-pr-pro-score-blueprint
Title: "MII ObsDef PRO PROMIS-29 Pain Intensity"
Description: "PROMIS Pain Intensity single item from PROMIS-29 Profile v2.1"
Usage: #definition

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = $LNC#75261-8 "How intense was your average pain in the past 7 days [PROMIS]"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* method.text = "PROMIS-29 Profile v2.1 - Pain Intensity single item"
* quantitativeDetails.unit = $UCUM#1 "1"
* quantitativeDetails.decimalPrecision = 0
* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 0
* qualifiedInterval.range.high.value = 10
* qualifiedInterval.context.text = "Pain intensity scale 0-10"
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher scores indicate more pain"