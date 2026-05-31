# Scientist To Engineer Handoff Prompt

Use this when experiments or code are needed for a paper claim.

Engineer task:

```text
Run or implement <task> for claim <claim>.
```

Required inputs:

- Paper claim being tested:
- Dataset / split / sample IDs:
- Baselines:
- Method variants:
- Model / endpoint:
- Metrics:
- Statistical test:
- Output root:
- Runtime constraints:
- Non-claims:

Acceptance criteria:

- Raw inputs, raw outputs, parsed outputs, metrics, configs, seeds, commands, and logs are persisted.
- Checkpoint/resume behavior is documented.
- Result summary states trusted claims, non-claims, caveats, and paper-safe wording.
- Negative or weak results are preserved, not relabeled.
- The scientist can cite the result without reading terminal output.

Report format:

- What ran.
- Where artifacts live.
- What metrics landed.
- What can enter the paper.
- What must not enter the paper.
- What remains blocked.

