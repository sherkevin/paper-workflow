# Best-Paper Writing Standard

The target is not merely "formatted correctly." A best-paper-calibrated paper should make a reviewer feel that the field has a new object, lens, benchmark, or mechanism.

## Paper Shape

1. Field assumption.
2. Failure mode of that assumption.
3. Named object or lens.
4. Mechanism that changes what is computed or measured.
5. Controlled evidence broad enough for the claim.
6. Ablation or intervention that explains why.
7. Error analysis that shows boundary and insight.
8. Reproducible artifact and verified citations.

## Title

Good titles name an object and a conceptual action:

```text
<Named Object>: <Conceptual Operation> for <Problem>
When <Assumption> Fails: <Named Object> for <Problem>
<Mechanism> <Verb Phrase>: <Lens> for <Phenomenon>
```

Avoid:

- `Towards...`
- `A Study of...`
- `Improving X with Y`
- internal implementation names;
- local protocol details;
- boundary explanations in the title.

## Abstract

Target: 6-8 sentences, 150-220 words.

1. Field practice.
2. Gap or failure mode.
3. Named method / lens and conceptual shift.
4. Mechanism in one sentence.
5. Evidence breadth.
6. One compact headline result.
7. Mechanistic finding.
8. Durable implication.

Do not put limitations-style narrowing in the first half. Do not list many deltas. Do not say the work is "only" or "preliminary."

## Eight-Page Long-Paper Budget

| Section | Target |
|---|---:|
| Title + abstract | 0.25-0.35 pages |
| Introduction | 1.00-1.25 pages |
| Related work / background | 0.60-0.90 pages |
| Method | 1.50-2.20 pages |
| Experimental setup | 0.50-0.75 pages |
| Main results | 1.25-1.75 pages |
| Analysis / ablation / robustness | 0.80-1.20 pages |
| Conclusion | 0.25-0.40 pages |
| Main body total | 7.75-8.00 pages |
| Limitations | outside main body if venue allows |

Underfilled drafts should receive missing evidence, setup clarity, ablations, or error analysis. Do not pad with roadmap prose or defensive caveats.

## Tables And Figures

- Main table: full-run or accepted benchmark evidence, not smoke runs.
- Ablation table: one mechanism per row; no mixed bundles if claiming causality.
- Robustness table/figure: seeds, prompt variants, context budget, scorer audit, or model transfer.
- Error analysis: quantitative taxonomy plus representative cases.
- Figure 1: show the actual problem or mechanism, not a decorative pipeline.
- Captions: what is shown and why it matters for the claim.

## Tone

Use confident, evidence-bound verbs:

- introduce;
- show;
- isolate;
- reveal;
- evaluate;
- compare;
- quantify.

Avoid filler:

- `plays a crucial role`;
- `not only ... but also`;
- `delve`;
- `underscore`;
- `paves the way`;
- `robust and comprehensive` unless earned by evidence.

