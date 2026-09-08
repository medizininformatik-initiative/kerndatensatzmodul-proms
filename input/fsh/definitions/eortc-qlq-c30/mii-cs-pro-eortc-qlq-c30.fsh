CodeSystem: MII_CS_PRO_EORTC_QLQ_C30
Id: mii-cs-pro-eortc-qlq-c30
Title: "MII CS PRO EORTC QLQ-C30 Response Scale"
Description: "Response scale for EORTC QLQ-C30 questionnaire items with multilingual support"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eortc-qlq-c30"
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete

// Standard 4-point scale for most items (Q1-5, Q8-28)
* #not-at-all "Not at all"
* #not-at-all ^property[+].code = #itemWeight
* #not-at-all ^property[=].valueDecimal = 1
  * ^designation[0].language = #de
  * ^designation[0].value = "Überhaupt nicht"
* #a-little "A little" 
* #a-little ^property[+].code = #itemWeight
* #a-little ^property[=].valueDecimal = 2
  * ^designation[0].language = #de
  * ^designation[0].value = "Wenig"
* #quite-a-bit "Quite a bit"
* #quite-a-bit ^property[+].code = #itemWeight
* #quite-a-bit ^property[=].valueDecimal = 3
  * ^designation[0].language = #de
  * ^designation[0].value = "Mäßig"
* #very-much "Very much"
* #very-much ^property[+].code = #itemWeight
* #very-much ^property[=].valueDecimal = 4
  * ^designation[0].language = #de
  * ^designation[0].value = "Sehr"

// Yes/No scale for role functioning items (Q6-7)
* #not-at-all-role "Not at all"
  * ^designation[0].language = #de
  * ^designation[0].value = "Überhaupt nicht"
* #a-little-role "A little"
  * ^designation[0].language = #de
  * ^designation[0].value = "Wenig"
* #quite-a-bit-role "Quite a bit" 
  * ^designation[0].language = #de
  * ^designation[0].value = "Mäßig"
* #very-much-role "Very much"
  * ^designation[0].language = #de
  * ^designation[0].value = "Sehr"

// 7-point scale for global health/QoL items (Q29-30)
* #1-very-poor "1 - Very poor"
* #1-very-poor ^property[+].code = #itemWeight
* #1-very-poor ^property[=].valueDecimal = 1
  * ^designation[0].language = #de
  * ^designation[0].value = "1 - Sehr schlecht"
* #2-poor "2 - Poor"  
* #2-poor ^property[+].code = #itemWeight
* #2-poor ^property[=].valueDecimal = 2
  * ^designation[0].language = #de
  * ^designation[0].value = "2 - Schlecht"
* #3-fair "3 - Fair"
* #3-fair ^property[+].code = #itemWeight
* #3-fair ^property[=].valueDecimal = 3
  * ^designation[0].language = #de
  * ^designation[0].value = "3 - Mittelmäßig"
* #4-good "4 - Good"
* #4-good ^property[+].code = #itemWeight
* #4-good ^property[=].valueDecimal = 4
  * ^designation[0].language = #de
  * ^designation[0].value = "4 - Gut"
* #5-very-good "5 - Very good"
* #5-very-good ^property[+].code = #itemWeight
* #5-very-good ^property[=].valueDecimal = 5
  * ^designation[0].language = #de
  * ^designation[0].value = "5 - Sehr gut"
* #6-excellent "6 - Excellent"
* #6-excellent ^property[+].code = #itemWeight
* #6-excellent ^property[=].valueDecimal = 6
  * ^designation[0].language = #de
  * ^designation[0].value = "6 - Ausgezeichnet"
* #7-perfect "7 - Perfect"
* #7-perfect ^property[+].code = #itemWeight
* #7-perfect ^property[=].valueDecimal = 7
  * ^designation[0].language = #de
  * ^designation[0].value = "7 - Vollkommen"