<!-- markdownlint-disable MD041 -->
<!-- Source: kerndatensatz-basis input/pagecontent/examples.md.
     German mirror: input/translations/de/pagecontent/examples.md. -->
This page lists the example instances of the **PRO** module. The
template ships the synthetic example
[Max Mustermann-Testpatient](Patient-mii-exa-pro-patient.html).

{:.bg-warning}
**Synthetic data only** — never use real or realistic-looking patient data in
examples.

Every implemented instrument ships worked examples: a completed
[QuestionnaireResponse](artifacts.html) per
questionnaire and, where the instrument defines scores, the corresponding
score [Observations](artifacts.html). All response
sets are cross-checked **item-accurately** against the questionnaires'
`answerOption`s — every answer coding in an example is a legal option of
exactly that item, with matching display and ordinal weight.

The full list is on the [artifacts page](artifacts.html); each instrument's
narrative page links its own examples in context.
