An extension stating the direction in which a score is to be interpreted — whether higher values mean better or worse health. It uses the HL7 [measure-improvement-notation](https://terminology.hl7.org/6.5.0/CodeSystem-measure-improvement-notation.html) value set.

**Examples**

For the PHQ-9 the "healthy" end of the scale is 0 points and the "pathological" end is 27, so the PHQ-9 score carries `decrease` — a rising score indicates declining health or quality of life.

The EORTC QLQ-C30 has both function and symptom scales. On the function scales high values correspond to high physiological function, so those scales carry `increase` — a rising score indicates better health or function.

On the symptom scales high values correspond to a poor state of health, so those scales carry `decrease` — a rising score indicates worse health or more symptoms.
