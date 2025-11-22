// ===== PROMIS Response Scale ValueSets =====

// Physical Function Response Scale (LOINC LL1022-4)
ValueSet: MII_VS_PRO_PROMIS_Physical_Function_Response_Scale
Id: mii-vs-pro-promis-physical-function-response-scale
Title: "MII VS PRO PROMIS Physical Function Response Scale"
Description: "PROMIS Physical Function response scale based on LOINC LL1022-4"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* ^language = #en
* ^compose.include.system = $LNC
* ^compose.include.concept[+].code = #LA13921-4
* ^compose.include.concept[=].display = "Without any difficulty"
* ^compose.include.concept[=].designation[+].language = #de
* ^compose.include.concept[=].designation[=].value = "Ohne jede Schwierigkeiten"
* ^compose.include.concept[+].code = #LA13918-0
* ^compose.include.concept[=].display = "With a little difficulty"
* ^compose.include.concept[=].designation[+].language = #de
* ^compose.include.concept[=].designation[=].value = "Mit geringen Schwierigkeiten"
* ^compose.include.concept[+].code = #LA13920-6
* ^compose.include.concept[=].display = "With some difficulty"
* ^compose.include.concept[=].designation[+].language = #de
* ^compose.include.concept[=].designation[=].value = "Mit einigen Schwierigkeiten"
* ^compose.include.concept[+].code = #LA13919-8
* ^compose.include.concept[=].display = "With much difficulty"
* ^compose.include.concept[=].designation[+].language = #de
* ^compose.include.concept[=].designation[=].value = "Mit großen Schwierigkeiten"
* ^compose.include.concept[+].code = #LA13912-3
* ^compose.include.concept[=].display = "Unable to do"
* ^compose.include.concept[=].designation[+].language = #de
* ^compose.include.concept[=].designation[=].value = "Kann ich gar nicht"

// Frequency Response Scale (LOINC LL1016-6)
ValueSet: MII_VS_PRO_PROMIS_Frequency_Response_Scale
Id: mii-vs-pro-promis-frequency-response-scale
Title: "MII VS PRO PROMIS Frequency Response Scale"
Description: "PROMIS Frequency response scale based on LOINC LL1016-6"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* ^language = #en
* ^compose.include.system = $LNC
* ^compose.include.concept[+].code = #LA6270-8
* ^compose.include.concept[=].display = "Never"
* ^compose.include.concept[=].designation[+].language = #de
* ^compose.include.concept[=].designation[=].value = "Nie"
* ^compose.include.concept[+].code = #LA10066-1
* ^compose.include.concept[=].display = "Rarely"
* ^compose.include.concept[=].designation[+].language = #de
* ^compose.include.concept[=].designation[=].value = "Selten"
* ^compose.include.concept[+].code = #LA10082-8
* ^compose.include.concept[=].display = "Sometimes"
* ^compose.include.concept[=].designation[+].language = #de
* ^compose.include.concept[=].designation[=].value = "Manchmal"
* ^compose.include.concept[+].code = #LA10044-8
* ^compose.include.concept[=].display = "Often"
* ^compose.include.concept[=].designation[+].language = #de
* ^compose.include.concept[=].designation[=].value = "Oft"
* ^compose.include.concept[+].code = #LA9933-8
* ^compose.include.concept[=].display = "Always"
* ^compose.include.concept[=].designation[+].language = #de
* ^compose.include.concept[=].designation[=].value = "Immer"

// Pain Intensity Numeric Scale (LOINC)
ValueSet: MII_VS_PRO_PROMIS_Pain_Intensity_Numeric_Scale
Id: mii-vs-pro-promis-pain-intensity-numeric-scale
Title: "MII VS PRO PROMIS Pain Intensity Numeric Scale"
Description: "PROMIS Pain Intensity numeric scale: 0-10"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* ^language = #en
* ^compose.include.system = $LNC
* ^compose.include.concept[+].code = #LA6111-4
* ^compose.include.concept[=].display = "0"
* ^compose.include.concept[=].designation[+].language = #de
* ^compose.include.concept[=].designation[=].value = "0 - Keine Schmerzen"
* ^compose.include.concept[+].code = #LA6112-2
* ^compose.include.concept[=].display = "1"
* ^compose.include.concept[+].code = #LA6113-0
* ^compose.include.concept[=].display = "2"
* ^compose.include.concept[+].code = #LA6114-8
* ^compose.include.concept[=].display = "3"
* ^compose.include.concept[+].code = #LA6115-5
* ^compose.include.concept[=].display = "4"
* ^compose.include.concept[+].code = #LA6116-3
* ^compose.include.concept[=].display = "5"
* ^compose.include.concept[+].code = #LA6117-1
* ^compose.include.concept[=].display = "6"
* ^compose.include.concept[+].code = #LA6118-9
* ^compose.include.concept[=].display = "7"
* ^compose.include.concept[+].code = #LA6119-7
* ^compose.include.concept[=].display = "8"
* ^compose.include.concept[+].code = #LA6120-5
* ^compose.include.concept[=].display = "9"
* ^compose.include.concept[+].code = #LA13942-9
* ^compose.include.concept[=].display = "10"
* ^compose.include.concept[=].designation[+].language = #de
* ^compose.include.concept[=].designation[=].value = "10 - Schlimmste vorstellbare Schmerzen"
