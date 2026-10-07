# Generates a plain-text uBlock filter list from filters.md.
# Markdown headings are converted to uBlock-compatible comments.
# Script location: scripts/generate-txt.ps1
# Input:  ../filters.md
# Output: ../filters.txt

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $scriptDir

$source = Join-Path $projectRoot "filters.md"
$output = Join-Path $projectRoot "filters.txt"

if (-not (Test-Path $source)) {
    Write-Error "Source file not found: $source"
    exit 1
}

$markdown = Get-Content $source -Raw

# Remove HTML comments (<!-- ... -->) before parsing the Markdown.
$markdown = $markdown -replace '(?s)<!--.*?-->', ''

$lines = $markdown -split '\r?\n'
$outputLines = [System.Collections.Generic.List[string]]::new()
$inCodeBlock = $false

foreach ($line in $lines) {
    # Fenced code blocks contain the actual uBlock rules. Ignore the fence line
    # itself and toggle whether subsequent lines should be copied.
    if ($line -match '^\s*```') {
        $inCodeBlock = -not $inCodeBlock

        # Keep sections visually separated in the generated filter list.
        if (-not $inCodeBlock -and $outputLines.Count -gt 0 -and $outputLines[$outputLines.Count - 1] -ne '') {
            $outputLines.Add('')
        }

        continue
    }

    if ($inCodeBlock) {
        $outputLines.Add($line)
        continue
    }

    # Convert Markdown headings to uBlock comments so the generated file
    # retains the section names without affecting filter behavior.
    if ($line -match '^#{1,6}\s+(.+?)\s*$') {
        $heading = $Matches[1].Trim()

        if ($outputLines.Count -gt 0 -and $outputLines[$outputLines.Count - 1] -ne '') {
            $outputLines.Add('')
        }

        $outputLines.Add("! $heading")
    }
}

# Remove trailing blank lines.
while ($outputLines.Count -gt 0 -and $outputLines[$outputLines.Count - 1] -eq '') {
    $outputLines.RemoveAt($outputLines.Count - 1)
}

# Write UTF-8 without a BOM for portability.
$outputText = $outputLines -join [Environment]::NewLine
[System.IO.File]::WriteAllText(
    $output,
    $outputText + [Environment]::NewLine,
    [System.Text.UTF8Encoding]::new($false)
)

$ruleCount = @(
    $outputLines |
        Where-Object { $_.Trim() -ne '' -and $_ -notmatch '^\s*!' }
).Count

Write-Host "Generated: $output"
Write-Host "Rules: $ruleCount"
