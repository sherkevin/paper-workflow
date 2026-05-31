param(
  [Parameter(Mandatory=$true)][string]$ProjectRoot
)

$ErrorActionPreference = "Stop"
$TemplateRoot = Resolve-Path (Join-Path $PSScriptRoot "..")

$dirs = @(
  "article/latex",
  "article/build",
  "artifacts/experiments",
  "artifacts/reviews",
  "artifacts/submission",
  "artifacts/tmp",
  "docs/coordination",
  "docs/scientist/analysis",
  "docs/scientist/handoffs",
  "docs/engineer/results",
  "docs/engineer/runbooks",
  "docs/reviewer/handoffs",
  "docs/paper",
  "prompts/reviewer_templates",
  "scripts/audit",
  "scripts/build",
  "configs/experiments"
)

New-Item -ItemType Directory -Path $ProjectRoot -Force | Out-Null
foreach ($d in $dirs) {
  New-Item -ItemType Directory -Path (Join-Path $ProjectRoot $d) -Force | Out-Null
}

Copy-Item -LiteralPath (Join-Path $TemplateRoot "AGENTS.md") -Destination (Join-Path $ProjectRoot "AGENTS.md") -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot "PROJECT_STRUCTURE.md") -Destination (Join-Path $ProjectRoot "PROJECT_STRUCTURE.md") -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot "docs") -Destination (Join-Path $ProjectRoot "docs/template") -Recurse -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot "checklists") -Destination (Join-Path $ProjectRoot "checklists") -Recurse -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot "prompts") -Destination (Join-Path $ProjectRoot "prompts/template") -Recurse -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot ".cursor") -Destination (Join-Path $ProjectRoot ".cursor") -Recurse -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot "scripts/audit-paper-surface.ps1") -Destination (Join-Path $ProjectRoot "scripts/audit/audit-paper-surface.ps1") -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot "scripts/build-manifest.py") -Destination (Join-Path $ProjectRoot "scripts/audit/build-manifest.py") -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot "scripts/verify-manifest.py") -Destination (Join-Path $ProjectRoot "scripts/audit/verify-manifest.py") -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot "templates/todo/SCIENTIST_TODO.md") -Destination (Join-Path $ProjectRoot "docs/coordination/SCIENTIST_TODO.md") -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot "templates/todo/ENGINEER_TODO.md") -Destination (Join-Path $ProjectRoot "docs/coordination/ENGINEER_TODO.md") -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot "templates/todo/REVIEWER_TODO.md") -Destination (Join-Path $ProjectRoot "docs/coordination/REVIEWER_TODO.md") -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot "templates/paper/one_sentence_contract.md") -Destination (Join-Path $ProjectRoot "docs/paper/one_sentence_contract.md") -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot "templates/paper/main_paper_outline.md") -Destination (Join-Path $ProjectRoot "docs/paper/main_paper_outline.md") -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot "templates/paper/experiment_matrix.md") -Destination (Join-Path $ProjectRoot "docs/paper/experiment_matrix.md") -Force
Copy-Item -LiteralPath (Join-Path $TemplateRoot "templates/paper/openreview_metadata.md") -Destination (Join-Path $ProjectRoot "docs/paper/openreview_metadata.md") -Force

"OK initialized paper project at $ProjectRoot"
