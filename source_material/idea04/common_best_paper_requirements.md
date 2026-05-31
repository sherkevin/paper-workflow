# Common Best-Paper Reviewer Requirements

Use this file as the shared baseline for every reviewer lens in this directory. It does not replace `prompts/reviewer_template.md`; the main template remains the authoritative schema, scoring rubric, caps, execution order, and JSON contract.

This file must never be used as a mixed-lens review entrypoint. Pick exactly one `full_prompt_*.md` entrypoint for each review batch, then rely on `prompts/reviewer_template.md` for the shared schema.

## Non-Negotiable Shared Standard

Every reviewer lens must judge the paper against an EMNLP long-paper best-paper trajectory, not merely an acceptability threshold.

1. The paper must be substantial, original, completed, and concretely evaluated.
2. Every strength and weakness must be tied to evidence from the PDF, `docs/demand.md`, a named missing element, or a quoted section/table/figure.
3. Desk-reject checks, mandatory audits, scoring caps, and output JSON fields from `prompts/reviewer_template.md` must be completed unchanged.
4. Every lens must read `docs/demand.md §12`, the merged Chinese Best-Paper demand addendum from `docs/demand_cn.md`, and populate `best_paper_demand_compliance`.
5. No lens may relax requirements on page limit, self-contained main body, Limitations, anonymization, statistical rigor, recent SOTA baselines, ablations, reproducibility, figure/table readiness, or claim consistency.
6. Oral or best-paper readiness requires comprehensive evidence across method, experiments, novelty, writing, and responsible research. A paper cannot become best-paper-ready through one strong dimension alone.

## Lens Isolation Rule

Use exactly one lens per review batch. Do not combine lenses inside one review. To obtain multi-perspective coverage, run separate independent batches and aggregate their JSON outputs afterward.

If a review prompt contains two or more lens IDs in `{{REVIEWER_LENS}}`, treat that batch as invalid and restart with one `full_prompt_*.md` entrypoint.

