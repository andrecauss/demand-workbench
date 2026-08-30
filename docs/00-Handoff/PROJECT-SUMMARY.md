# Demand Workbench Project Summary

## Purpose

Demand Workbench is intended to support enterprise demand planning through statistical forecasting, controlled business adjustments, collaboration, version governance, traceability, and publication.

The product is organized around three primary work areas:

- **Forecast Workbench:** prepare demand history, execute forecasts, compare results, and apply approved adjustments.
- **Collaboration Workbench:** review and enrich a planning version before approval.
- **Publish Workbench:** approve, publish, audit, and export the selected plan.

## MVP boundary

| Area | Current requirement |
| --- | --- |
| Initial segment | 4W |
| Initial population | Forecastable items |
| Expected scale | Approximately 1,000 Planning Units |
| Historical window | 24 months |
| Forecast horizon | 36 months by default, configurable |
| Forecast models | ETS, Moving Average, Croston, Holt-Winters, Prophet, and ARIMA |
| Evaluation metrics | MAPE, APE, and BIAS |
| Initial exports | Excel and Access |

## Planning domain

The available requirements mention the following planning levels: Segment, Market, Sector, Family, SKU, Customer Type, and Customer. The repository does not yet define whether they form one mandatory hierarchy, independent dimensions, or configurable planning paths.

Planning classification has three values:

- `Forecastable`
- `Non-Forecastable`
- `No Classification`

Tags are informational metadata. Examples include Export, Warranty, Recall, and New Model.

## Forecast lifecycle

Historical demand may optionally receive IQR-based outlier treatment and winsorization. Business adjustments include Previous Forecast Switch, Trend Overrides, and Forecast Offset. Their exact formulas, precedence, effective periods, and authorization rules remain undefined.

Forecast versions move through the business states `Draft`, `Under Review`, `Approved`, and `Published`. There must be at most one Published version for a planning cycle. Creation, approval, and publication must be auditable.

## Future direction

Forecast reconciliation, richer collaboration, data enrichment, and AI recommendations are future capabilities. They are not part of the confirmed MVP unless separately approved.

## Current repository state

This repository contains a documentation structure, templates, and two helper scripts. It does not contain application code, dependency manifests, tests, infrastructure definitions, CI/CD configuration, or an executable prototype. Most topic files are placeholders awaiting content.

For the recommended takeover sequence, continue with [CODER-HANDOFF.md](CODER-HANDOFF.md).
