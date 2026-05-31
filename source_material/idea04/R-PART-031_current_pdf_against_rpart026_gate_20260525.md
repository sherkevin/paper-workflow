# R-PART-031 Current PDF Against R-PART-026 Final EMNLP Gate

Date: 2026-05-25
Reviewer stance: strict final submission-ready gate
Gate: `docs/reviewer/handoffs/R-PART-026_final_emnlp_submission_ready_writing_gate_20260525.md`

## Reviewed Snapshot

This review scores the latest stable PDF snapshot captured after `S-497` stopped
moving the paper build. During the review, `article/build/edo_paper.pdf` was
briefly being written by `latexmk` / `pdflatex`, producing an unreadable
half-written PDF. That transient file is not scored. The only scored snapshot is
the stable copy below.

| Item | Snapshot | SHA-256 / metadata |
|---|---|---|
| Main PDF | `artifacts/tmp/rpart031_final_gate_20260525/edo_paper_snapshot.pdf` | `0C7F6EB8FD5C74752E2D9EE1EE74635524B89B22BF9F3DBFB10D4FF4E812EC66` |
| Main source | `article/latex/edo_paper.tex` | `8C9914D87D2B303B0EF6EC6F5B985E7DC3E1B06ACA4C88952DE2E8028B0AA643` |
| Separate appendix PDF on disk | `article/build/edo_appendix.pdf` | `BEF926004A15C2F76944ED94C681194766B5F56D66563330D713017886F308D9`; 8 pages |
| Evidence root | `artifacts/tmp/rpart031_final_gate_20260525/` | `pdfinfo`, `pdffonts`, text extracts, scans, `aclpubcheck`, and rendered pages |

Main PDF metadata: 10 pages, A4, PDF 1.5, empty visible `Author`, unencrypted,
all inspected fonts embedded Type 1 subsets, no Type 3 font detected.

## Final Verdict

**WAITING / not final-pass under R-PART-026. Do not click final Submit for this
package yet.**

The manuscript itself is now close to a normal EMNLP-ready surface: anonymous
title block, professional limitations, no visible `no-paid` / process residue,
readable main evidence tables, and a much better paper-facing narrative. But
R-PART-026 is a submission gate, not a writing-quality score. The gate cannot
PASS while the upload package, OpenReview metadata, citation audit, and final
legal declarations remain unresolved.

The most important current blocker is package consistency: the scored main PDF
references Appendix B and Appendix D, but those appendices are not present inside
the scored main PDF. A separate appendix PDF exists on disk, so this is fixable,
but the submission package must explicitly include the anonymized appendix /
supplement and its metadata must match the main-paper references.

## P0 Gate Results

| Gate area | Status | Finding |
|---|---:|---|
| Exact artifact freeze | PASS for this review | Stable main snapshot is frozen at hash `0C7F6EB8...`; earlier half-written copied PDF was discarded after `latexmk` finished. |
| Correct venue path | WAITING | Previous browser work selected `Preferred Venue = EMNLP`, but the live form must be rechecked before submit because the current PDF title/abstract changed after that form fill. |
| Page limit and structure | PASS with pubcheck caveat | Main technical content ends on page 8; `Limitations` starts on page 8 before References. Main PDF total is 10 pages including references. |
| PDF health and fonts | PASS | `pdfinfo`, `pdffonts`, `pdftotext`, and page rendering succeeded for the stable snapshot; no Type 3 fonts observed. |
| Anonymous review surface | PASS | Title block is anonymous; focused scan found no author names, institution names, personal email, local paths, GitHub username, grants, or acknowledgments in inspected main PDF/source surfaces. |
| Appendix / supplement consistency | WAITING / potential P0 | Main PDF cites Appendix B/D at extracted lines 601, 753, 824, 859, and 932, but the main PDF has no appendix sections before References. Uploading only `edo_paper.pdf` would leave reviewers without cited reproducibility and selector-control material. |
| OpenReview metadata match | WAITING / potential P0 | Current PDF title is `Roles Are Earned, Not Assigned, in Multi-Agent Reasoning`; current abstract ends with `measurably earned from accepted evidence`. The earlier R-PART-030 form state used older title/abstract unless it has since been refilled. |
| Citation existence and alignment | WAITING | `custom.bib` has 63 entries. Local residue scan found only the legitimate HuggingGPT title containing `ChatGPT`; this is not a full authoritative existence and claim-alignment audit. |
| Author/legal/resubmission declarations | WAITING | These cannot be certified from the PDF. Submitter must still confirm author consent, resubmission/preprint state, license, data/code, responsible NLP, conflicts, visa, and AI-reviewing-experiment fields. |
| Assistant/process residue | PASS for inspected paper surface | Focused scans found no `TODO`, `FIXME`, `no-paid`, local paths, Codex/Cursor task IDs, or chat meta-text in the main PDF. `Stage-1` / `Stage-2` matches are legitimate method terms. |
| Limitations / AI disclosure tone | PASS | Limitations are concise and scientific. AI-assistance disclosure is formal and says authors controlled method, evaluation, citations, reported numbers, and decisions. |
| Figure/table readability | PASS with P1 density note | Page 7 is dense but readable: Figure 3 plus Tables 1-3 are not clipped, and captions state dataset/backbone/CI context. Avoid adding more material there. |
| `aclpubcheck` | WAITING / caveat | Re-run inside the evidence directory exits `0` but reports `861 errors, 0 warnings`, mainly line-number right/left margin and bottom page-number detections. This needs final engineering reconciliation or documented venue-accepted review-mode caveat. |

## Evidence Highlights

- Source title and abstract: `article/latex/edo_paper.tex:40-54`.
- Main PDF extracted title and abstract start: `main_raw.txt:1-6`.
- Main PDF Appendix references without embedded appendix sections:
  - `main_raw.txt:601`: component sweeps in Appendix D.
  - `main_raw.txt:753`: prompts/runners/hashes/token counts in Appendix B.
  - `main_raw.txt:824`, `859`, `932`: selector/component controls in Appendix D.
  - Search for appendix section headings in the main PDF returned no `Appendix A/B/D` sections.
- Limitations and disclosure: `article/latex/edo_paper.tex:327-334`; rendered page 8 shows Limitations before References.
- Page 7 render: `artifacts/tmp/rpart031_final_gate_20260525/main_page-07.png`.
- Page 8 render: `artifacts/tmp/rpart031_final_gate_20260525/main_page-08.png`.
- `aclpubcheck`: `artifacts/tmp/rpart031_final_gate_20260525/aclpubcheck_main.txt`; `aclpubcheck_exit.txt`.

## What Now Looks Good

- The title, abstract, and introduction now read as a coherent final manuscript,
  not an internal experiment log.
- The main claim is bounded around controlled organization under fixed backbone,
  context, scorer, validation split, and paired examples.
- Figure 3 and Tables 1-3 put the submission-level evidence in the main paper.
- The limitations section no longer foregrounds internal constraints such as
  quota, paid access, reviewer caps, or process history.
- No dangerous AI/process residue was found in the inspected main PDF/source.

## Remaining Blockers Before Submit

1. **Package consistency:** decide whether the actual OpenReview package is
   main PDF plus separate appendix/supplement, or one merged review PDF. If
   separate, upload and scan `article/build/edo_appendix.pdf` and any archive;
   if not separate, remove Appendix B/D dependencies or merge appendix content.
2. **Metadata refresh:** update OpenReview title, abstract, TL;DR, and keywords
   to match the current PDF exactly. The known earlier form state is stale
   relative to `0C7F6EB8...` unless manually corrected after this review.
3. **Full citation audit:** verify all 63 bibliography entries against
   authoritative sources and check that each citation supports the sentence
   where it appears.
4. **Legal/author declarations:** complete author-owned OpenReview fields before
   final submit; reviewer cannot infer these from the PDF.
5. **Pubcheck caveat:** either obtain a clean/accepted preflight or document why
   the `861` margin detections are review-template line/page-number artifacts.

## Current OpenReview Metadata To Use

Title:

```text
Roles Are Earned, Not Assigned, in Multi-Agent Reasoning
```

Abstract:

```text
Multi-agent LLM systems usually hard-code organization before evidence appears: a manager routes work, or prompts assign fixed specialists. Evidence-Derived Organization (EDO) reverses this order. Agents solve, delegate, split, audit, remember, and select tag-gated tools on task trees; only accepted downstream evidence updates future routing. Coordination becomes a measurable state process rather than hidden prompt choreography. We instantiate EDO as EDO-Frame and evaluate it under a controlled protocol that fixes backbone, context construction, scorer, validation split, and paired examples, so the changed variable is organization. Adaptive EDO is strongest on three full-validation multi-hop QA benchmarks, including a +.0857 F1 gain over the strongest matched baseline on 2Wiki. Across eight matched multi-agent framework families on each benchmark, all 24 pooled comparisons have positive confidence intervals, and mechanism interventions separate the gain from task-tree-only routing, static tools, or longer debate. Roles need not be assigned in advance; they can be measurably earned from accepted evidence.
```

Suggested TL;DR:

```text
EDO treats multi-agent roles as earned state: accepted evidence updates routing, audit, memory, and tool access, giving controlled same-backbone gains across multi-hop QA and collaboration tasks.
```

## Owner Handoff

### Scientist / writing owner

- Resolve the Appendix B/D dependency before upload: either make the appendix
  part of the review package or remove the main-paper reliance on appendix-only
  controls/prompts.
- Complete the all-entry citation existence and citation-claim audit.
- Keep the current limitations style; do not reintroduce internal process
  constraints or upload-deadline language.
- If OpenReview metadata is edited manually, paste the exact current title and
  abstract above, not the older R-PART-030 metadata.

### Engineer / evidence owner

- Re-run final package preflight after the exact upload package is frozen:
  main PDF, appendix PDF if uploaded, and any supplemental archive.
- Record the exact upload hashes, build logs, `pdfinfo`, `pdffonts`,
  `pdftotext`, residue/anonymity scans, rendered pages, and pubcheck status.
- Do not certify a PDF while `latexmk` / `pdflatex` is still writing it; this
  review observed a half-written corrupt PDF during the moving build window.
- Reconcile `aclpubcheck` margin findings with ACL review-mode line numbering.

### Submitting author

- Confirm the live venue is ARR May 2026 with `Preferred Venue = EMNLP`.
- Confirm final author order and all author OpenReview profiles.
- Confirm all policy/legal fields: resubmission, preprint, license, data/code,
  responsible NLP checklist, conflicts, visa, AI reviewing experiment, and final
  consent to submit.

## Evidence Boundary

This review did not submit to OpenReview and did not click any final submission
button. It did not perform authoritative web verification for all bibliography
entries. It did inspect the stable current main PDF, source text, focused
residue/anonymity surfaces, rendered main pages, and current on-disk appendix
metadata. Under R-PART-026, any unresolved uncertainty remains `WAITING`, not
`PASS`.
