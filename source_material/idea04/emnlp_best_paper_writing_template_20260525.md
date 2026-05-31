# EMNLP Best-Paper-Style Writing Template

Date: 2026-05-25
Owner: scientist
Status: reusable writing standard

## 0. Scope And Non-Negotiable Caveat

This document is a practical writing template for EMNLP/ACL-style long papers. It is intentionally prescriptive: title shape, abstract logic, section length, table style, tone, and acceptance checks are specified as if this were an internal paper factory standard.

It cannot guarantee acceptance. A top-tier paper still requires real novelty, correct claims, strong evidence, verified citations, and clean formatting. The purpose of this template is narrower but useful: if a paper already has a serious contribution and evidence, following this template should remove the common presentation, claim-shaping, and reviewer-friction failures that turn a potentially strong paper into a borderline review.

## 1. Sources Used For Calibration

Primary external sources checked:

- EMNLP 2026 Call for Main Conference Papers: https://2026.emnlp.org/calls/main_conference_papers/
- ACL Rolling Review author checklist: https://aclrollingreview.org/authorchecklist
- EMNLP 2024 Best Papers page: https://2024.emnlp.org/program/best_papers/
- EMNLP 2023 Best Papers page: https://2023.emnlp.org/program/best_papers/
- Backward Lens: Projecting Language Model Gradients into the Vocabulary Space, EMNLP 2024 Best Paper: https://aclanthology.org/2024.emnlp-main.142/
- CoGen: Learning from Feedback with Coupled Comprehension and Generation, EMNLP 2024 Best Paper: https://aclanthology.org/2024.emnlp-main.721/
- Label Words are Anchors: An Information Flow Perspective for Understanding In-Context Learning, EMNLP 2023 Best Paper: https://aclanthology.org/2023.emnlp-main.609/
- ACL 2025 awards page: https://2025.aclweb.org/program/awards/
- NeurIPS 2024 Best Paper Awards announcement: https://media.neurips.cc/Conferences/NeurIPS2024/NeurIPS2024_Best_Paper_Awards.pdf

Local calibration notes reused:

- `docs/scientist/analysis/S-385_best_paper_alignment_checklist_20260516.md`
- `docs/scientist/analysis/S-436_best_paper_table_style_calibration_20260524.md`
- `docs/scientist/analysis/S-461_best_paper_structure_benchmarking_20260524.md`
- `docs/paper/page_budget_audit.md`

Observed pattern:

Best/outstanding papers do not read like experiment logs. They read like one durable idea made inevitable by a field-level problem, then validated by experiments that are broad enough, clean enough, and easy enough to scan. Their abstracts are not detailed score tables. Their tables are not prose boxes. Their limitations protect the claim without becoming the headline.

## 1.1 Quality Audit Of This Template

After broader re-checking against EMNLP 2026, ARR checklist guidance, EMNLP 2023/2024 award pages, ACL 2025 awards, and three downloaded ACL Anthology PDFs, the template is directionally correct and usable as a high-quality writing standard. It is not a mechanical acceptance recipe. The strongest parts are the abstract logic, section budget, table rules, tone standard, and desk-reject checklist. The original weak points were:

1. It treated "EMNLP paper" too generically. EMNLP explicitly welcomes empirical, theoretical, resource, position, survey, negative-finding, and reproduction-style work, so the evidence burden must differ by paper type.
2. It underweighted paper-integrity risks. EMNLP 2026 explicitly highlights thin slicing, hallucinated citations, and entirely AI-generated papers as integrity risks; ARR also emphasizes visible human-facing text, proper checklist answers, and no leftover meta-text.
3. It did not map writing quality to reviewer scores. A template should say what separates a 6, 7, 8, and 9+ review.
4. It focused on method papers. Analysis and benchmark/resource papers need different result narratives.
5. It did not include a hard "evidence burden by claim type" table, which is necessary to prevent strong prose from hiding weak experiments.

This version fixes those issues. The final standard is:

```text
Writing can raise a strong paper, but it cannot rescue an unsupported claim.
If the claim is broad, the evidence must be broad.
If the evidence is narrow, the claim must be scientifically precise without sounding apologetic.
```

## 1.2 Common Patterns Across Strong EMNLP/ACL Papers

The broader sample suggests that accepted and award-level EMNLP/ACL papers share the following properties. These are not superficial formatting rules; they are reader-comprehension rules.

| Pattern | What it looks like in the paper | Why reviewers reward it |
|---|---|---|
| One memorable object | A named lens, dataset, mechanism, theorem, benchmark, or system appears in the title/abstract and is used consistently. | Reviewers can summarize the contribution after one page. |
| Field-level problem before implementation | The first paragraphs discuss a field assumption or evaluation gap, not local engineering details. | The work feels scientifically motivated rather than opportunistic. |
| Claim-evidence alignment | The paper's strongest claim exactly matches the strongest evidence. | Reviewers do not need to police overclaiming. |
| Main table is not a log | Full-run, controlled comparisons are separated from smoke runs, diagnostics, and appendices. | Results are easy to verify and hard to dismiss as cherry-picked. |
| Mechanism is visible | Ablations, interventions, traces, or analyses show why the result occurs. | The paper teaches a reusable lesson, not only a number. |
| Baseline fidelity is obvious | Setup states model, data, prompts/context, scorer, tuning, and comparison controls. | Reviewers trust that gains are not artifacts of weak baselines. |
| Negative space is controlled | Limitations are clear, but the abstract and main result do not sound apologetic. | The paper is honest without undermining itself. |
| Related work is contrastive | Close papers are named, accurately represented, and compared in one sentence each. | Novelty is legible and citation risk drops. |
| Reproducibility is inspectable | Code/data/splits/prompts/hashes or enough implementation details are available. | Reviewers can assign higher soundness/reproducibility scores without running code. |
| Integrity is boring | No hidden instructions, no local paths, no hallucinated citations, no run IDs, no checklist games. | Nothing distracts from the science. |

Strong papers also vary by contribution type. A best resource paper may not look like a best method paper; a best analysis paper may have more figures than tables; a negative finding may not "beat SOTA" at all. The invariant is not the shape of the experiment. The invariant is that the paper makes one important claim and supplies the right kind of evidence for that claim.

## 1.3 Rejection Modes To Avoid

Public rejected-paper reviews are not systematically available for EMNLP, so the safest negative evidence comes from ARR reviewer guidelines and recurring low-score patterns in open review processes. The template should separate invalid reviewer heuristics from real paper defects.

### Invalid Or Weak Reviewer Heuristics

Do not overfit the paper to these as if they were always valid:

| Heuristic | Why it is weak | How authors should respond preemptively |
|---|---|---|
| "The result is not surprising." | Obvious-in-retrospect findings can still be unknown and useful. | State what was previously untested and why confirmation matters. |
| "The result is negative." | Negative findings and failed replications are in scope when well evidenced. | Frame the negative result as a clear boundary or correction. |
| "The method is too simple." | Simpler methods can be stronger if they solve the problem. | Show why the simple mechanism is sufficient and robust. |
| "It is not SOTA." | SOTA is not necessary for every scientific contribution. | Do not claim SOTA unless proving it; otherwise foreground the actual contribution: analysis, efficiency, resource, fairness, reproducibility, or mechanism. |
| "It needs one more experiment." | Extra experiments are infinite; only claim-critical missing evidence is a rejection reason. | Make the claim narrow enough that the presented evidence is sufficient, or run the missing claim-critical experiment. |
| "It is niche." | Narrow subfields can have high-impact contributions. | Explain community value and why the target setting matters. |

These heuristics are still dangerous in practice because some reviewers use them. The paper should reduce their surface plausibility without letting them dictate a weaker or dishonest contribution.

### Real Rejection Risks

These are genuine failure modes that should be treated as P0 blockers:

| Failure mode | Reviewer interpretation | Preventive fix |
|---|---|---|
| Unclear research question | "I do not know what knowledge gap this paper fills." | Put the gap and contribution in abstract + first page. |
| Overclaiming | "The evidence does not support the scope." | Match claim to population tested; avoid broad terms like reasoning, understanding, or general SOTA unless validated. |
| Weak or unfair baselines | "The comparison is not trustworthy." | Use current baselines, tune fairly, match budgets, and explain adapter fidelity. |
| LLM-only evaluation without validation | "The metric may be arbitrary." | Validate evaluator reliability or use task-grounded metrics. |
| Inappropriate statistics | "The result may be cherry-picked." | Report CIs/error bars/significance, effect sizes, and variability assumptions. |
| P-hacking / best-of-unknown trials | "The numbers were selected after many attempts." | Predefine gates where possible; disclose failed diagnostic runs as boundary evidence, not main evidence. |
| Unmotivated sample selection | "The datasets/models do not represent the claim." | Explain why each dataset/model/baseline is selected and what population it supports. |
| Missing/misrepresented related work | "Novelty is overstated." | Verify close work and state exact deltas. |
| Vague terms | "Key terms are undefined." | Define central terms once and use them consistently. |
| Incomplete proofs/assumptions | "The theory is not sound." | State assumptions in main text and point to complete appendix proofs. |
| Reproducibility gaps | "I cannot tell how to rerun or audit it." | Include splits, prompts, configs, seeds, hardware, release terms, and artifact manifest. |
| Checklist or ethics sloppiness | "The authors are not careful." | Fill responsible NLP checklist with section references and justifications. |
| Hallucinated or unsupported citations | "The paper cannot be trusted." | Verify every claim-critical citation from a primary source. |
| AI/provenance ambiguity | "Maybe the scientific content was generated or unchecked." | Disclose assistance precisely; keep author-controlled design, scripts, numbers, and claims. |

### Borderline-Paper Pattern

Many borderline EMNLP papers are not bad. They fail because the reader sees one of these mismatches:

```text
strong title + weak evidence
broad claim + narrow dataset
interesting method + missing ablation
good average score + hidden taskwise losses
nice table + unclear baseline fidelity
good idea + missing close related work
clean prose + unverifiable artifact
honest limitation + abstract that sounds self-defeating
```

The fix is not always "write more." Often it is:

1. run the missing claim-critical experiment;
2. move diagnostics out of the main table;
3. replace broad claim nouns with precise ones;
4. add one mechanism-isolating ablation;
5. verify citations and baseline setup;
6. rewrite the abstract to lead with contribution, not apology.

## 2. The One-Sentence Contract

Before writing any section, the paper must have one sentence that answers:

```text
Current research assumes/does X, but this fails under Y; we introduce Z, which changes the unit of analysis from A to B, and show across C that this yields D.
```

For a method paper:

```text
Current systems fix <structure/control/evidence> before inference, but this fails when <task condition>; we introduce <named method>, which treats <new object> as <learned/inferred/measured object>, and show across <datasets/models/baselines> that it improves <main metric> while explaining <mechanism/failure mode>.
```

For an analysis paper:

```text
Current explanations attribute <phenomenon> to <standard account>, but this misses <observed mechanism>; we introduce <lens/tool>, which exposes <hidden variable/process>, and show across <models/tasks> that it predicts/explains <outcome>.
```

For a benchmark/resource paper:

```text
Current evaluations measure <old capability>, but miss <new failure mode>; we introduce <benchmark/resource>, which operationalizes <capability/failure> through <data/protocol>, and show that <systems> fail/succeed in ways that change <community conclusion>.
```

If this sentence is weak, the paper is not ready. Do not compensate with more numbers.

## 2.1 Paper-Type Variants

EMNLP-style papers can win awards for different reasons. Do not force every paper into the same method-plus-table mold.

### Method / System Paper

Core promise:

```text
We introduce a mechanism that changes how systems solve a recognized problem.
```

Evidence burden:

- strong baselines;
- full benchmark or credible large slice;
- ablations isolating the new mechanism;
- robustness or sensitivity;
- cost/runtime if system complexity increases;
- error analysis showing when the mechanism helps.

Typical winning shape:

```text
Problem -> mechanism -> controlled comparison -> ablation -> failure taxonomy -> reusable implementation.
```

### Analysis / Interpretability Paper

Core promise:

```text
We reveal a mechanism that changes how researchers understand a model or task.
```

Evidence burden:

- clear phenomenon;
- diagnostic method;
- repeated observations across models/layers/tasks;
- sanity checks against alternative explanations;
- at least one downstream use, intervention, or predictive validation.

Typical winning shape:

```text
Unexplained phenomenon -> new lens -> evidence that lens predicts/explains behavior -> intervention validates lens.
```

The EMNLP 2023 "Label Words are Anchors" pattern is a useful model: it names a mechanism, provides an information-flow lens, and then validates the insight with applications rather than only reporting a model score.

### Benchmark / Resource Paper

Core promise:

```text
We introduce a resource that changes what the community can measure.
```

Evidence burden:

- data construction protocol;
- annotation or collection quality;
- coverage/diversity analysis;
- baseline results from current systems;
- known limitations and intended use;
- release plan, license, ethics, and documentation.

Typical winning shape:

```text
Missing measurement -> resource design -> validation of quality -> baseline failures/surprises -> community reuse.
```

### Negative Finding / Reproduction Paper

Core promise:

```text
A widely assumed result or method does not hold under clearer conditions.
```

Evidence burden:

- faithful reproduction;
- exact divergence from prior setup;
- multiple checks against implementation error;
- explanation of why the negative result matters;
- constructive guidance for future work.

Tone requirement:

- Direct, not hostile.
- Focus on conditions and evidence, not blame.

### Position / Theme Paper

Core promise:

```text
The field should change how it defines progress or evaluation.
```

Evidence burden:

- grounded examples;
- clear taxonomy;
- consequences for evaluation or practice;
- actionable recommendations;
- anticipation of counterarguments.

Position papers still need evidence. They do not get a pass for being well written.

## 2.2 Evidence Burden By Claim Strength

| Claim type | Acceptable wording | Minimum evidence | Best-paper-level evidence |
|---|---|---|---|
| Local matched improvement | "Under matched X controls, Y improves over Z." | Same model, same scorer, full split or justified slice, CI. | Multiple datasets and strong baselines under the same controls. |
| General method superiority | "Y is a stronger organization method for task family T." | Multiple datasets, current baselines, ablations. | Multiple task families, robustness, public-system comparisons. |
| SOTA | "Y achieves state-of-the-art on benchmark B." | Official or reproduced public benchmark protocol and strongest current baselines. | Official leaderboard or exact reproducible comparison plus significance and compute accounting. |
| Mechanistic explanation | "Y works because of component C." | Isolated ablation for C and residual analysis. | Ablation, intervention, qualitative traces, and failure taxonomy agree. |
| Resource/community value | "Dataset D enables measurement of F." | Data card, quality audit, baselines. | Broad demographic/task coverage, clear failure discoveries, strong release story. |
| Negative finding | "Claim C does not hold under condition K." | Faithful reproduction plus controlled deviation analysis. | Multiple implementations/settings and explanation of the original fragility. |

Rule: never let prose outrun the evidence tier. If a claim needs the rightmost column and the paper only has the middle column, improve the experiment before sharpening the claim.

## 3. Eight-Page Main-Body Budget

For EMNLP/ACL long papers, plan for an 8-page main body. Treat 8 pages as the target density, not merely a maximum: a serious long-paper submission should usually land at 7.75--8.00 pages before Limitations/references when the rules allow an 8-page body. A 6--7 page main body often reads as underdeveloped unless the paper is intentionally short, theoretical, or unusually figure-light. Limitations, ethics, references, and appendices are outside the main body only if placed according to the current ACL/ARR rules. Do not use Limitations to sneak in new results, figures, or analysis.

The controlling constraint is the compiled page count, because equations, tables, and figures change text density. The planning target is 4,800--5,800 main-body words including abstract and captions, plus 4--6 compact floats. If a draft is below 7.75 pages, add claim-critical content: experiment setup clarity, full-run results, ablations, robustness, error analysis, or related-work contrast. Do not pad with roadmap prose, repeated motivation, or defensive limitations. If a draft exceeds 8 pages, move secondary diagnostics, data details, and extended ablations to appendix before compressing the core claim/evidence chain.

Recommended page/word budget:

| Section | Target pages | Target words | Main job |
|---|---:|---:|---|
| Title + abstract | 0.25--0.35 | 150--220 | Name the object, problem, method, result, implication. |
| Introduction | 1.00--1.25 | 700--900 | Make the problem inevitable and state contributions. |
| Background / related work | 0.60--0.90 | 450--700 | Position against close work, not survey everything. |
| Method / framework | 1.50--2.20 | 1000--1500 | Define the new object, mechanism, algorithm, and complexity. |
| Experimental setup | 0.50--0.75 | 350--550 | State datasets, models, baselines, metrics, controls. |
| Main results | 1.25--1.75 | 600--900 plus tables | Prove the headline claim with full-run evidence. |
| Analysis / ablation / robustness | 0.80--1.20 | 500--800 plus compact table/figure | Explain why it works and where it fails. |
| Discussion / conclusion | 0.25--0.40 | 150--250 | State the reusable lesson; do not add new claims. |
| Main-body total | 7.75--8.00 | 4800--5800 including abstract/captions | Use the full long-paper body for contribution, evidence, and interpretation. |
| Limitations | outside main body | 250--450 | Bound the claim; no new evidence. |

Hard cap rule:

- The preferred final shape is exactly 8 pages of main body, or close enough that the last main-body column ends naturally near the page bottom.
- Underfilled drafts should be expanded with missing evidence/protocol/error-analysis content, not prose padding.
- Overfilled drafts should move secondary rows and implementation details to appendix, not shrink the headline evidence.
- Main body should usually contain at most 4--6 floats.
- One main result table is mandatory.
- One mechanism or architecture figure is strongly preferred.
- One ablation/analysis table is acceptable.
- Dataset/baseline details should move to appendix once they stop changing the claim.

## 4. Title Template

Good title properties:

- Names the paper's object or lens.
- Says what changes conceptually.
- Avoids vague booster words like "Towards", "A Study of", "Exploring", unless the venue track expects it.
- Avoids internal implementation names unless the name is the contribution.
- Contains a concrete noun: lens, benchmark, framework, calibration, routing, evidence, compression, alignment, etc.

Patterns:

```text
<Named Object>: <Conceptual Action> for <Phenomenon/Task>
```

```text
<Key Mechanism> <Verb Phrase>: <Short Explanation of the New Lens>
```

```text
When <Standard Assumption> Fails: <Named Method/Benchmark> for <Problem>
```

Strong examples by structure:

- "Backward Lens: Projecting Language Model Gradients into the Vocabulary Space" names the lens and the operation.
- "Label Words are Anchors: An Information Flow Perspective for Understanding In-Context Learning" names the finding and the explanatory lens.
- "CoGen: Learning from Feedback with Coupled Comprehension and Generation" names the method and the coupling principle.

Bad title patterns:

- "Improving Multi-Agent QA with Better Routing" - too generic.
- "A Comprehensive Study of EDO" - sounds like a survey.
- "EDO-Frame: A Local Qwen Same-Backbone SOTA Framework..." - reads like a boundary negotiation instead of a contribution.

## 5. Abstract Template

Target: 6--8 sentences, 150--220 words.

The abstract should not be a result table. It should contain one or two headline numbers at most, selected to prove breadth or magnitude. Avoid lists of experiment IDs, many dataset-specific deltas, or defensive qualifiers in the first half.

Sentence plan:

1. Field-level motivation:
   - State the accepted practice or missing capability.
   - Example: "Multi-agent NLP systems typically fix roles, routing, and audit protocols before inference."
2. Failure/gap:
   - State why that practice is insufficient.
   - Example: "This makes organization insensitive to whether downstream evidence actually supports delegation."
3. Core idea:
   - Name the method and the conceptual shift.
   - Example: "We introduce X, which treats organization as an evidence-earned inference object rather than a static design choice."
4. Mechanism:
   - Say how the method works in one clause, not an algorithm dump.
   - Example: "X updates delegation, memory, and tool use from accepted local evidence and explicit audit boundaries."
5. Evidence breadth:
   - State datasets/models/baselines at the right granularity.
   - Example: "Across three public multi-hop QA datasets and matched same-backbone framework comparisons, X consistently outperforms fixed-role and centralized baselines."
6. Headline result:
   - Include one compact result statement.
   - Example: "It improves F1 by up to ... and remains positive under paired bootstrap tests."
7. Explanation:
   - State what the analysis teaches.
   - Example: "Ablations show that the gains come from evidence-gated routing rather than longer debate or more agents."
8. Implication/release:
   - End with the reusable lesson or artifact.
   - Example: "These results suggest that agent organization should be evaluated as a dynamic evidence process, not only as a prompt-level architecture."

Abstract tone:

- Use direct verbs: introduce, show, reveal, find, demonstrate, release.
- Use claim verbs only when evidence supports them: "achieves", "outperforms", "improves".
- Use "suggests" for interpretation, not for the main empirical result.
- Do not start with "Recent advances have..." unless the next sentence is specific and sharp.

Forbidden abstract moves:

- Putting Limitations-style narrowing before the contribution.
- Listing more than two exact deltas.
- Saying "we do not claim universal SOTA" in the abstract. Put that in Limitations or a setup paragraph.
- Using internal run IDs, dates, local filenames, or experiment batch labels.

## 6. Introduction Template

Target: 5--7 paragraphs, 700--900 words.

Paragraph 1: field-level setup.

- Start from the practice reviewers already recognize.
- Mention why the problem matters now.
- Do not start with a niche implementation.

Skeleton:

```text
<Field> increasingly relies on <standard architecture/protocol>. These systems often assume <standard design choice>. This assumption is convenient, but it becomes problematic when <condition that exposes the gap>.
```

Paragraph 2: concrete failure mode.

- Give one intuitive example or task condition.
- The example should be small enough to understand and broad enough to motivate the paper.
- Avoid a toy story that never connects to evaluation.

Skeleton:

```text
In <task setting>, a system must decide whether to <action>. A fixed protocol cannot distinguish <good case> from <bad case>, because <missing evidence>. The result is <failure mode>.
```

Paragraph 3: insight.

- State the conceptual inversion.
- This is the most important introduction paragraph.

Skeleton:

```text
Our central observation is that <object> should not be specified only before inference. It should be earned from <evidence source>. This changes <old unit> into <new unit>.
```

Paragraph 4: method.

- Name the method.
- Summarize mechanism in 3--4 clauses.
- Do not over-explain notation.

Skeleton:

```text
We propose <Name>, a <method type> that <mechanism 1>, <mechanism 2>, and <mechanism 3>. The method maintains <state>, applies <decision rule>, and exposes <audit/reproducibility property>.
```

Paragraph 5: evaluation.

- State the evaluation matrix.
- Separate full-run public evidence from diagnostic/smoke evidence.
- Mention matched controls and significance if central.

Skeleton:

```text
We evaluate <Name> on <datasets/tasks>, comparing against <baseline families> under matched <model/context/scorer> controls. We report <metrics> and paired significance tests, and use ablations to isolate <mechanisms>.
```

Paragraph 6: contribution list.

Use 3 bullets, not 5+. Each bullet should be claim plus evidence.

Good contribution bullets:

- "We formulate <new object> as <formal/actionable unit> and instantiate it in <system>."
- "We show <main empirical result> across <datasets/baselines> under <controls>."
- "We provide <analysis/artifact> that explains <mechanism/failure mode> and supports reproducibility."

Bad contribution bullets:

- "We conduct extensive experiments." Too generic.
- "We achieve good results." Too vague.
- "We discuss limitations." Not a contribution.

Paragraph 7: optional roadmap.

For EMNLP, skip the roadmap if page pressure is high. A one-sentence roadmap is enough.

## 7. Related Work Template

Target: 450--700 words.

Related Work is not a literature dump. It is a controlled contrast map.

Use 3--4 theme paragraphs:

1. Closest method family.
   - What they assume.
   - How your method differs.
2. Adjacent benchmarks or evaluation protocols.
   - What they measure.
   - Why your evaluation is complementary or stricter.
3. Mechanism/analysis literature.
   - What lens they use.
   - What your lens adds.
4. Optional safety/reproducibility/resource context.

Each paragraph should end with a contrast sentence:

```text
In contrast, our work <precise difference>, while holding <control> fixed.
```

Citation density:

- Aim for 2--5 citations per paragraph.
- Cite close work explicitly by name, not hidden in citation clusters.
- If a recent close paper exists, do not bury it in a long list.
- For any arXiv-only or very recent work, state comparability carefully.

Bad related-work tone:

- "To the best of our knowledge, no prior work..." unless verified.
- "Unlike all prior work..." almost always too broad.
- "X is orthogonal" without saying why.

## 8. Method Section Template

Target: 1000--1500 words, 1.5--2.2 pages.

Method must be self-contained. A reviewer should understand the object, inputs, outputs, decision rules, and complexity without opening the appendix.

Recommended structure:

### 8.1 Problem Setup

Define:

- input `x`;
- output `y`;
- model or agent set;
- state;
- allowed actions;
- evaluation target.

Keep notation minimal. Every symbol must be used at least twice.

### 8.2 Core Object

Define the new object in prose before equations.

Skeleton:

```text
The core object is <object>, a record of <state/evidence/action> that is updated when <condition>. It differs from <prior object> because <difference>.
```

### 8.3 Algorithm

Use one algorithm block or one compact figure, not both unless necessary.

Algorithm should include:

- initialization;
- decision step;
- evidence update;
- stopping condition;
- output selection.

### 8.4 Complexity / Bound

Include one practical bound if the system could look expensive.

Good:

```text
With maximum depth H and branch cap K, the number of model calls is bounded by ...
```

Bad:

- Deriving a long theorem that never affects the experiments.
- Hiding runtime behavior in appendix.

### 8.5 Implementation Contract

State enough for reproducibility:

- backbone model;
- decoding temperature;
- context budget;
- retry policy;
- scorer;
- random seeds or deterministic setting.

Do not put all these controls in a large prose table inside the main method. Use a compact setup table in experiments or appendix.

Method tone:

- Formal but readable.
- Prefer "we define", "we update", "we select", "we bound".
- Avoid "intuitively" more than once.
- Avoid proving obvious statements.

## 9. Experiment Section Template

Target: 2.5--3.5 pages including tables.

The experiment section must answer five reviewer questions in order:

1. What is the controlled setting?
2. What is the headline comparison?
3. Is the improvement broad and statistically credible?
4. Which component causes the improvement?
5. Where does the method fail?

Recommended subsection layout:

### 9.1 Setup

One compact paragraph plus one compact setup table if necessary.

Must include:

- datasets/tasks and split;
- baselines and why they are fair;
- model/backbone and decoding controls;
- metrics;
- significance testing;
- artifact/reproducibility pointer.

Do not include:

- long rationale for every baseline;
- implementation prose inside table cells;
- smoke runs in the main setup table.

### 9.2 Main Results

One main table.

Table rules:

- Rows: dataset x baseline or model x benchmark.
- Columns: metric values and delta/CI.
- Captions define metrics and comparison direction only.
- Interpretation goes in prose below the table.
- Full-validation rows must visually dominate smoke/diagnostic rows.

Main result prose should use this shape:

```text
Table X shows that <method> improves over <baseline family> on <scope>. The strongest gains appear on <condition>, while <hard condition> is smaller but remains positive. Because all rows share <controls>, the comparison isolates <mechanism>.
```

### 9.3 Breadth / Generalization

Use only if real evidence exists:

- additional dataset;
- additional model family;
- additional task family;
- reproduced public baseline;
- robustness rerun.

If evidence is not full or not positive, put it in analysis/boundary, not as breadth.

### 9.4 Ablation

Ablation must isolate named mechanisms.

Minimum strong ablation matrix:

| Component | Remove/replace with | Expected effect | Evidence |
|---|---|---|---|
| routing | fixed routing | lower F1 / more failures | table row |
| audit | accept all / no audit | more false delegation | table row |
| memory | no update / static memory | weaker repeated-task adaptation | table row |
| tools | no tools / fixed tools | weaker evidence retrieval | table row |

Do not claim mechanism if the ablation is a mixed bundle.

### 9.5 Robustness And Sensitivity

At least one:

- seeds/reruns;
- prompt variants;
- threshold sweep;
- context budget sweep;
- scorer audit;
- model family transfer.

Robustness prose:

```text
The method is stable when <variation>, but sensitive to <variation>. This supports <claim> and limits <overclaim>.
```

### 9.6 Error Analysis

Use quantitative taxonomy plus 1--2 qualitative cases if page permits.

Good:

- W/T/L counts;
- bucket-level deltas;
- named failure families;
- repair target.

Bad:

- "We manually inspected errors" without counts.
- Only cherry-picked examples.
- Error analysis that is actually limitations.

## 10. Table And Figure Standards

Main-paper tables should look like best-paper tables, not lab notebooks.

Table checklist:

- One line per evaluated condition.
- Short cells.
- No prose sentences inside cells.
- No internal run IDs.
- No "scope" column unless it is a benchmark dimension.
- Use consistent decimal precision.
- Bold only the best or the method row; do not bold every positive delta.
- CIs use one consistent format.
- Captions are 1--2 sentences.

Recommended table set:

1. Setup/control table: optional, small.
2. Main result table: mandatory.
3. Ablation/analysis table: mandatory for mechanism papers.
4. Robustness/sensitivity table: optional if not too dense.

Figure checklist:

- Figure 1 should make the core idea visible, not decorate the method.
- Use callouts that correspond to terms in the text.
- Text must be readable in two-column PDF.
- Avoid screenshots of logs or dense pipelines.
- If a figure cannot be understood in 30 seconds, simplify it.

Caption template:

```text
Figure X: <what is shown>. <one sentence explaining why it matters for the claim>.
```

Bad caption:

```text
Figure X: An illustration of our framework.
```

## 11. Tone Standard

The target voice is confident, specific, and evidence-bound.

Use:

- "We introduce..."
- "We show..."
- "The results indicate..."
- "This isolates..."
- "The analysis reveals..."
- "The main failure mode is..."

Avoid:

- "We believe..."
- "It is worth noting..."
- "Interestingly..." without analysis.
- "Extensive experiments..." without scope.
- "To the best of our knowledge..." unless verified.
- "This paper is the first..." unless you can defend it.
- "Not universal SOTA..." in the abstract or headline.
- "Only", "merely", "preliminary" around your strongest evidence.
- AI-like filler: "delve", "underscore", "seamlessly", "robust and comprehensive", "paves the way" unless it is genuinely earned.

Claim calibration:

- Strong claim: use when full evidence supports it.
- Moderate claim: use when evidence is positive but scoped.
- Boundary claim: use in Limitations or Discussion, not in title/abstract.

Examples:

Strong:

```text
X outperforms all matched baselines across Y under shared decoding, context, and scoring controls.
```

Moderate:

```text
X remains positive under the matched local-backbone setting, with the largest gains on Y.
```

Boundary:

```text
These experiments do not establish cross-backbone universal SOTA; they test whether the organization rule improves matched local systems.
```

## 12. Limitations And Ethics Template

Limitations placement:

- After conclusion and before references, following current ACL/ARR guidance.
- Outside the main page limit if placed correctly.
- No new methods, figures, experiments, or analysis.

Good Limitations structure:

1. Scope of evaluation.
2. Model/backbone constraints.
3. Dataset/task-family constraints.
4. Reproducibility and compute.
5. Safety/ethics if relevant.

Tone:

- Honest but not self-defeating.
- Do not restate the entire claim boundary in the abstract and again in every table caption.
- Say what the paper proves, then what it does not prove.

Template:

```text
This work evaluates <scope>. It does not establish <broader claim>. The main evidence uses <models/datasets>, so transfer to <outside scope> requires further validation. <Risk> is possible if <misuse>; our release mitigates this by <artifact/control>.
```

AI-assistance disclosure:

- Be specific.
- Say whether AI tools touched code, writing polish, evaluation scripts, reported numbers, or claim decisions.
- Do not use vague phrasing that sounds like hiding scientific input.

Template:

```text
AI assistance was limited to code-completion and language-polish support under author review. Scientific design, evaluation scripts, prompt changes, citation verification, reported numbers, and paper-promotion decisions were made and checked by the authors.
```

## 13. Reproducibility Template

A paper-grade artifact story includes:

- exact data splits;
- model identifiers and serving endpoint type;
- decoding settings;
- context length;
- prompt templates;
- evaluation scripts;
- bootstrap/randomness details;
- hardware/runtime if relevant;
- release manifest or hashes;
- anonymized code path or supplement.

Main text needs a compact reproducibility contract. Appendix can hold full command lines.

Good main-text sentence:

```text
All comparisons use the same model, temperature, context budget, scorer, and retry policy; scripts, prompts, and run hashes are included in the anonymous artifact.
```

Bad:

```text
Details are in the appendix.
```

## 14. Reviewer Acceptance Gate

Before calling a paper submission-ready, answer each question with evidence:

| Gate | Required evidence | Fail condition |
|---|---|---|
| Novel object | Title/abstract/method name one memorable object or lens. | The paper is a list of tricks. |
| Field-level problem | Intro paragraph 1 states a broad failure mode. | Motivation starts from implementation detail. |
| Mechanism | Method defines why the approach should work. | Method is only a pipeline diagram. |
| Main evidence | Full-run or accepted benchmark result with fair baselines. | Only smoke/batch evidence. |
| Breadth | Multiple datasets, models, baselines, or task families. | One lucky row. |
| Statistics | CIs/seeds/reruns or equivalent uncertainty handling. | Deterministic one-off result with no audit. |
| Ablation | Components isolated one at a time. | Mixed ablation bundles. |
| Error analysis | Quantitative buckets and failure modes. | Cherry-picked examples only. |
| Related work | Close recent papers named and compared. | Missing obvious contemporaneous work. |
| Table style | Metric-first, compact, no prose cells. | Tables read like status logs. |
| Page/style | 8-page main body, official template, readable figures. | Page overflow or unreadable figures. |
| Integrity | No hallucinated citations, no residue, no hidden assistant text. | Any TODO/path/run-ID residue in PDF. |

If any P0 gate fails, do not ask the abstract to hide it. Fix the experiment or frame the paper for a different claim.

## 14.1 Reviewer Score Ladder

Use this ladder to decide whether the paper is merely formatted correctly or genuinely strong.

| Expected score | Paper state | Typical reviewer reaction | Required upgrade |
|---:|---|---|---|
| 4--5 | Interesting idea, weak evidence, unclear positioning. | "Potentially useful but not convincing." | Add fair baselines, full results, and related-work closure. |
| 5--6 | Solid local result, but narrow scope or incomplete mechanism. | "Borderline; evidence does not match claim breadth." | Add breadth, ablations, robustness, and error analysis. |
| 6--7 | Acceptable paper with clear contribution and credible evidence. | "Useful and mostly convincing." | Improve novelty framing, presentation, and strongest baseline comparisons. |
| 7--8 | Strong paper with memorable idea, broad evidence, and clean writing. | "Clear accept; likely influential for this area." | Add one surprising insight, stronger artifact story, or broader transfer. |
| 8--9 | Best-paper candidate. | "Changes how I think about the problem." | Ensure no hidden weakness: citations, variance, ethical scope, release, and table clarity. |
| 9+ | Rare. Durable idea plus rigorous evidence plus excellent presentation. | "This should shape future work." | Usually requires community-level value: benchmark, theory, widely reusable method, or unusually strong empirical discovery. |

Do not confuse a polished 6 with a 9. Best-paper writing has three simultaneous properties:

1. The idea is memorable.
2. The evidence is difficult to dismiss.
3. The presentation makes the mechanism obvious.

## 14.2 Best-Paper Paragraph Test

Every paragraph in the main body should pass one of these roles:

| Paragraph role | It should answer | If it does not |
|---|---|---|
| Motivation | Why does the field care? | Delete or merge. |
| Gap | What assumption fails? | Make the failure concrete. |
| Insight | What new object/lens is introduced? | Rewrite until memorable. |
| Method | What is computed or changed? | Add inputs/outputs/action. |
| Setup | What is controlled? | Move detail to appendix. |
| Result | What does the table prove? | Tie to one claim. |
| Analysis | Why did it work/fail? | Add ablation/error evidence. |
| Limitation | What is outside scope? | Keep after main claim, not before. |

If a paragraph only says "this is complex", "details are in appendix", or "we are careful", it is not carrying paper value.

## 15. Full Paper Skeleton

```text
Title:
<Named Object>: <Conceptual Operation> for <Problem>

Abstract:
[1] Field practice.
[2] Gap/failure.
[3] Named method and conceptual shift.
[4] Mechanism.
[5] Evaluation breadth.
[6] Headline result.
[7] Mechanistic finding.
[8] Implication/artifact.

1 Introduction
P1: broad practice and why it matters.
P2: concrete failure mode.
P3: central insight.
P4: method summary.
P5: evaluation summary.
P6: 3 contribution bullets.

2 Related Work
P1: closest systems.
P2: benchmark/evaluation literature.
P3: mechanism/analysis literature.
P4: safety/reproducibility/resource context if relevant.

3 Method
3.1 Problem setup.
3.2 Core object.
3.3 Algorithm or mechanism.
3.4 Complexity/runtime bound.
3.5 Implementation contract.

4 Experiments
4.1 Setup.
4.2 Main results.
4.3 Breadth/generalization.
4.4 Ablation.
4.5 Robustness/sensitivity.
4.6 Error analysis.

5 Conclusion
One paragraph: repeat the durable lesson, not every result.

Limitations
Scope, model/data constraints, reproducibility, misuse.

Ethical Considerations (optional/required depending venue)
Data, misuse, fairness, release.

References
Verified only.

Appendix
Full prompts, extra tables, run commands, proofs, artifact manifest.
```

## 16. Section-Level Writing Rubrics

Abstract score 9/10 if:

- It contains the problem, method, evidence, and insight.
- It names the method or lens.
- It uses at most two exact numbers.
- It does not lead with caveats.

Introduction score 9/10 if:

- A reviewer can explain the paper's core idea after page 1.
- The contribution bullets are falsifiable.
- The evaluation paragraph tells what was compared and under what controls.

Method score 9/10 if:

- All symbols are defined.
- The algorithm can be implemented from the main text plus appendix.
- The new mechanism is distinguishable from prior pipelines.

Experiments score 9/10 if:

- The main table is full-run, not smoke.
- Baselines are current and fair.
- Component ablations isolate mechanisms.
- Robustness and error analysis exist.
- Negative or boundary evidence is not hidden, but also not made into the headline.

Writing score 9/10 if:

- Every paragraph has one job.
- Every table/figure has one claim.
- No paragraph exists only to apologize for scope.
- Claims are confident where evidence is strong and bounded where evidence is incomplete.

## 17. Editing Procedure For An Existing Draft

Use this order:

1. Write the one-sentence contract.
2. Rewrite title and abstract around the contract.
3. Rewrite introduction paragraphs 1--3 around the problem and insight.
4. Delete result minutiae from the abstract.
5. Replace prose-heavy tables with metric-first tables.
6. Move smoke/diagnostic rows to appendix unless they explain a main mechanism.
7. Add or sharpen ablation/error-analysis prose.
8. Verify citations and close work.
9. Rebuild PDF and inspect pages 1, 7, and 8 visually.
10. Run residue scans for TODOs, paths, internal IDs, assistant phrases, and placeholder captions.

## 18. EMNLP-Specific Submission Checks

Must pass before submission:

- Main body is within 8 pages for long paper submission.
- Limitations section exists and introduces no new result.
- Optional ethics/responsible research text is placed correctly.
- References and appendix are included in the same PDF if required.
- Review mode/anonymization are correct.
- No non-anonymous URLs or artifact paths leak identity.
- Responsible NLP checklist is complete with section references.
- AI-writing/code assistance disclosure is truthful and specific.
- Citations are verified against primary pages where possible.
- No comments, TODOs, stale run IDs, local paths, or task-management residue appear in the PDF.

Additional 2026-style integrity checks:

- Do not cite papers that were not read or whose bibliographic metadata cannot be verified.
- Do not cite hallucinated arXiv identifiers, venues, author lists, or benchmark claims.
- Do not split one contribution into multiple thin submissions.
- Do not include text aimed at automated reviewers or hidden instructions.
- Do not use AI tools to fabricate related work, experiments, numbers, or authorial decisions.
- Do not overstate use of public baselines when the comparison is actually adapter-local or smoke-only.
- If an appendix contains additional experiments, the main text must make clear whether they are confirmatory, diagnostic, or boundary-only.

## 18.1 Source Verification Standard

For every citation used in a claim-critical sentence, record at least one of:

- ACL Anthology page;
- official conference page;
- publisher DOI page;
- arXiv page plus version date;
- project repository or benchmark leaderboard.

Citation-risk labels:

| Risk | Example | Action |
|---|---|---|
| Low | ACL Anthology proceedings paper with stable PDF. | Safe after title/author/year check. |
| Medium | arXiv-only recent baseline. | Verify version and avoid venue claims. |
| High | blog, unofficial summary, unverifiable leaderboard. | Do not use for central claims unless corroborated. |
| Critical | citation generated from memory with no primary source. | Remove immediately. |

Related-work prose should say what the cited paper actually did, not what would be convenient for contrast.

## 19. Practical Red Flags

Desk-reject risks:

- page limit violation;
- missing Limitations;
- template/margin/font changes;
- non-anonymous links;
- dual submission/resubmission mismatch;
- hallucinated citations;
- appendix submitted separately when venue expects one PDF;
- hidden text or text aimed at machine readers.

Weak-reject risks:

- strong abstract but one-dataset evidence;
- missing close baseline;
- ablations too bundled;
- no uncertainty treatment;
- dense tables that hide the conclusion;
- method not self-contained;
- defensive claim boundary repeated too often.

Best-paper blockers:

- no memorable insight;
- no surprising or reusable finding;
- evidence cannot generalize beyond a narrow batch;
- result depends on unverified implementation details;
- reviewer cannot tell why the method works.

## 20. Final Best-Paper Style Formula

A strong EMNLP paper should read like this:

```text
The field assumes X.
X fails under condition Y.
We introduce named object Z.
Z changes the scientific unit from A to B.
This mechanism predicts when the method should help.
Across broad, fair, reproducible evidence, it helps.
Ablations show which component matters.
Error analysis shows where it fails.
The community can reuse the object, benchmark, method, or finding.
The limitations are clear but not the headline.
```

If a draft follows that logic, uses compact evidence-first tables, verifies citations, stays inside the page limit, and has real full-run evidence, it has a substantially stronger chance at EMNLP/ACL acceptance than a draft that merely reports many scores.
