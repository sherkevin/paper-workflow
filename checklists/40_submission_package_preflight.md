# 40 Submission Package Preflight

Run this after the final build and before upload.

## Files

| Artifact | Path | SHA256 | Size | Build time |
|---|---|---:|---:|---|
| Main PDF | | | | |
| Appendix PDF | | | | |
| Supplement ZIP | | | | |
| Manifest | | | | |

## PDF Health

- [ ] `pdfinfo` succeeds.
- [ ] Page count matches venue rule.
- [ ] Page size matches venue rule.
- [ ] `pdffonts` shows embedded fonts and no Type 3 risk unless venue permits.
- [ ] `pdftotext -layout` succeeds.
- [ ] Render pages 1, last main-body page, limitations page, and densest table page.

## Package Consistency

- [ ] Main paper references to appendix/supplement are present in uploaded files.
- [ ] Supplement ZIP was rebuilt after appendix changes.
- [ ] Manifest verifies in the source directory.
- [ ] ZIP was extracted to a temp directory and manifest verifies from the extracted copy.
- [ ] Metadata file title/abstract/TL;DR/keywords match the current PDF.

## Scans

- [ ] Local paths.
- [ ] Author names/institutions/emails.
- [ ] Internal task IDs.
- [ ] Process vocabulary.
- [ ] Assistant/chat residue.
- [ ] Placeholder captions.
- [ ] Citation placeholder fields.

## Author-Owned Fields

These cannot be certified by an agent:

- [ ] Author list and order.
- [ ] OpenReview profiles.
- [ ] Conflicts.
- [ ] Resubmission / preprint status.
- [ ] License.
- [ ] Data/code sharing.
- [ ] Responsible NLP checklist.
- [ ] AI-reviewing or AI-assistance declarations required by venue.
- [ ] Final consent to submit.

