# ==========================================================
# Demand Workbench
# Documentation Starter Kit v1.0
#
# Script:
#     Create-DocsStructure.ps1
#
# Description:
#     Creates the complete documentation structure for the
#     Demand Workbench project.
#
# ==========================================================

$Root = "Demand-Workbench"

$Structure = @{

    "." = @(
        "README.md",
        "CHANGELOG.md",
        "CONTRIBUTING.md",
        "LICENSE.md",
        ".gitignore"
    )

    "docs\assets\diagrams" = @()

    "docs\assets\images" = @()

    "docs\assets\icons" = @()

    "docs\assets\mockups" = @()

    "docs\templates" = @(
        "Domain-Template.md",
        "Business-Rule-Template.md",
        "Module-Template.md",
        "Functional-Requirement-Template.md",
        "ADR-Template.md",
        "User-Flow-Template.md"
    )

    "docs\01-Overview" = @(
        "OV-001-Vision.md",
        "OV-002-Business-Problem.md",
        "OV-003-Scope.md"
    )

    "docs\02-Domain" = @(
        "DM-001-Planning-Unit.md",
        "DM-002-Planning-Unit-Supersession.md",
        "DM-003-Supersession-Chain.md",
        "DM-004-Forecast.md",
        "DM-005-Historical-Demand.md",
        "DM-006-Forecast-Version.md",
        "DM-007-Planning-Cycle.md",
        "DM-008-Planning-Scenario.md",
        "DM-009-Collaboration.md",
        "DM-010-Publication.md",
        "DM-011-Tag.md",
        "DM-012-Forecast-Classification.md"
    )

    "docs\03-Business-Rules" = @(
        "BR-001-Planning-Classification.md",
        "BR-002-Historical-Demand.md",
        "BR-003-Outlier-Treatment.md",
        "BR-004-Business-Rules.md",
        "BR-005-Versioning.md",
        "BR-006-Publish.md",
        "BR-007-Traceability.md",
        "BR-008-Tags.md",
        "BR-009-Planning-Unit-Supersession.md",
        "BR-010-Supersession-Chain.md"
    )

    "docs\04-Modules" = @(
        "MOD-001-Forecast-Workbench.md",
        "MOD-002-Collaboration-Workbench.md",
        "MOD-003-Publish-Workbench.md",
        "MOD-004-Forecast-Analytics.md",
        "MOD-005-Administration.md"
    )

    "docs\05-Functional-Requirements" = @(
        "FR-001.md",
        "FR-002.md",
        "FR-003.md"
    )

    "docs\06-Data-Model" = @(
        "DMD-001-Entities.md",
        "DMD-002-Relationships.md",
        "DMD-003-Master-Data.md",
        "DMD-004-Business-Keys.md",
        "DMD-005-Versioning.md",
        "DMD-006-Metadata.md"
    )

    "docs\07-User-Flows" = @(
        "UF-001-Forecast-Cycle.md",
        "UF-002-Collaboration.md",
        "UF-003-Publish.md",
        "UF-004-Forecast-Accuracy.md",
        "UF-005-Planning-Unit-Supersession.md"
    )

    "docs\08-Architecture" = @(
        "ARC-001-Logical-Architecture.md",
        "ARC-002-Databricks.md",
        "ARC-003-Delta-Lake.md",
        "ARC-004-Integration.md",
        "ARC-005-Security.md",
        "ARC-006-Versioning-Strategy.md"
    )

    "docs\09-Roadmap" = @(
        "RM-001-MVP.md",
        "RM-002-Phase-2.md",
        "RM-003-Future-Ideas.md"
    )

    "docs\ADR" = @(
        "ADR-001-Planning-Unit.md",
        "ADR-002-Aggregation-Strategy.md",
        "ADR-003-Immutable-Publication.md",
        "ADR-004-Planning-Unit-Supersession.md",
        "ADR-005-Forecast-Analytics-Separation.md",
        "ADR-006-Domain-Driven-Design.md"
    )

    "scripts" = @(
        "Create-DocsStructure.ps1",
        "Update-Readme.ps1"
    )
}

Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host " Demand Workbench Documentation Kit"
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

if (!(Test-Path $Root)) {
    New-Item -ItemType Directory -Path $Root | Out-Null
}

foreach ($Folder in $Structure.Keys) {

    if ($Folder -eq ".") {
        $CurrentFolder = $Root
    }
    else {

        $CurrentFolder = Join-Path $Root $Folder

        if (!(Test-Path $CurrentFolder)) {

            New-Item `
                -ItemType Directory `
                -Path $CurrentFolder | Out-Null

            Write-Host "[DIR ] $Folder" -ForegroundColor Green

        }

    }

    foreach ($File in $Structure[$Folder]) {

        $FilePath = Join-Path $CurrentFolder $File

        if (!(Test-Path $FilePath)) {

            New-Item `
                -ItemType File `
                -Path $FilePath | Out-Null

            Write-Host "[FILE] $Folder\$File"

        }

    }

}

Write-Host ""
Write-Host "Documentation structure created successfully." -ForegroundColor Green
Write-Host ""