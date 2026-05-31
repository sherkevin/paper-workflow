# Project Structure

Use this structure for new paper projects initialized from this template.

```text
article/
  latex/                 # buildable paper sources
  build/                 # generated PDFs; do not store unique evidence only here
artifacts/
  experiments/           # raw outputs, metrics, run directories
  reviews/               # independent reviewer batches
  submission/            # frozen upload packages, manifests, hashes
  tmp/                   # disposable renders and extracts
docs/
  coordination/          # TODO files and role state
  scientist/             # writing analyses and handoffs
  engineer/              # runbooks, logs, result summaries
  reviewer/              # review handoffs and gate reports
  paper/                 # metadata, citation audits, page budgets
prompts/
  reviewer_templates/    # strict review prompts and lenses
scripts/
  build/                 # build helpers
  audit/                 # residue, citation, package checks
configs/
  experiments/           # experiment configs
```

Boundaries:

- `article/` is for buildable paper inputs and generated PDFs.
- `artifacts/experiments/` is for evidence, not prose claims.
- `docs/coordination/` is for state only.
- `docs/<role>/` is for substantial role-authored documents.
- `artifacts/submission/` is the only place for frozen upload packages.

