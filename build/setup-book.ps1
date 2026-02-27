# Copilot Studio Gems — MkDocs Book Setup

# This script prepares the docs/ folder for MkDocs by copying gem files
# into the expected docs/gems/ location.
#
# Run this script from the project root before `mkdocs serve` or `mkdocs build`.

$projectRoot = Split-Path $PSScriptRoot -Parent
$gemsSource = Join-Path $projectRoot "gems"
$gemsDest = Join-Path $projectRoot "docs" "gems"

# Step 1: Auto-link GEM cross-references
$linkScript = Join-Path $PSScriptRoot "link-gems.ps1"
if (Test-Path $linkScript) {
    Write-Host "=== Auto-linking GEM references ===" -ForegroundColor Cyan
    & $linkScript
    Write-Host ""
}

# Step 2: Sync gems/ → docs/gems/
Write-Host "=== Syncing gems to docs/ ===" -ForegroundColor Cyan

# Create docs/gems/ if it doesn't exist
if (-not (Test-Path $gemsDest)) {
    New-Item -ItemType Directory -Path $gemsDest -Force | Out-Null
    Write-Host "Created docs/gems/ directory"
}

# Copy all gem files to docs/gems/
$files = Get-ChildItem -Path $gemsSource -Filter "GEM-*.md"
$copied = 0

foreach ($file in $files) {
    $destFile = Join-Path $gemsDest $file.Name
    $sourceHash = (Get-FileHash $file.FullName -Algorithm MD5).Hash
    
    $needsCopy = $true
    if (Test-Path $destFile) {
        $destHash = (Get-FileHash $destFile -Algorithm MD5).Hash
        if ($sourceHash -eq $destHash) {
            $needsCopy = $false
        }
    }
    
    if ($needsCopy) {
        Copy-Item $file.FullName -Destination $destFile -Force
        $copied++
    }
}

Write-Host "Synced $copied of $($files.Count) gem files to docs/gems/"

# Verify MkDocs requirements
Write-Host ""
Write-Host "=== Setup Checklist ==="

# Check MkDocs installed
if (Get-Command mkdocs -ErrorAction SilentlyContinue) {
    Write-Host "[OK] mkdocs found: $(mkdocs --version)"
} else {
    Write-Host "[!!] mkdocs not found. Install with: pip install mkdocs-material"
}

# Check mkdocs.yml exists
$mkdocsYml = Join-Path $projectRoot "mkdocs.yml"
if (Test-Path $mkdocsYml) {
    Write-Host "[OK] mkdocs.yml found"
} else {
    Write-Host "[!!] mkdocs.yml not found at project root"
}

# Summary
Write-Host ""
Write-Host "=== Ready ==="
Write-Host "To preview:  mkdocs serve"
Write-Host "To build:    mkdocs build"
Write-Host "To deploy:   mkdocs gh-deploy"
