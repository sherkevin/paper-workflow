# 20 AI-Trace And Process-Residue Checklist

This is an evidence-bound audit, not a detector.

## Confirmed Meta-Text

Search for:

- `Here is`
- `As an AI language model`
- `I cannot`
- `according to your request`
- `as requested`
- `This revised version`
- `The following section`
- `we can see that`

## Task Residue

Search for:

- `TODO`
- `FIXME`
- `pending`
- `placeholder`
- `reviewer asked`
- `response to user`
- `generated draft`
- `camera-ready note`
- `run this script`
- `copy this into`
- internal task IDs
- local paths
- commit hashes

## Formulaic Prose Risk

Manually inspect for:

- generic paragraph openings without scientific content;
- repeated `not only ... but also`;
- `plays a crucial role`;
- inflated adjectives without evidence;
- smooth transitions that avoid naming datasets, baselines, or mechanisms;
- terminology drift across abstract, method, tables, and figures.

## Policy / Disclosure Risk

- [ ] If AI tools are part of the method, evaluator, data generator, judge, coding pipeline, or result production, the paper discloses the methodological role.
- [ ] If AI assistance was only for editing/code completion, disclosure is precise and author-responsibility centered.
- [ ] No AI tool is described as a citation source, baseline oracle, evaluator, or result arbiter unless that is actually the method and is documented.

## Output Table

| Category | Status | Evidence | Required fix |
|---|---|---|---|
| Assistant meta-text | | | |
| Chat/task residue | | | |
| Generic AI-style filler | | | |
| Suspicious citations | | | |
| Disclosure mismatch | | | |
| Terminology instability | | | |

