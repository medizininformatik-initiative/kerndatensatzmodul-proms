Instance: mii-cm-pro-bdi-ii-to-promis-depression-observation
InstanceOf: ConceptMap
Title: "ConceptMap to derive PROMIS Depression T-Score from BDI-II Observation"
Usage: #definition
//Source: $LNC#89209-1 "Beck Depression Inventory II total score [BDI]"
//Target: $LNC#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* status = #draft
* group[+]
* group[=].element[+].code = #0
* group[=].element[=].target.code = #34.9
* group[=].element[=].target.display = "34.9"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code =  #27
* group[=].element[=].target.code = #63.2
* group[=].element[=].target.equivalence = #equivalent

//..
