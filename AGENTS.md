# Paper Project Agent Rules

These rules apply to every future paper project initialized from this template.

## TODO Discipline

For every substantive paper, experiment, review, or submission task:

1. Add a row to the owning TODO file before starting.
2. Break the task into concrete acceptance criteria.
3. Update status as work moves through `TODO`, `RUNNING`, `WAITING`, `BLOCKED`, `DONE`, or `SUPERSEDED`.
4. Link to files, commands, hashes, or artifacts when closing the row.
5. Do not leave key decisions only in chat or terminal output.

Default ownership:

- Scientist: paper claims, writing, method framing, figures/tables, citation interpretation, final package decision.
- Engineer: code, experiments, execution, logs, metrics, reproducibility, package preflight.
- Reviewer: independent strict review, AI-trace audit, desk-reject and score-cap checks.
- User/PI: author list, legal declarations, paid budget, strategic claim pivots, final submission action.

## Scientific Claim Rules

- The main paper must prove the main claim. Appendix evidence can deepen, not rescue, the headline.
- Do not convert a weak or slice-local result into the main contribution by shrinking the claim until it is trivially true.
- If the intended claim is broad, the evidence must be broad. If the evidence is narrow, the claim must be precise without sounding apologetic.
- Failed or diagnostic runs are preserved as evidence boundaries; they are not silently promoted.
- Do not claim SOTA unless the protocol, baselines, statistics, and leaderboard / reproduced comparison justify it.

## Writing Rules

- Write like a finished scientific paper, not like an experiment log.
- Abstract: problem, gap, named method/lens, mechanism, evidence breadth, one or two headline numbers, reusable lesson.
- Introduction: field-level assumption first, concrete failure mode second, central insight third.
- Method: stable terms, inputs, outputs, update rules, stopping rule, implementation contract.
- Experiments: setup, main result, breadth, ablation, robustness, error analysis.
- Conclusion: one durable lesson. No new claims.
- Limitations: concise scope boundaries and risks. No apologies, no internal resource constraints, no future-work dump.

## Banned Paper-Surface Vocabulary

Do not let these appear in the paper, appendix, supplement README, or submission metadata unless they are genuinely part of the scientific method:

`TODO`, `FIXME`, `pending`, `placeholder`, `current batch`, `no-paid`, `paid lane`, `quota`, `fallback`, `workaround`, `promotion gate`, `paper-facing`, `submission-ready`, `reviewer cap`, `best-paper cap`, internal task IDs, local paths, commit hashes, `Codex`, `Cursor`, `ChatGPT`, `Claude`, `assistant`, `according to your request`, `as requested`, `generated draft`, `copy this into`, `run this script`.

Preferred scientific replacements:

- `matched protocol`
- `fixed-backbone evaluation`
- `deterministic evaluation setting`
- `scope boundary`
- `diagnostic experiment`
- `ablation`
- `sensitivity analysis`
- `reproducibility artifact`
- `release package`

## Citation Integrity

- Every reference must be real and verified against a primary source.
- Every citation must support the sentence where it appears.
- No decorative citations.
- No fabricated venues, arXiv IDs, titles, author lists, benchmarks, or claims.
- If a citation came from an AI tool or memory, treat it as untrusted until verified.

## Final Package Rule

The package is not ready until:

- main PDF is rebuilt and hash-recorded;
- appendix / supplement dependencies are present in the actual upload package;
- title, abstract, TL;DR, keywords, and metadata match the PDF;
- manifest verifies from the package root and from an extracted copy;
- residue scans pass over paper, appendix, supplement, and metadata;
- author/legal/resubmission/preprint/AI-review fields are confirmed by the submitter.

