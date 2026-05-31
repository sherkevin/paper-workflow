# Paper Writer Template

Purpose: initialize a serious conference-paper project with the operating discipline learned from late-stage NeurIPS / EMNLP submission work: evidence-first claims, clean writing, real citations, reproducible experiments, AI-trace hygiene, and package-level submission gates.

This is not a LaTeX-only template. It is a project-control template for writing papers that can survive strict area-chair review.

## What This Template Optimizes For

- A memorable scientific object, not a bag of tricks.
- Main claims that are proven in the main paper.
- Experiments that are broad enough for the headline claim.
- Tables that look like final evidence, not batch logs.
- Limitations that are honest but not self-defeating.
- Citations that are real, verified, and claim-aligned.
- No internal process vocabulary, chat residue, hidden assistant text, stale paths, or placeholder metadata.
- A final package where PDF, appendix, supplement, metadata, and manifest agree.

## How To Start A New Paper

1. Copy this whole folder to a new project folder.
2. Rename the copied folder to the paper codename.
3. Read `AGENTS.md`, then fill:
   - `templates/paper/one_sentence_contract.md`
   - `templates/paper/experiment_matrix.md`
   - `templates/todo/SCIENTIST_TODO.md`
4. Run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/new-paper-project.ps1 -ProjectRoot <new-project-path>
```

5. Do not write the abstract first. Fill the one-sentence contract, evidence plan, and close-prior-work table first.

## Directory Map

| Path | Purpose |
|---|---|
| `AGENTS.md` | Operating instructions for future coding / writing agents. |
| `.cursor/rules/paper-writer-template.mdc` | Cursor rule version of the same operating discipline. |
| `docs/` | Distilled standards, not project-specific notes. |
| `checklists/` | Start, evidence, AI-trace, citation, and final package gates. |
| `templates/paper/` | Reusable paper skeletons and tables. |
| `templates/todo/` | Scientist / engineer / reviewer TODO files for role-safe work. |
| `prompts/` | Writer, reviewer, and handoff prompts. |
| `scripts/` | Lightweight surface checks and manifest utilities. |
| `source_material/` | Source snapshots from the project that produced this template. Use for audit, not for copy-paste into a new paper. |

## Golden Rule

Do not ask prose to hide weak evidence. If the main claim is not supported, improve the method, evaluation, baselines, statistics, or dataset choice before polishing the title and abstract.

