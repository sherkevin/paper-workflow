param(
  [Parameter(Mandatory=$true)][string[]]$TextPaths
)

$ErrorActionPreference = "Stop"

$patterns = @(
  "TODO",
  "FIXME",
  "pending",
  "placeholder",
  "current batch",
  "no-paid",
  "no paid",
  "paid lane",
  "quota",
  "promotion gate",
  "paper-facing",
  "submission-ready",
  "reviewer cap",
  "best-paper cap",
  "fallback",
  "workaround",
  "according to your request",
  "as requested",
  "generated draft",
  "copy this into",
  "run this script",
  "as an AI language model",
  "Here is",
  "I cannot",
  "Codex",
  "Cursor",
  "assistant"
)

$hadHit = $false
foreach ($path in $TextPaths) {
  if (-not (Test-Path -LiteralPath $path)) {
    throw "Missing text path: $path"
  }
  foreach ($pattern in $patterns) {
    $hits = Select-String -LiteralPath $path -Pattern $pattern -SimpleMatch -CaseSensitive:$false
    foreach ($hit in $hits) {
      $hadHit = $true
      [pscustomobject]@{
        path = $path
        pattern = $pattern
        line = $hit.LineNumber
        text = $hit.Line.Trim()
      } | ConvertTo-Json -Compress
    }
  }
}

if ($hadHit) {
  exit 2
}

"OK no configured process-residue hits"

