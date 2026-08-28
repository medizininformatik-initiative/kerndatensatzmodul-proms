// ValueSet zur generischen Ja/Nein-Antwortskala.
// SCHICHT: Modul-Infrastruktur — siehe mii-cs-pro-yes-no-answers.fsh.

ValueSet: MII_VS_PRO_Yes_No_Answers
Id: mii-vs-pro-yes-no-answers
Title: "MII VS PRO Yes/No Answers"
Description: "Generic binary yes/no answer options with ordinal weights (0 = no, 1 = yes). Shared across instruments whose validated response scale is a plain yes/no dichotomy."

* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-yes-no-answers"
* ^status = #active

* include codes from system MII_CS_PRO_Yes_No_Answers
