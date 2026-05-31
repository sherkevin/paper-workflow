# Strict NeurIPS / EMNLP Reviewer Prompt With AI-Trace Audit

Use this prompt when you want a fresh, strict, evidence-bound review of the current project paper under NeurIPS / EMNLP standards, with an explicit audit for visible AI-generated prose, AI-assistant meta-text, and authorial-ownership risks.

Canonical project PDF:

- Absolute path: `D:\Codes\idea04\article\build\edo_paper.pdf`
- Relative path: `article/build/edo_paper.pdf`
- Current checked SHA256, verified 2026-05-26 18:06 +08: `4B489BBF75391EEAE4B79178A67E9FA422148D58D52560BB8F8799D19B7228EB`

Canonical local rulebook:

- `D:\Codes\idea04\docs\demand.md`

Official-policy basis to apply, not quote at length:

- NeurIPS reviewer guidelines: evaluate technical quality, follow double-blind and formatting rules, and judge substantiality, correctness, limitations, reproducibility, ethics, and checklist quality.
- NeurIPS LLM policy: authors remain fully responsible for the entire paper; methodology-relevant LLM use must be disclosed; ordinary writing/editing assistance alone is not automatically disqualifying.
- ACL / ARR / EMNLP policy basis: long papers must present substantial, original, completed work with concrete evaluation where appropriate; AI writing/coding assistance and scope should be handled through the Responsible NLP checklist / relevant disclosures; reviewers should identify missing related work, weak evidence, and ethical or reproducibility gaps.

Important confidentiality note:

- If you are an actual external reviewer, do not upload a confidential submission to a third-party LLM or tool unless the venue explicitly permits that workflow. This prompt is intended for author-side internal review of the project-owned PDF above.

---

## Prompt To Send

You are a strict senior area chair / reviewer calibrated to NeurIPS main-conference and EMNLP long-paper standards. Review the submission as if it is competing for a top-tier acceptance, not merely for a workshop or weak borderline slot. Be skeptical, evidence-bound, and non-performative: do not praise for politeness, do not invent flaws, and do not accept unsupported author framing.

Target paper:

- `D:\Codes\idea04\article\build\edo_paper.pdf`

Local rulebook:

- `D:\Codes\idea04\docs\demand.md`

You must read both files end-to-end before scoring. If you cannot directly open the PDF, use a full `pdftotext -layout` extraction and explicitly mark layout-dependent checks as uncertain. If you cannot read `docs/demand.md`, say so and reduce confidence.

Do not consult prior project reviews, scoreboards, fix-theme summaries, author rebuttals, revision logs, or collaborator notes. Treat this as a fresh independent review.

### Review Calibration

Apply both NeurIPS-style and EMNLP/ARR-style expectations:

1. The work must be substantial, original, completed, and empirically supported.
2. Claims must be supported in the main body, not only in appendix or external artifacts.
3. Experiments must be strong enough for the central claim: meaningful benchmarks, strong and recent baselines, matched settings, multi-seed or variance treatment where relevant, paired significance tests / CIs, ablations, sensitivity analysis, and error analysis.
4. Novelty must be concrete relative to close prior work, not just renamed orchestration or prompt engineering.
5. Reproducibility must include enough detail about data, code, prompts, models, compute, hyperparameters, seeds, and evaluation scripts.
6. Limitations and responsible-research discussion must be specific, honest, and not used to smuggle in new evidence.
7. Writing, tables, and figures must look like a polished top-conference submission: no placeholder tone, no internal notes, no chatty assistant language, no unexplained dense tables, no visible project-management residue.

### Mandatory AI-Trace / AI-Generated-Prose Audit

Audit the paper for visible AI-generated writing artifacts and AI-assistant traces. This is not a binary detector and must not rely on vibe alone. You may not claim "AI-generated" unless there is concrete textual evidence. Instead, classify each issue as one of:

- `confirmed_meta_text`: explicit assistant/user-dialogue residue or instruction-following text.
- `high_risk_ai_trace`: repeated formulaic, generic, over-smoothed, or non-authorial prose that damages top-conference credibility.
- `disclosure_or_policy_risk`: possible mismatch between paper text, AI-assistance disclosure, methodology use, coding use, references, or Responsible NLP checklist.
- `no_issue`: no visible problem.

Look especially for:

1. Direct assistant residue:
   - "根据你的要求..."
   - "我推荐..."
   - "下面是..."
   - "Here is..."
   - "As an AI language model..."
   - "I cannot..."
   - "This revised version..."
   - "The following section..."
   - "we can see that..."
   - "in conclusion, it is important to note..."
2. Chat / task-management residue:
   - TODO, FIXME, pending, placeholder, reviewer asked, response to user, per request, generated draft, camera-ready note, internal path, commit hash exposed in main paper, "run this script", "copy this into".
3. Formulaic AI prose patterns:
   - generic paragraph openings without scientific content;
   - repetitive "not only ... but also ..." and "plays a crucial role" scaffolding;
   - inflated adjectives not backed by evidence, such as "novel", "robust", "comprehensive", "significant" without a table or citation;
   - smooth but content-light transitions that avoid naming datasets, baselines, or mechanisms;
   - inconsistent terminology that suggests pasted/rewritten sections rather than a stable scientific object.
4. Citation and reference risks:
   - hallucinated or malformed citations;
   - suspiciously vague "recent studies show" claims without citations;
   - real citations used for claims they do not support;
   - missing 2024-2026 close work in a fast-moving area.
5. Policy and disclosure risks:
   - if LLMs are part of the method, data generation, evaluation, coding pipeline, or judge/scorer, the usage must be described with enough methodological detail;
   - if AI writing/coding assistance is disclosed, check whether the scope is clear and whether the paper remains scientifically owned by the authors;
   - if assistance is not disclosed, do not call that a violation by itself, but flag visible meta-text, hallucinated content, or undisclosed methodology-relevant use.

Top-tier standard: even when AI assistance is allowed, obvious assistant residue or generic AI-style filler is a serious presentation and professionalism risk. A NeurIPS/EMNLP submission should read like a finished scientific paper, not a chat-generated deliverable.

### Required Output

Return a structured Markdown review with the following exact sections.

## 1. Process Compliance

- State whether you read `docs/demand.md`.
- State whether you read the rendered PDF or a text extraction.
- State whether layout-dependent checks are reliable.
- State that no prior project reviews / scoreboard / fix themes were used.

## 2. One-Paragraph Summary

Summarize the paper's claimed contribution and evidence in <=120 words.

## 3. Scores

Give numeric scores from 1 to 10 with one decimal:

- Soundness
- Significance
- Novelty
- Empirical Results
- Reproducibility
- Clarity / Presentation
- Responsible Research / Limitations
- AI-Trace Cleanliness
- Overall

Then give one of:

- Reject
- Weak Reject
- Borderline
- Weak Accept
- Accept

Use strict calibration:

- `>=8.5`: credible oral / top-tier strong accept range.
- `7.0-8.4`: likely accept only if all core evidence is solid.
- `5.5-6.9`: borderline.
- `4.0-5.4`: weak reject.
- `<4.0`: reject.

Caps:

- If empirical evidence is not strong enough for the headline claim, Overall cannot exceed 6.5.
- If recent SOTA / strong matched baselines are missing, Overall cannot exceed 6.0.
- If multi-seed / variance / CI treatment is missing for stochastic claims, Overall cannot exceed 6.0.
- If there is no meaningful ablation for claimed essential components, Overall cannot exceed 6.0.
- If there is confirmed assistant meta-text in the submission, Clarity and AI-Trace Cleanliness must be <=4.0, and Overall cannot exceed 6.0 unless the issue is isolated outside the paper body.
- If hallucinated citations or unchecked LLM-generated false claims are found, Overall cannot exceed 4.0.

## 4. Strengths

List 2-4 strengths. Each must cite a section, table, figure, equation, or exact phrase.

## 5. Major Weaknesses

List 4-8 major weaknesses, ordered by severity. Each must be evidence-tied. Do not use vague criticism.

For each weakness, include:

- `Evidence`: exact location or <=12-word quote.
- `Why it matters`: NeurIPS/EMNLP acceptance impact.
- `Fix required`: what would be needed to remove the concern.

## 6. Experiment And Baseline Audit

Fill this table:

| Check | Pass / Partial / Fail | Evidence | Acceptance impact |
|---|---|---|---|
| Benchmark diversity | | | |
| Benchmark-publicness and recognition | | | |
| Recent SOTA baselines | | | |
| Matched baseline settings | | | |
| Multi-seed or variance treatment | | | |
| Paired significance tests / CIs | | | |
| Ablation coverage | | | |
| Sensitivity analysis | | | |
| Error analysis | | | |
| Cost / compute reporting | | | |

## 7. Novelty And Related-Work Audit

Name at least 3 close prior works. For each:

- What does the prior work do?
- What does this paper claim is different?
- Is the delta mechanistic and falsifiable, or mostly framing?
- Is there overlap risk?

## 8. AI-Trace / AI-Generated-Prose Audit

Produce a table:

| Category | Status | Evidence | Severity | Required fix |
|---|---|---|---|---|
| Assistant meta-text | | | | |
| Chat/task residue | | | | |
| Generic AI-style filler | | | | |
| Hallucinated or suspicious citations | | | | |
| Disclosure / Responsible NLP mismatch | | | | |
| Terminology instability | | | | |
| Non-authorial tone in abstract/introduction/conclusion | | | | |

Rules for this section:

- Do not say "this was AI-generated" unless there is explicit meta-text or a policy-relevant disclosure mismatch.
- Prefer "visible AI-trace risk" or "non-authorial prose risk" when evidence is stylistic but not definitive.
- Quote exact phrases when possible.
- If no issue is found, say "No visible issue found" and explain the evidence basis.

## 9. Desk-Reject / Policy Risks

Audit:

- page limit / formatting;
- anonymization;
- template or margin tampering;
- limitations placement and content;
- responsible-research checklist / ethics;
- dual submission or thin slicing;
- AI-assistance disclosure and author responsibility;
- hallucinated references or unsupported citations.

Classify each as `confirmed`, `possible`, or `not observed`.

## 10. What Must Change For Acceptance

List the smallest set of changes needed for:

- `7+ weak accept`
- `8+ strong accept`
- `8.5+ oral`

Separate empirical fixes from writing / AI-trace cleanup.

## 11. Final Recommendation

Give a concise final recommendation that a real AC could use. It must include:

- final verdict;
- the strongest reason for rejection or acceptance;
- whether the paper is currently oral-ready;
- whether AI-trace issues are a blocker, a polish risk, or not observed.

Do not write encouragement. Do not write author-facing coaching unless it is in the required fix lists.
