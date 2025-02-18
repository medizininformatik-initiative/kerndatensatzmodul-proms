// Metadata
RuleSet: ResourceMetadata(status, experimental, language)
* status = #{status}
* experimental = {experimental}
* language = #{language}

RuleSet: QuestionnaireMetadata(name, date, title, publisher)
* name = "{name}"
* title = "{title}"
* date = "{date}"
* publisher = "{publisher}"

// Concept, Weight and Translation
RuleSet: ConceptIntl(concept, display, language, translation)
* include {concept} "{display}"
  * ^designation[+].language = #{language}
  * ^designation[=].value = "{translation}"

RuleSet: ConceptWeightIntl(concept, display, weight, language, translation)
* include {concept} "{display}"
  * ^designation[+].language = #{language}
  * ^designation[=].value = "{translation}"
  * ^extension[+].url = $hl7-ordinal-value
  * ^extension[=].valueDecimal = {weight}

// Common Extensions
RuleSet: Translation(path, language, translation)
* {path}
  * extension[+].url = $hl7-translation
  * extension[=].extension[+].url = "lang"
  * extension[=].extension[=].valueCode = #{language}
  * extension[=].extension[+].url = "content"
  * extension[=].extension[=].valueString = "{translation}"

// Questionnaire
RuleSet: DescriptionIntl(description, language, translation)
* description = "{description}"
* insert Translation(description, {language}, {translation})

RuleSet: DisplayItemIntl(item, linkId, text, language, translation)
* {item}
  * linkId = "{linkId}"
  * text = "{text}"
  * type = #display
  * extension[+].url = $hl7-translation
  * extension[=].extension[+].url = "lang"
  * extension[=].extension[=].valueCode = #{language}
  * extension[=].extension[+].url = "content"
  * extension[=].extension[=].valueString = "{translation}"
  * extension[+].url = $sdc-questionnaire-display-category-ex
  * extension[=].valueCodeableConcept = $sdc-questionnaire-display-category#{category}
* insert ItemFlags({item}, false, false, true)

RuleSet: Item(item, linkId, code, type)
* {item}
  * linkId = "{linkId}"
  * text = "{text}"
  * type = #{type}

RuleSet: ItemIntl(item, linkId, prefix, code, type, text, language, translation)
* {item}
  * linkId = "{linkId}"
  * text = "{text}"
  * prefix = "{prefix}"
  * type = #{type}
  * extension[+].url = $hl7-translation
  * extension[=].extension[+].url = "lang"
  * extension[=].extension[=].valueCode = #{language}
  * extension[=].extension[+].url = "content"
  * extension[=].extension[=].valueString = "{translation}"

RuleSet: ItemAnswerSetIntl(item, linkId, prefix, code, type, answerValueSet, text, language, translation)
* {item}
  * linkId = "{linkId}"
  * text = "{text}"
  * prefix = "{prefix}"
  * code = {code}
  * type = #{type}
  * answerValueSet = Canonical({answerValueSet})
  * extension[+].url = $hl7-translation
  * extension[=].extension[+].url = "lang"
  * extension[=].extension[=].valueCode = #{language}
  * extension[=].extension[+].url = "content"
  * extension[=].extension[=].valueString = "{translation}"

RuleSet: ItemFlags(item, required, repeats, readOnly)
* {item}
  * required = {required}
  * repeats = {repeats}
  * readOnly = {readOnly}

// FHIR Structured Data Capture
RuleSet: ItemChoiceOrientation(item, orientation)
* {item}
  * extension[+].url = $sdc-questionnaire-choice-orientation-ex
  * extension[=].valueCode = #{orientation}

RuleSet: ItemColumnCount(item, count)
* {item}
  * extension[+].url = $sdc-questionnaire-column-count-ex
  * extension[=].valueInteger = {count}

RuleSet: ItemControl(item, type)
* {item}
  * extension[+].url = $sdc-questionnaire-item-control-ex
  * extension[=].valueCodeableConcept = $sdc-questionnaire-item-control#{type}

RuleSet: ItemDisplayCategory(item, category)
* {item}
  * extension[+].url = $sdc-questionnaire-display-category-ex
  * extension[=].valueCodeableConcept = $sdc-questionnaire-display-category#{category}

RuleSet: ItemEntryFormat(item, format)
* {item}
  * extension[+].url = $sdc-questionnaire-entry-format
  * extension[=].valueString = "{format}"

RuleSet: ItemAnswerSetRendering(item, orientation, control, count)
* insert ItemChoiceOrientation({item}, {orientation})
* insert ItemControl({item}, {control})
* insert ItemColumnCount({item}, {count})

RuleSet: ItemAnswerSetColumnRendering(item, count)
* insert ItemAnswerSetRendering({item}, horizontal, radio-button, {count})