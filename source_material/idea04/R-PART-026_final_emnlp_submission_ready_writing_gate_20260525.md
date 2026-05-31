# R-PART-026 Final EMNLP Submission-Ready Writing Gate

Date: 2026-05-25
Scope: final gate before submitting the current paper to EMNLP 2026 via ARR May 2026.
Target artifact: `article/build/edo_paper.pdf`

This document is a strict submission-readiness gate, not a general writing guide.
If any P0 item fails, the paper is not submission-ready. Passing this gate means
the paper is fit to upload and submit, subject only to final author/legal
confirmation inside OpenReview.

## 0. Official Rule Sources

Use these sources as the rule hierarchy. If this document conflicts with an
official page or the live OpenReview form, the official page/form wins.

- EMNLP 2026 main conference CFP: https://2026.emnlp.org/calls/main_conference_papers/
- EMNLP 2026 paper integrity policy: https://2026.emnlp.org/paper-integrity-policy/
- EMNLP 2026 AI reviewing experiment: https://2026.emnlp.org/ai-reviewing-experiment/
- EMNLP 2024 best/outstanding paper list, used only as public accepted-paper
  style evidence: https://2024.emnlp.org/program/best_papers/
- EMNLP 2023 best/outstanding paper list, used only as public accepted-paper
  style evidence: https://2023.emnlp.org/program/best_papers/
- ARR CFP: https://aclrollingreview.org/cfp
- ARR dates: https://aclrollingreview.org/dates
- ARR common submission problems: https://aclrollingreview.org/authorchecklist
- ARR Responsible NLP checklist guidance: https://aclrollingreview.org/responsibleNLPresearch/
- ARR areas / area keywords: https://aclrollingreview.org/areas
- ACLPUB formatting guidelines: https://acl-org.github.io/ACLPUB/formatting.html
- ACL pubcheck: https://github.com/acl-org/aclpubcheck
- Sample accepted-paper PDFs inspected for visual conventions:
  - `CoGen: Learning from Feedback with Coupled Comprehension and Generation`,
    EMNLP 2024 best paper, https://aclanthology.org/2024.emnlp-main.721.pdf
  - `Backward Lens: Projecting Language Model Gradients into the Vocabulary
    Space`, EMNLP 2024 best paper, https://aclanthology.org/2024.emnlp-main.142.pdf
  - `Fishing for Magikarp: Automatically Detecting Under-trained Tokens in
    Large Language Models`, EMNLP 2024 outstanding paper,
    https://aclanthology.org/2024.emnlp-main.649.pdf
  - `Label Words are Anchors: An Information Flow Perspective for Understanding
    In-Context Learning`, EMNLP 2023 best paper,
    https://aclanthology.org/2023.emnlp-main.609.pdf
  - `PaperMage: A Unified Toolkit for Processing, Representing, and
    Manipulating Visually-Rich Scientific Documents`, EMNLP 2023 best paper,
    https://aclanthology.org/2023.emnlp-demo.45.pdf

## 1. Non-Negotiable Submission Decision Rule

The final submit button may be clicked only if all conditions below hold:

1. `article/build/edo_paper.pdf` is the exact final PDF intended for review.
2. The PDF is anonymous, ACL-formatted, line-numbered, and page-compliant.
3. Every citation and reference entry is real, verifiable, and supports the
   claim for which it is cited.
4. No internal process language, coordination vocabulary, local path, task ID,
   chat residue, or AI-assistant meta-text appears in the paper, appendix,
   supplement, or OpenReview metadata.
5. The paper states limitations honestly, but does not foreground internal
   process constraints as if they were scientific contributions or reviewer
   excuses.
6. The OpenReview form selects `Preferred Venue = EMNLP`.
7. All author, license, consent, preprint, visa, and AI-reviewing-experiment
   choices have been explicitly confirmed by the submitting author.

If any item is uncertain, mark the gate `WAITING`, not `PASS`.

## 2. P0 Desk-Rejection And Policy Gate

### P0.1 Correct Venue Path

Required:

- Submit through `ACL ARR 2026 May Submission` on OpenReview.
- Select `Preferred Venue = EMNLP`.
- Do not leave the preferred venue blank or select another ARR venue.

Failure condition:

- Any preferred-venue value other than `EMNLP` blocks submission for this EMNLP
  cycle.

### P0.2 Page Limit And Template

Required:

- Long paper: main content is at most 8 pages.
- Short paper: main content is at most 4 pages.
- References are outside the content page limit.
- `Limitations` may be outside the content page limit only if placed correctly.
- Use official ACL style without margin, font-size, spacing, or template hacks.
- Review PDF must be anonymous and line-numbered.
- No acknowledgments in the review PDF.

Reject on sight:

- Content exceeds the page limit.
- `Limitations` missing or incorrectly titled.
- Template/margin/spacing tampering.
- Non-anonymous author/institution/email information in review PDF.
- Acknowledgments in review PDF.
- Broken figures, unreadable tables, missing fonts, or corrupted PDF.

### P0.3 Anonymity

Required:

- PDF author block must be anonymous.
- No self-identifying repo URL, GitHub username, institutional path, grant,
  dataset-private server, personal email, local machine path, commit hash, or
  hidden file metadata.
- Supplement and uploaded software/data archives must also be anonymous.
- If prior work by the authors must be cited, cite it in a way compliant with
  ARR anonymity rules.

Reject on sight:

- `D:\`, `C:\`, `/home/`, user names, school account names, internal repo names
  in paper text or supplement.
- "our previous submission", "we fixed reviewer comment", or any text that
  identifies submission history unless the resubmission fields explicitly allow
  it and the text is anonymized.

### P0.4 Resubmission Honesty

Required:

- If this is an ARR resubmission, fill `Previous URL`, upload an anonymized
  `Explanation Of Revisions PDF`, and select reviewer/AC reassignment options
  consistently.
- If this is not a resubmission, select `This is not a resubmission` for both
  area chair and reviewer reassignment fields.

Reject on sight:

- Prior ARR-reviewed version exists but is not acknowledged.
- Revision PDF includes author names or author-list-change details.
- Revision PDF copies author-response text instead of explaining changes since
  the prior submission.

### P0.5 Mandatory Author Responsibilities

Required:

- Author list and order are final before submission.
- Every author has a usable OpenReview profile.
- Every qualified author understands they must complete author reviewer
  registration after submission.
- The submitter is authorized to agree to license, submission-sharing, and
  checklist statements on behalf of all authors.

Reject or stop:

- Any author missing from the list.
- Any author added only by plain email when an OpenReview profile exists but was
  not found.
- Any uncertainty about whether all authors agreed to license or data-sharing
  terms.

## 3. Citation Authenticity Gate

This is a hard integrity gate. Citation failure is not a cosmetic issue.

### P0.6 Reference Existence

Every bibliography entry must be verified against at least one authoritative
source:

- ACL Anthology for ACL-family papers.
- Publisher page or DOI resolver for journal/conference papers.
- arXiv page for arXiv-only work.
- Official project page only as supplementary evidence, not as the sole source
  for a scholarly citation.

For each citation, confirm:

- title exactly matches or differs only by harmless capitalization;
- author list is real and not hallucinated;
- year is correct;
- venue is correct and not upgraded;
- DOI / ACL Anthology ID / arXiv ID is correct when present;
- cited claim is actually supported by the cited paper.

P0 failure examples:

- citing a nonexistent paper;
- citing a real paper under a fake venue;
- citing a paper for a claim it does not make;
- using "recent work shows" without naming real works;
- using LLM-generated BibTeX without verification;
- referencing a benchmark, model, or framework without the creator citation.

### P0.7 Citation-Claim Alignment

Every citation must have a role:

- background foundation;
- close related work;
- model / tool / framework source;
- dataset source;
- metric / evaluation method;
- statistical method;
- system baseline.

No citation may be decorative. If a sentence makes a strong claim, the citation
must support that exact claim.

Bad:

- "Recent multi-agent systems solve complex reasoning" followed by unrelated
  LLM scaling papers.
- "EDO is the first..." without an explicit novelty audit.
- "State-of-the-art" without naming the leaderboard/protocol.

Acceptable:

- "Prior multi-agent systems often instantiate fixed roles or orchestrators"
  followed by real AutoGen / MetaGPT / AgentVerse style citations if each source
  actually supports that characterization.

### P0.8 Bibliography Cleanliness

Required:

- No duplicate keys with different metadata.
- No unused references if they create suspicion or bloat.
- No placeholder fields like `TODO`, `unknown`, `to appear`, `submitted`, unless
  true and allowed.
- No malformed venue names.
- No anonymous internal file names as references.

Run a final bibliography scan before submission:

```powershell
rg -n -i "TODO|FIXME|unknown|to appear|submitted|chatgpt|openai|generated|placeholder" article\latex\custom.bib article\latex\*.bib
rg -n "\\\\cite\\{|\\\\citet\\{|\\\\citep\\{" article\latex\edo_paper.tex article\latex\edo_appendix_content.tex
```

## 4. Scientific Claim And Evidence Gate

### P0.9 Main Claim Must Be Supported In The Main Paper

The main claim must be checkable from the main 8 pages. Appendix and artifacts
may provide detail, but cannot rescue an unsupported headline.

Required:

- Abstract states only evidence-backed claims.
- Introduction promises only what experiments and analysis actually support.
- Tables and figures directly support the central claim.
- Main results include enough benchmark, baseline, metric, split, and statistical
  context to be reviewed without reading private notes.

P0 failure:

- headline claim depends on queued, partial, failed, or boundary-only evidence;
- paper says "robust", "general", "state-of-the-art", "universal", or
  "comprehensive" without the exact evidence needed for that word;
- failed diagnostic runs are silently converted into positive evidence.

### P1.1 Do Not Over-Confess Weaknesses In The Main Story

Limitations must be honest, but the submission should not self-damage by
foregrounding internal constraints as if they are the scientific framing.

Do not write:

- "Because we had no paid API budget..."
- "Due to time constraints..."
- "The current no-paid route..."
- "We could not run stronger systems..."
- "This is only a local batch..."
- "This is a pragmatic workaround..."
- "We leave this weak point obvious..."

Why this is wrong:

- It exposes internal process rather than final scientific design.
- It frames the work as under-resourced instead of scoped.
- It looks like project-management residue.
- It can read as AI-generated or assistant-planned text because it explains the
  drafting process rather than the scientific object.

Use instead:

- "We evaluate under a matched local-model protocol to isolate organizational
  effects from backbone differences."
- "The study does not claim leaderboard dominance over systems evaluated under
  different retrievers, corpora, backbones, or tool policies."
- "The deterministic temperature-0 setting supports paired population tests over
  fixed examples, but not stochastic deployment-variance claims."

The limitation remains visible, but it is expressed as a scope boundary, not as
an internal excuse.

### P1.2 No Intermediate Process Vocabulary

The final paper must not expose internal workflow terms unless they are part of
the actual method.

Ban these words/phrases from paper body, abstract, conclusion, limitations,
OpenReview metadata, and supplement README unless there is a formal scientific
reason:

- `no-paid`
- `paid lane`
- `quota`
- `frontier`
- `promotion gate`
- `boundary-only`
- `paper-facing`
- `submission-ready`
- `reviewer cap`
- `best-paper cap`
- `S-`, `E-`, `R-FULL`, `R-PART`, `C-`
- `artifact promotion`
- `strict gate`
- `TODO`
- `FIXME`
- `current batch`
- `local lane`
- `fallback`
- `workaround`
- `Codex`
- `Cursor`
- `ChatGPT`
- `Claude`
- `assistant`
- `according to your request`
- `as requested`

Acceptable replacements:

- `matched local-model protocol`
- `fixed-backbone evaluation`
- `deterministic evaluation setting`
- `scope boundary`
- `diagnostic experiment`
- `ablation`
- `sensitivity analysis`
- `reproducibility artifact`
- `release package`

### P1.3 Do Not Use Limitations As A Dumping Ground

The `Limitations` section should contain:

- real scope boundaries;
- evaluation conditions;
- external validity limits;
- responsible-use risks;
- reproducibility boundaries.

It should not contain:

- new experiments;
- new citations essential to novelty;
- important baselines absent from main results;
- apologies;
- internal operational constraints;
- "we did not have money/time";
- future-work lists so long they make the current work look incomplete.

The tone should be controlled:

Bad:

- "Our method is limited because we only use no-paid local models and cannot
  compare to full SOTA."

Better:

- "The matched local-backbone design isolates organizational effects, but does
  not establish leaderboard dominance under heterogeneous retriever, corpus,
  backbone, or tool-policy settings."

## 5. Final Scientific Writing Style Gate

### P1.4 Abstract

The abstract must:

- state problem, method, evidence, and contribution in one coherent arc;
- include only numbers that appear in paper tables;
- avoid unexplained internal labels;
- avoid hype words not backed by evidence;
- avoid process words such as "current", "attempt", "route", "gate",
  "no-paid", or "paper-facing".

Reject or revise if:

- abstract reads like a project report;
- abstract exposes internal development history;
- abstract says "comprehensive", "robust", "state-of-the-art", or "general"
  without exact scope;
- abstract has unsupported claims not repeated in the evidence sections.

### P1.5 Introduction

The introduction must:

- motivate a scientific problem, not a tooling story;
- name the failure mode precisely;
- define the contribution without overclaiming;
- preview evidence in a way that matches the actual experiments;
- cite close prior work before claiming novelty.

Avoid:

- vague "LLM agents are important" paragraphs;
- generic AI-style transitions;
- "not only...but also..." filler;
- "plays a crucial role";
- "significant improvement" without a number;
- claims that sound like marketing copy.

### P1.6 Method

The method section must:

- define all concepts once and use stable terminology;
- separate algorithmic mechanism from implementation details;
- avoid anthropomorphic claims unless operationally defined;
- make control flow auditable;
- name prompts, tools, memory, routing, and acceptance criteria consistently;
- avoid internal file names or experiment IDs as scientific names.

Reject or revise if:

- a reader cannot tell what is the method versus what is an experiment harness;
- terms shift across sections;
- figures introduce concepts not defined in text;
- algorithm pseudocode uses names that do not match tables or claims.

### P1.7 Experiments

The experiments section must:

- state datasets, splits, sample sizes, models, decoding settings, tools,
  baselines, metrics, and statistics;
- distinguish full-validation, sampled, diagnostic, and synthetic tasks;
- show matched settings for all direct comparisons;
- report confidence intervals or tests where claims depend on paired examples;
- include ablations for claimed essential components;
- include failure/error analysis that is specific enough to be useful.

Reject or revise if:

- a headline result is single-run without adequate boundary;
- a result table lacks split/sample-size/model details;
- a baseline is weak or outdated without explanation;
- error analysis is only qualitative praise;
- appendix-only evidence is needed to believe the central claim.

## 5A. Figure And Table Gate Based On EMNLP / ACL-Family Evidence

This section extends the gate beyond the user's examples. It combines official
ACLPUB figure/table rules with public accepted EMNLP paper patterns and ARR
reviewer guidance. It is not claiming that private rejected EMNLP submissions
were exhaustively inspected; private reviews are not fully public. The rejection
risks here come from official ARR desk-reject guidance, reviewer guidelines, and
publicly visible accepted-paper conventions.

### P0.13 Official Figure/Table Formatting

Official ACLPUB requirements make figure/table readability a desk-rejection
surface, not a cosmetic preference.

Required:

- Figure/table text and numbers should use document-text size whenever possible.
- All figure/table text must remain clearly readable when printed on A4 paper.
- Do not shrink figure/table text or spacing to bypass the page limit.
- Figures/tables must be near their first discussion whenever possible.
- Figures/tables must be at least one column wide; do not wrap body text around
  them inside a column.
- Use vector graphics such as PDF/EPS whenever possible.
- Avoid low-resolution or highly compressed raster images.
- Every figure/table must have a sequential caption below it.
- Captions must be in 10 pt roman type.
- Figures and tables must not rely only on color. They should remain readable in
  grayscale and color-blind settings.

P0 failure:

- unreadable text after normal PDF zoom or A4 print;
- tiny numbers inserted to fit page count;
- color-only legend where grayscale loses the meaning;
- clipped axis labels, cropped nodes, or overlapping table text;
- missing caption or caption that does not identify the plotted quantity;
- figure/table placed in `Limitations` to avoid page limit.

### P1.13 Accepted-Paper Figure Patterns To Emulate

Public EMNLP best/outstanding papers commonly use early visual elements to make
the contribution immediately inspectable. For example, CoGen uses a first-page
task/intervention illustration; Fishing for Magikarp uses an early example
figure and then diagnostic plots/tables; Backward Lens relies on interpretable
mechanism visuals tied to the technical claim. The common lesson is not "add
more figures"; it is that each figure carries one review-critical function.

A strong EMNLP figure should satisfy at least one of these functions:

- `Problem/example figure`: makes the task or failure mode concrete in the first
  1-2 pages.
- `Method figure`: shows the actual mechanism, information flow, or decision
  process, not a decorative pipeline.
- `Result figure`: exposes the main effect with axes, intervals, and comparable
  baselines.
- `Diagnostic figure`: explains when the method works/fails, not just that it
  wins.
- `Artifact figure`: makes dataset/system/resource structure inspectable.

Sampled accepted-paper visual audit:

| Paper | Public signal | Figure/table roles observed | Gate implication |
| --- | --- | --- | --- |
| `CoGen` | EMNLP 2024 best paper | task interaction figure, continual-learning scenario figure, performance plots with uncertainty, prompt examples, data-volume plot | EDO needs an early task/mechanism visual and a result visual whose uncertainty treatment is visible in the main paper. |
| `Backward Lens` | EMNLP 2024 best paper | mechanism illustrations, gradient/rank diagnostics, tables showing interpreted neuron/projection examples, many appendix diagnostics | Technical figures must map directly to named variables and experimental claims; decorative pipelines are insufficient. |
| `Fishing for Magikarp` | EMNLP 2024 outstanding paper | failure-mode example, detection result table, indicator-comparison plots, prompt/result appendix tables | If a paper claims to find a hidden failure mode, the first figure should make the failure inspectable before the metric table. |
| `Label Words are Anchors` | EMNLP 2023 best paper | information-flow visualizations, hypothesis figure, layer-wise diagnostic plots, acceleration/result tables, confusion matrices | Mechanistic claims need layer/component diagnostics, not only aggregate downstream scores. |
| `PaperMage` | EMNLP 2023 best paper / demo | artifact representation figure, flexible-access figure, predictor inventory table, structure-recovery evaluation tables | Resource or system papers make the artifact schema and evaluation contract visible, rather than relying only on prose. |

Common traits across the sample:

- first important visual appears early enough to shape the reader's mental model;
- figures/tables are tied to concrete nouns in the contribution statement;
- main quantitative tables disclose the experimental contract instead of only
  reporting final scores;
- diagnostic visuals answer why/when the method works, not only whether it wins;
- captions usually state enough context for a reviewer to recover the plotted
  object, comparison, and takeaway;
- appendix visuals support depth, but the main paper remains self-contained.

Reject/revise figures that:

- are decorative architecture cartoons with no variables reviewers can verify;
- contain many arrows but no operational semantics;
- restate prose without reducing cognitive load;
- use labels that do not match method/table terminology;
- omit dataset/model/metric context needed to interpret the visual;
- hide all quantitative claims in appendix-only plots;
- look like slide graphics rather than ACL paper figures.

### P1.14 Figure Caption Standard

Each caption must be self-contained enough that a reviewer can understand why
the figure exists without hunting through the text.

Caption must include:

- what is shown;
- dataset/task/model/protocol when relevant;
- what comparison or mechanism the reader should notice;
- what symbols, colors, panels, and error bars mean;
- whether numbers are examples, averages, confidence intervals, or diagnostics.

Bad caption:

- "Overview of our method."
- "Results on datasets."
- "Framework."

Acceptable caption:

- "Figure 2: EDO routes accepted downstream evidence back into later local
  routing decisions. Solid arrows indicate task handoff; dashed arrows indicate
  accepted evidence updates; red crosses mark rejected returns."

### P1.15 Table Design Standard

Tables in accepted EMNLP papers are dense but not cryptic. A good table should
make the experimental contract visible.

Every main result table must expose, either in the table or caption:

- dataset;
- split / sample size;
- model/backbone;
- baseline type;
- metric;
- direction of improvement;
- whether numbers are single-run, mean, max, or CI;
- statistical marker definition if bolding or stars are used.

For this paper's result tables, do not allow a reviewer to ask:

- What backbone was used?
- Which split is this?
- Is this full validation or sampled?
- Is the baseline matched?
- Is the number a mean, best run, single deterministic run, or CI lower bound?
- What does bold mean?
- What does the method abbreviation mean?

P1 table failures:

- too many internal method abbreviations with no legend;
- columns ordered by internal experiment history instead of reviewer logic;
- bolding every best number without explaining statistical or practical meaning;
- mixing full-validation, sample, diagnostic, and synthetic-suite results in one
  table without explicit grouping;
- reporting deltas without absolute scores;
- reporting absolute scores without a strongest-baseline delta;
- putting important caveats only in table notes too small to read.

### P1.16 Best-Paper-Level Figure/Table Narrative

A submission should have a deliberate figure/table sequence:

1. one early figure or concise example that defines the problem/mechanism;
2. one main result table that supports the headline claim;
3. one ablation/sensitivity table or compact diagnostic figure;
4. one error/residual analysis item that explains failure modes.

If the paper has more than four main visual/table items, each additional item
must justify its page cost by removing a likely reviewer doubt. If it cannot,
move it to appendix or delete it.

For the current EDO paper, the ideal visual/table logic is:

- `Figure 1`: mechanism or task-flow, not decorative branding;
- main QA result table: full-validation matched-Qwen evidence;
- framework/baseline breadth table: same-backbone comparisons with CI/status;
- component/sensitivity table: what mechanism is actually necessary;
- residual/error item: where gains/losses arise.

### P1.17 Common Visual Reasons Papers Feel Rejectable

Even when not formal desk-reject causes, these patterns make reviewers distrust
the submission:

- main claim is hidden in a crowded appendix-style table;
- table has many numbers but no reviewer can identify the decisive comparison;
- method figure has no link to algorithm steps or experiments;
- figure uses inconsistent colors/icons across pages;
- bars/points lack error bars where variation matters;
- axes omit units or metric direction;
- table uses abbreviations from internal code names;
- visual design looks like a progress report, not a publication;
- captions do not state the takeaway;
- figure/table introduces claims not in the surrounding prose.

If any of these appears in the main paper, mark the gate `FIXED` only after a
new PDF is generated and visually checked.

### P1.8 Related Work

Related work must:

- include recent close work from 2024-2026 where applicable;
- separate orchestration, fixed-role, memory, tool-use, RAG, and agent-eval
  threads if those are all invoked;
- state precise deltas;
- avoid dismissive or inflated novelty language.

Bad:

- "Unlike prior work, we are the first to..."

Unless fully proven, use:

- "Unlike fixed-role or centralized orchestration settings, this work evaluates
  organization as an inference-time state variable under a matched local-model
  protocol."

### P1.9 Conclusion

Conclusion should:

- restate the supported contribution;
- avoid new claims;
- avoid over-selling limitations;
- avoid future-work laundry lists;
- avoid process words.

It should not sound like a chat summary.

## 6. AI-Trace And Assistant-Residue Gate

This gate does not try to "detect AI" by vibe. It checks visible submission
risks. Any confirmed assistant meta-text is P0.

### P0.10 Confirmed Assistant Or Chat Residue

Reject on sight if any of these appear in the PDF, appendix, supplement, or
OpenReview metadata:

- "As an AI language model"
- "I cannot"
- "Here is"
- "Below is"
- "according to your request"
- "per your request"
- "I recommend"
- "this revised version"
- "the following section"
- "we need to"
- "let's"
- "TODO"
- "FIXME"
- "draft"
- "placeholder"
- Chinese chat residue such as "根据你的要求", "我建议", "下面是"
- local assistant tool names: `Codex`, `Cursor`, `Claude`, `ChatGPT`, unless in
  AI-assistance disclosure where venue policy specifically asks.

### P1.10 High-Risk Non-Authorial Prose

Revise if paragraphs show:

- generic first sentences with no scientific content;
- repeated "not only...but also";
- inflated adjectives without evidence;
- over-smooth transitions that avoid naming datasets, baselines, or mechanisms;
- long sentences that paraphrase the same claim several times;
- excessive "important", "crucial", "robust", "comprehensive", "significant";
- inconsistent terminology suggesting pasted drafts.

Fix by replacing generic prose with:

- named mechanism;
- named dataset;
- named baseline;
- exact metric;
- exact limitation or scope.

### P1.11 AI-Assistance Disclosure Consistency

If AI assistance was used:

- disclose it in the Responsible NLP checklist / relevant form response;
- state scope narrowly and truthfully;
- distinguish writing/coding assistance from scientific claims and evaluation;
- make clear authors inspected and approved claims, citations, code, numbers,
  and promotion decisions;
- do not claim no AI assistance if the repo history or disclosure contradicts it.

The paper should not include a visible acknowledgment in anonymous review mode,
but the OpenReview checklist can describe AI assistance.

## 7. OpenReview Metadata Gate

### P0.11 Required Field Consistency

OpenReview metadata must match the PDF:

- `Title`: exact paper title, no typo.
- `Abstract`: same scientific claims as PDF abstract; no LaTeX that renders
  badly in OpenReview.
- `Keywords`: concise and non-hype.
- `TL;DR`: one sentence, no unsupported claim.
- `Paper Type`: `Long` or `Short` exactly matching PDF length.
- `Research Area`: best fit, currently likely `LLM agents` for this paper.
- `Research Area Keywords`: must be from ARR area guidance where possible.
- `Languages Studied`: `English` if all evaluated tasks are English.
- `Preferred Venue`: `EMNLP`.

P0 failure:

- metadata claims are stronger than the PDF;
- title typo;
- abstract numbers differ from PDF;
- preferred venue not `EMNLP`;
- author list incomplete.

### P0.12 Author And Legal Fields

Do not auto-fill these without explicit author confirmation:

- Authors and author order.
- Resubmission status.
- Preprint choice and existing preprint URLs.
- Visa needs and country.
- Consent to share anonymized metadata.
- Consent to share submission details.
- Blind submission license agreement.
- EMNLP 2026 AI Reviewing Experiment opt-in/out.

These are not technical fields. They are author/legal decisions.

### P1.12 Supplement Uploads

Only upload software/data archives if they are:

- anonymized;
- below OpenReview size limits;
- directly useful to reviewers;
- free of internal logs and process notes;
- free of local paths and task IDs;
- documented with a clean README;
- consistent with paper claims.

Do not upload:

- raw workspace dumps;
- reviewer TODO files;
- internal scoreboards;
- failed-run forensic bundles unless clearly anonymized and scientifically
  relevant;
- logs containing `S-`, `E-`, `R-FULL`, `no-paid`, user names, local paths, or
  assistant traces.

## 8. Responsible NLP Checklist Gate

Checklist answers must be concrete. Bare "yes" is not enough when elaboration
is required.

### A. Limitations And Risks

Required:

- `A1 Limitations Section`: check only if the PDF has a section titled exactly
  `Limitations`.
- `A2 Potential Risks`: answer yes if the paper discusses misuse/safety/scope
  risks. Elaboration should cite section names, not internal docs.

Bad elaboration:

- "See paper."

Good elaboration:

- "The Limitations section discusses scope boundaries, deterministic evaluation,
  and misuse risks of multi-step task decomposition."

### B. Scientific Artifacts

Required:

- If using datasets, models, code, prompts, tools, or metrics, answer `Yes`.
- Cite artifact creators in paper.
- Discuss licenses/terms or intended use where possible.
- State public data/synthetic data scope.
- Document artifacts in appendix or supplement.
- Report data statistics.

P0 failure:

- used public benchmarks but did not cite creators;
- used model/framework/tool without citation;
- checklist says no artifacts when artifacts were used.

### C. Computational Experiments

Required:

- answer `Yes` if experiments are reported;
- report model size/backbone, compute/infrastructure, decoding, hyperparameters,
  scripts/packages, metrics, CIs/statistics, sample sizes, and split details;
- be clear when results are deterministic paired tests rather than stochastic
  deployment-seed evidence.

P1 issue:

- if compute budget cannot be fully quantified, phrase the boundary honestly but
  without internal excuses.

### D. Human Subjects

If no human subjects, no human annotators, and no human preference labels:

- answer `No` for human subjects / annotators;
- answer `N/A` for D1-D4 where appropriate;
- elaborations should be concise and consistent.

### E. AI Assistants

If AI assistance was used in coding, writing, polishing, or diagnostics:

- answer `Yes`;
- answer `Yes` to providing information if the checklist elaboration or paper
  states it;
- elaborate that authors remain responsible for method design, claims,
  citations, reported numbers, evaluation, and final decisions.

Do not write:

- "AI wrote the paper."
- "ChatGPT generated the method."
- "We used AI to judge results."

Write:

- "AI assistance was limited to code-completion, grammar/style polishing, and
  local diagnostic drafting under author review. The authors designed the
  method, checked citations and numbers, ran and inspected evaluations, and made
  final claim and promotion decisions."

## 9. Final Automated Preflight Commands

Create a fresh preflight directory:

```powershell
New-Item -ItemType Directory -Force artifacts\submission_preflight | Out-Null
```

PDF and font checks:

```powershell
pdfinfo article\build\edo_paper.pdf
pdffonts article\build\edo_paper.pdf
pdftotext -layout article\build\edo_paper.pdf artifacts\submission_preflight\edo_paper_layout.txt
pdftotext -raw article\build\edo_paper.pdf artifacts\submission_preflight\edo_paper_raw.txt
```

Residue scan:

```powershell
rg -n -i "TODO|FIXME|placeholder|draft|according to your request|as requested|here is|below is|as an ai|i cannot|chatgpt|openai|claude|codex|cursor|assistant|no-paid|paid lane|quota|promotion gate|boundary-only|paper-facing|reviewer cap|best-paper cap|workaround|fallback|S-[0-9]+|E-[0-9]+|R-FULL|R-PART|D:\\\\|C:\\\\|/home/" article\latex docs\paper artifacts\submission_preflight
```

Anonymity scan:

```powershell
rg -n -i "Kaiwen|Deng|Tsinghua|dkw|mails.tsinghua|github.com/.+|anonymous github|acknowledg|thanks to|grant|funded by" article\latex artifacts\submission_preflight
```

Bibliography scan:

```powershell
rg -n -i "TODO|FIXME|unknown|placeholder|submitted|to appear|chatgpt|openai|generated" article\latex\*.bib
```

Formatting sanity:

```powershell
uvx --from git+https://github.com/acl-org/aclpubcheck aclpubcheck --paper_type long article\build\edo_paper.pdf
```

Manual visual check:

- page 1 title block anonymous and correct;
- all figures readable;
- all tables fit;
- no text overflow hiding content;
- references start after main content;
- `Limitations` appears after conclusion and before references;
- appendix/supplement does not leak identity.

## 10. Human Final Review Checklist

Before final submission, a human reviewer must fill this table.

| Gate | Status | Evidence | Owner |
|---|---|---|---|
| PDF is final and uploaded | TODO | PDF hash / OpenReview upload name | |
| Preferred Venue = EMNLP | TODO | OpenReview field screenshot/check | |
| Author list/order final | TODO | OpenReview author list | |
| Long/short type correct | TODO | OpenReview + PDF page count | |
| Page limit passes | TODO | `pdfinfo` + visual check | |
| ACL template not tampered | TODO | source diff / pubcheck | |
| Anonymous review mode | TODO | PDF page 1 + metadata scan | |
| No acknowledgments | TODO | text scan | |
| Limitations section exact | TODO | text scan / PDF page | |
| Responsible checklist answers complete | TODO | OpenReview fields | |
| AI assistance disclosure consistent | TODO | checklist + paper | |
| Citation existence verified | TODO | citation audit file | |
| Citation-claim alignment verified | TODO | claim map | |
| No internal process words | TODO | residue scan | |
| No assistant/chat residue | TODO | residue scan + manual read | |
| Supplement anonymized or omitted | TODO | archive inspection | |
| Preprint status confirmed | TODO | author decision | |
| License agreement confirmed | TODO | author decision | |
| Consent fields confirmed | TODO | author decision | |
| AI reviewing experiment choice confirmed | TODO | author decision | |
| Visa field confirmed | TODO | author decision | |

Allowed final statuses:

- `PASS`: evidence checked and acceptable.
- `FIXED`: issue found and repaired, with new evidence.
- `WAITING`: requires author/legal decision.
- `FAIL`: blocks submission.
- `N/A`: not applicable, with reason.

The final gate passes only when there are no `TODO`, `WAITING`, or `FAIL`
entries.

## 11. Final Writing Standard

The submission must read like a completed EMNLP paper:

- The paper is a scientific object, not a project status report.
- It explains what was evaluated, not why internal constraints existed.
- It states scope boundaries without self-sabotage.
- It uses stable terminology.
- It names evidence precisely.
- It cites real sources.
- It does not expose local development process.
- It does not sound like a chat transcript.
- It does not rely on reviewer charity to infer missing details.

Final principle:

If a phrase would make a reviewer think "this looks like an internal draft,
assistant output, or last-minute workaround", remove it or rewrite it as a
scientific scope statement.

## 12. Current Evidence Boundary

This document defines the final gate. It does not certify that the current PDF
passes. A separate execution of this gate must inspect the current
`article/build/edo_paper.pdf`, OpenReview metadata, bibliography, and any
supplement uploaded for the actual submission.

## 13. Rejection-Pattern Evidence Boundary

Rejected EMNLP submissions and their full reviews are not exhaustively public, so
this gate does not pretend to summarize all private rejections. It uses:

- official ARR common-problems guidance for desk-rejection risks;
- ARR reviewer guidelines for what reviewers are instructed to flag;
- official ACLPUB formatting rules;
- public EMNLP best/outstanding paper lists and sampled accepted PDFs for
  visible figure/table conventions;
- public community anecdotes only as weak corroboration, never as primary rule
  sources.

Hard rejection / desk-rejection risks supported by official sources include:

- out-of-scope submission;
- missing or incomplete author/OpenReview profile and reviewer registration
  obligations;
- dual submission or duplicate submission;
- unacknowledged ARR resubmission;
- page-limit or style violation;
- missing `Limitations` section;
- new experiments/figures/analysis inside `Limitations`;
- anonymity violation;
- non-anonymous or tracking supplement links;
- leftover comments or meta-text from prior revisions;
- hallucinated references or citations;
- misleading Responsible NLP checklist answers;
- visible text aimed at machine readers rather than human reviewers;
- inappropriate generative-AI use or disclosure mismatch.

Soft but serious rejection risks visible from reviewer guidance and accepted
paper patterns include:

- unclear research question;
- unsupported or over-broad claim scope;
- missing highly relevant prior work;
- weak or unmatched baselines;
- missing statistical significance / uncertainty treatment;
- appendix-dependent main claim;
- unreadable or uninformative figures/tables;
- generic AI-style prose or assistant residue;
- limitations written as internal excuses rather than scientific scope.
