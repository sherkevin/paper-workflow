# 30 Citation Truth Audit

Every citation gets a row. Do not skip this.

| Key | Paper title | Primary source URL / DOI / arXiv | Metadata verified | Claim supported | Risk | Action |
|---|---|---|---|---|---|---|
| | | | | | | |

Metadata checklist:

- [ ] Title.
- [ ] Authors.
- [ ] Year.
- [ ] Venue or arXiv status.
- [ ] DOI / ACL Anthology ID / arXiv ID.
- [ ] Benchmark / model / dataset identity if cited for a resource.

Claim-support checklist:

- [ ] The cited paper actually makes the claim.
- [ ] The sentence does not overgeneralize beyond the cited paper.
- [ ] The paper is not cited only as decoration.
- [ ] Close related work is described accurately before contrast.

Risk labels:

- `low`: ACL Anthology / DOI proceedings / journal, title and role verified.
- `medium`: arXiv-only or recent work, version and scope verified.
- `high`: blog, unofficial summary, unstable leaderboard, or unclear claim support.
- `critical`: no primary source or generated-from-memory citation. Remove or replace.

