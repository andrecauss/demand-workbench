# Coder Handoff

## Starting point

This is a documentation-first repository. There is no application to run yet. The next coder should convert the approved business baseline into testable decisions before scaffolding production code.

## Read first

1. [PROJECT-SUMMARY.md](PROJECT-SUMMARY.md)
2. [FUNCTIONAL-BASELINE.md](FUNCTIONAL-BASELINE.md)
3. [SECURITY-BASELINE.md](SECURITY-BASELINE.md)
4. [REPOSITORY-AUDIT.md](REPOSITORY-AUDIT.md)
5. `docs/02-Domain/DM-000-Ubiquitous-Language.md`
6. `docs/02-Domain/DM-001-Planning-Unit.md`

The remaining topic files are mostly empty placeholders. Their filenames communicate intended coverage, not approved content.

## Recommended takeover sequence

### 1. Resolve product decisions

- Define the Planning Unit business key and planning dimensions.
- Confirm time granularity, calendar, units, and historical-demand sources.
- Specify the semantics of every business adjustment.
- Define roles and version-transition permissions.
- Agree on export contracts and non-functional requirements.

Record cross-cutting decisions in the existing `docs/ADR` structure. Replace placeholders only when the decision is approved.

### 2. Establish the engineering foundation

- Select the application stack and document why it fits the analytical and governance workload.
- Add dependency manifests, deterministic local setup, formatting, linting, tests, and CI.
- Define environment separation, configuration management, observability, and secret handling.
- Model Planning Unit, historical demand, forecast run, forecast result, adjustment, planning cycle, forecast version, audit event, and publication.

Files named for Databricks and Delta Lake exist under `docs/08-Architecture`, but they are empty. Their presence is not an approved architecture decision.

### 3. Build the first vertical slice

Implement a narrow end-to-end path:

```text
validated demand sample
  -> historical series for one Planning Unit
  -> one reference forecast model
  -> persisted result and parameters
  -> one defined accuracy metric
  -> traceable API or minimal interface
```

This slice should prove data identity, repeatability, testing strategy, observability, and access control before all six forecasting models are added.

### 4. Add governance and publication

- Implement business adjustments only after their rules are approved.
- Add version transitions, authorization, audit events, and the single-publication constraint.
- Add export contracts and consumer validation.

## Definition of done for each increment

An increment is complete only when it includes implementation, automated tests, security review, configuration documentation, telemetry, and a rollback path. Forecast outputs must be reproducible from recorded data, model version, parameters, and adjustments.

## Suggested first deliverable

Create and approve the Planning Unit ADR, including its business key, dimensional relationships, temporal validity, and aggregation behavior. That decision shapes storage, APIs, forecasting granularity, metrics, and user flows.
