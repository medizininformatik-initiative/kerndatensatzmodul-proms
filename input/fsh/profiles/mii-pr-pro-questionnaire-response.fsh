Profile: MII_PR_PRO_QuestionnaireResponse
Parent: http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse
Id: mii-pr-pro-questionnaire-response
Title: "MII PR PRO QuestionnaireResponse"  
Description: "MII PR PRO QuestionnaireResponse, based on the FHIR Structure Data Capture Specification"


* insert PR_CS_VS_Version
* ^status = #active
* language 1..1 MS
* language ^short = "Sprache der Antwortinhalte"
* language ^definition = "Verpflichtend, damit die Sprache von item.text und Antwort-Displays maschinenlesbar feststeht. Deutsche Inhalte: language = de. Anderssprachige Inhalte: deutsche Übersetzung über die translation-Extension (siehe Invarianten)."

// Item-Texte und Antwort-Displays sind verpflichtend und müssen auf Deutsch
// verfügbar sein — entweder als Primärsprache (language = de) oder über die
// translation-Extension. Die Constraints gelten über die contentReference
// auch für verschachtelte Items und answer.item.
* item MS
* item.text 1..1 MS
* item.text ^short = "Wortlaut des Items, wie er der antwortenden Person präsentiert wurde"
* item.text.extension contains http://hl7.org/fhir/StructureDefinition/translation named translation 0..* MS
* item.text obeys mii-pro-qr-de-text
* item.answer MS
* item.answer.value[x] MS
* item.answer.valueCoding.display 1..1 MS
* item.answer.valueCoding.display ^short = "Wortlaut der gewählten Antwort"
* item.answer.valueCoding.display.extension contains http://hl7.org/fhir/StructureDefinition/translation named translation 0..* MS
* item.answer.valueCoding.display obeys mii-pro-qr-de-display
Invariant: mii-pro-qr-de-text
Severity: #error
Description: "Der Item-Text muss auf Deutsch verfügbar sein: entweder ist die Ressourcensprache Deutsch (language beginnt mit 'de') oder der Text trägt eine translation-Extension mit lang = de."
* expression = "%resource.language.startsWith('de') or extension('http://hl7.org/fhir/StructureDefinition/translation').extension.where(url = 'lang' and value.startsWith('de')).exists()"

Invariant: mii-pro-qr-de-display
Severity: #error
Description: "Das Antwort-Display muss auf Deutsch verfügbar sein: entweder ist die Ressourcensprache Deutsch (language beginnt mit 'de') oder das Display trägt eine translation-Extension mit lang = de."
* expression = "%resource.language.startsWith('de') or extension('http://hl7.org/fhir/StructureDefinition/translation').extension.where(url = 'lang' and value.startsWith('de')).exists()"
