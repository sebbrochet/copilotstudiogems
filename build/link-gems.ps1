# link-gems.ps1
# Converts plain-text GEM references to markdown hyperlinks.
# Run from project root: .\build\link-gems.ps1

param(
    [switch]$DryRun  # Show what would change without modifying files
)

$projectRoot = Split-Path $PSScriptRoot -Parent
$gemsDir = Join-Path $projectRoot "gems"

# Build GEM number → filename mapping
$gemMap = @{}
Get-ChildItem $gemsDir -Filter "GEM-*.md" | ForEach-Object {
    $num = ($_.Name -replace '^GEM-(\d+).*', '$1')
    $gemMap[$num] = $_.Name
}

Write-Host "=== GEM Auto-Linker ===" -ForegroundColor Cyan
Write-Host "Found $($gemMap.Count) GEM files" -ForegroundColor Green
Write-Host ""

$totalChanges = 0

function Add-GemLinks {
    param(
        [string]$FilePath,
        [string]$RelativePrefix  # e.g. "" for gems/, "../gems/" for docs/front-matter/
    )
    
    $content = Get-Content $FilePath -Raw -Encoding UTF8
    $original = $content
    $fileName = Split-Path $FilePath -Leaf
    
    # Determine this file's own GEM number (to avoid self-linking)
    $selfNum = $null
    if ($fileName -match '^GEM-(\d+)') {
        $selfNum = $Matches[1]
    }
    
    # Split content into code-block and non-code-block segments
    # We only modify non-code-block segments
    $segments = [regex]::Split($content, '(```[\s\S]*?```)')
    $result = ""
    
    foreach ($seg in $segments) {
        if ($seg -match '^```') {
            # Code block — pass through unchanged
            $result += $seg
            continue
        }
        
        $lines = $seg -split '\r?\n'
        $processedLines = @()
        
        foreach ($line in $lines) {
            # Skip footer lines like "*Gem 013 | Author:..."
            if ($line -match '^\*Gem \d{3} \|') {
                $processedLines += $line
                continue
            }
            
            # Skip H1 title lines
            if ($line -match '^# Gem \d{3}:') {
                $processedLines += $line
                continue
            }
            
            # Skip lines that are inside markdown table headers (---|---|---)
            if ($line -match '^\|[\s-]+\|') {
                $processedLines += $line
                continue
            }
            
            # Process "Gem NNN" patterns (case-sensitive: "Gem" with capital G)
            # Negative lookbehind for [ to avoid already-linked refs
            # Negative lookbehind for # to avoid anchor refs
            $line = [regex]::Replace($line, '(?<!\[)(?<!\w)\*{0,2}Gem (\d{3})\*{0,2}(?!\]|\d|[^\s\)\.,;:''`\|])', {
                param($m)
                $num = $m.Groups[1].Value
                $fullMatch = $m.Value
                
                # Skip self-references
                if ($num -eq $selfNum) { return $fullMatch }
                
                # Skip if no matching gem file
                if (-not $gemMap.ContainsKey($num)) { return $fullMatch }
                
                $gemFile = $gemMap[$num]
                $link = "${RelativePrefix}${gemFile}"
                
                # Preserve bold formatting
                if ($fullMatch -match '^\*\*(.+)\*\*$') {
                    return "**[$($Matches[1])]($link)**"
                }
                
                return "[$fullMatch]($link)"
            })
            
            # Process "GEM-NNN" patterns (uppercase, with dash)
            # Don't match GEM-NNN- (part of filename)
            $line = [regex]::Replace($line, '(?<!\[)(?<!\/)(?<!-)GEM-(\d{3})(?![\d\-]|[a-z]|\])', {
                param($m)
                $num = $m.Groups[1].Value
                $fullMatch = $m.Value
                
                if ($num -eq $selfNum) { return $fullMatch }
                if (-not $gemMap.ContainsKey($num)) { return $fullMatch }
                
                $gemFile = $gemMap[$num]
                $link = "${RelativePrefix}${gemFile}"
                return "[$fullMatch]($link)"
            })
            
            $processedLines += $line
        }
        
        $result += ($processedLines -join "`n")
    }
    
    if ($result -ne $original) {
        $changeCount = 0
        # Count link additions by comparing [Gem or [GEM occurrences
        $origLinks = ([regex]::Matches($original, '\[(?:Gem|GEM)[\s-]\d{3}')).Count
        $newLinks = ([regex]::Matches($result, '\[(?:Gem|GEM)[\s-]\d{3}')).Count
        $changeCount = $newLinks - $origLinks
        
        if ($DryRun) {
            Write-Host "  [DRY] ${fileName}: +${changeCount} links" -ForegroundColor Yellow
        } else {
            Set-Content -Path $FilePath -Value $result -Encoding UTF8 -NoNewline
            Write-Host "  [OK] ${fileName}: +${changeCount} links" -ForegroundColor Green
        }
        return $changeCount
    }
    return 0
}

# ============================================================
# Process gems/ source files (links are same-directory)
# ============================================================
Write-Host "--- Processing gems/ ---" -ForegroundColor Yellow
$gemsFiles = Get-ChildItem $gemsDir -Filter "GEM-*.md"
foreach ($f in $gemsFiles) {
    $c = Add-GemLinks -FilePath $f.FullName -RelativePrefix ""
    $totalChanges += $c
}

# ============================================================
# Process docs/ structural files
# ============================================================
$docsRoot = Join-Path $projectRoot "docs"

# docs/front-matter/ → ../gems/
Write-Host "--- Processing docs/front-matter/ ---" -ForegroundColor Yellow
$fmDir = Join-Path $docsRoot "front-matter"
if (Test-Path $fmDir) {
    Get-ChildItem $fmDir -Filter "*.md" | ForEach-Object {
        $c = Add-GemLinks -FilePath $_.FullName -RelativePrefix "../gems/"
        $totalChanges += $c
    }
}

# docs/parts/ → ../gems/
Write-Host "--- Processing docs/parts/ ---" -ForegroundColor Yellow
$partsDir = Join-Path $docsRoot "parts"
if (Test-Path $partsDir) {
    Get-ChildItem $partsDir -Filter "*.md" | ForEach-Object {
        $c = Add-GemLinks -FilePath $_.FullName -RelativePrefix "../gems/"
        $totalChanges += $c
    }
}

# docs/appendices/ → ../gems/
Write-Host "--- Processing docs/appendices/ ---" -ForegroundColor Yellow
$appDir = Join-Path $docsRoot "appendices"
if (Test-Path $appDir) {
    Get-ChildItem $appDir -Filter "*.md" | ForEach-Object {
        $c = Add-GemLinks -FilePath $_.FullName -RelativePrefix "../gems/"
        $totalChanges += $c
    }
}

# ============================================================
# Summary
# ============================================================
Write-Host ""
Write-Host "=== Complete ===" -ForegroundColor Cyan
Write-Host "Total links added: $totalChanges" -ForegroundColor Green
if ($DryRun) {
    Write-Host "(Dry run — no files modified)" -ForegroundColor Yellow
}
Write-Host ""
Write-Host "Next: run .\build\setup-book.ps1 to sync gems/ → docs/gems/"
