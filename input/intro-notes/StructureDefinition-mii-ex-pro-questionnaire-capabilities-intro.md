Defining questionnaires for different uses and purposes — with respect to collection, processing and display — requires a way to express the characteristics and abilities (*capabilities*) that go with them. See [Questionnaire capabilities](questionnaire-capabilities.html) for the fuller discussion.

This extension therefore defines the following capabilities for a questionnaire:

1. `displayable`: how data and results are **shown**
2. `collectable`: how data is **entered** by users
3. `populatable`: how existing data is **loaded**
4. `calculatable`: how scores are **computed** from data
5. `extractable`: how data is **transferred** from the questionnaire format into other FHIR resources

The capabilities can be used **individually or in combination**, depending on the concrete scenario. They are implemented as separate boolean sub-extensions, which allows flexible combinations since several capabilities can be active at once.
