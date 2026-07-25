# ==========================================================
# Demand Workbench
# Documentation Starter Kit v1.0
#
# Script:
#     Update-Readme.ps1
#
# Description:
#     Automatically updates the Documentation Index section
#     inside README.md.
#
# ==========================================================

$Root = Split-Path $PSScriptRoot -Parent
$Readme = Join-Path $Root "README.md"
$Docs = Join-Path $Root "docs"

$StartMarker = "<!-- DOCS:START -->"
$EndMarker   = "<!-- DOCS:END -->"

if (!(Test-Path $Readme)) {
    Write-Host "README.md not found." -ForegroundColor Red
    exit
}

Write-Host ""
Write-Host "Updating README documentation index..." -ForegroundColor Cyan

$Content = Get-Content $Readme -Raw

$Index = @()
$Index += $StartMarker
$Index += ""
$Index += "# Documentation"
$Index += ""

$Folders = Get-ChildItem $Docs -Directory | Sort-Object Name

foreach ($Folder in $Folders) {

    $Index += "## $($Folder.Name)"
    $Index += ""

    $Files = Get-ChildItem $Folder.FullName -Filter "*.md" |
        Sort-Object Name

    foreach ($File in $Files) {

        $Relative = $File.FullName.Replace($Root + "\", "")
        $Relative = $Relative.Replace("\", "/")

        $Title = $File.BaseName

        $Index += "- [$Title]($Relative)"

    }

    $Index += ""

}

$Index += $EndMarker

$NewIndex = $Index -join "`r`n"

if ($Content.Contains($StartMarker)) {

    $Pattern = "(?s)$([regex]::Escape($StartMarker)).*?$([regex]::Escape($EndMarker))"

    $Content = [regex]::Replace(
        $Content,
        $Pattern,
        $NewIndex
    )

}
else {

    $Content += "`r`n`r`n"
    $Content += $NewIndex

}

Set-Content `
    -Path $Readme `
    -Value $Content `
    -Encoding UTF8

Write-Host ""
Write-Host "README updated successfully." -ForegroundColor Green
Write-Host ""