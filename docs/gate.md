# Submission Gate

Use this as the final stop/go checklist. If any P0 item is uncertain, the verdict is `WAITING`, not `PASS`.

## P0. Artifact Freeze

- The reviewed PDF is the exact PDF intended for upload.
- Build process is complete; no half-written PDF is being read.
- Hashes are recorded for main PDF, appendix PDF if any, supplement ZIP if any, and manifest.

## P0. Formatting And Anonymity

- Main content fits the venue page limit.
- Official style file is used without margin, font, spacing, or line-height hacks.
- Review mode and line numbers are correct when required.
- No acknowledgments in anonymous review version.
- No author names, institutions, email, local paths, account names, repo URLs, grants, hidden metadata, or self-identifying artifact paths.

## P0. Package Consistency

- Every appendix or supplement reference in the main paper is present in the actual upload package.
- If the venue expects one PDF, appendices are in that PDF.
- If the venue accepts a supplement ZIP, the ZIP contains all cited appendix material and passes manifest verification.
- OpenReview / submission metadata matches the current PDF title and abstract.

## P0. Citation Authenticity

Every bibliography entry must be verified against at least one authoritative source:

- ACL Anthology for ACL-family papers.
- DOI / publisher page for journals and non-ACL proceedings.
- arXiv page for arXiv-only work.
- Official benchmark / project page only as supplementary evidence, not as the sole scholarly source.

For each citation confirm: title, authors, year, venue, DOI / URL / arXiv ID, and the exact claim supported.

## P0. Claim Evidence

- Abstract and introduction state only evidence-backed claims.
- Main results prove the central claim without relying on private notes.
- Strong words such as `general`, `robust`, `comprehensive`, and `state-of-the-art` are used only when evidence supports that scope.
- Diagnostic or failed runs are not silently converted into positive evidence.

## P0. AI And Process Residue

- No assistant/user dialogue residue.
- No task-management vocabulary.
- No hidden instructions for reviewers or machines.
- No AI-generated citations or unverified related-work claims.
- AI assistance disclosure, if needed, is precise and author-responsibility centered.

## P1. Presentation Readiness

- First page makes the contribution memorable.
- Main table is a benchmark table, not a lab log.
- Method terms are stable across title, abstract, figures, tables, and appendix.
- Figures are readable on A4, preferably vector, and not decorative.
- Limitations are concise and placed correctly.

## Verdict Labels

- `PASS`: all P0 pass and P1 issues are acceptable polish.
- `WAITING`: any author/legal/form field or package fact is not yet confirmed.
- `FAIL`: any P0 violation is observed.

