# Operating Principles

## 1. One Contract Before Writing

Every paper starts with a one-sentence contract:

```text
Current work assumes X, but this fails under Y; we introduce Z, which changes the unit of analysis from A to B, and show across C that it yields D.
```

If this sentence is weak, do not write the abstract. Fix the scientific object first.

## 2. Evidence Determines Claim Strength

| Claim | Required evidence |
|---|---|
| Local matched improvement | Same model / data / scorer / budget, full split or justified slice, confidence interval. |
| General method superiority | Multiple datasets, current baselines, ablations, robustness. |
| SOTA | Official or exactly reproduced public protocol, strongest current baselines, significance and compute accounting. |
| Mechanistic explanation | Isolated ablation plus intervention, traces, or error taxonomy. |
| Resource value | Construction protocol, quality audit, baseline failures, release plan. |

Rule: prose cannot promote evidence to a higher tier.

## 3. Write From Altitude

Main paper prose should explain the scientific object and the evidence contract. It should not expose:

- run IDs;
- local execution lanes;
- project-management status;
- resource scarcity;
- failed draft history;
- reviewer-response mechanics.

Those belong in internal notes, not the paper.

## 4. Limitations Are Boundaries, Not Confessions

A good limitation says what population the claim covers and what population it does not cover. It does not say the work is unfinished, under-resourced, rushed, or rescued by future work.

## 5. Integrity Is A P0 Gate

The fastest way to lose trust is a false reference, unsupported citation, stale appendix link, or hidden process term. Treat these as correctness bugs, not polish.

