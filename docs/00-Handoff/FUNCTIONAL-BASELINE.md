# Functional Baseline

This document separates confirmed requirements from decisions that still require product validation. Undefined behavior must not be treated as an implicit requirement.

## Historical demand

Confirmed:

- Retain 24 months of historical demand for planning.
- Support optional IQR-based outlier treatment and winsorization.

To define:

- Time granularity and business calendar.
- Source systems, refresh frequency, late-arriving data, missing values, and zero demand.
- IQR formula, winsorization limits, scope, and parameter ownership.
- Whether raw and treated series must coexist and how treatment is audited.

## Forecasting

Confirmed:

- Default horizon of 36 months, with configuration support.
- ETS, Moving Average, Croston, Holt-Winters, Prophet, and ARIMA models.
- MAPE, APE, and BIAS metrics.

To define:

- Model eligibility, parameter search, training and validation windows, fallback behavior, and model-selection policy.
- Exact metric formulas, aggregation rules, and zero-demand handling.
- Whether the system selects a model automatically, allows manual selection, or supports both.
- Reproducibility requirements for data snapshots, model versions, parameters, and random seeds.

## Business adjustments

Confirmed adjustment names:

- Previous Forecast Switch
- Trend Overrides
- Forecast Offset

For each adjustment, product owners must define its formula, input fields, planning scope, precedence, effective period, limits, required justification, authorized roles, and audit record.

## Version governance

Confirmed business states:

```text
Draft -> Under Review -> Approved -> Published
```

Confirmed constraint: only one version can be Published per planning cycle.

To define:

- Authorized role for every transition.
- Rejection, withdrawal, reopening, and rollback behavior.
- Immutability rules after approval and publication.
- Concurrent publication behavior and transaction boundary.
- Cycle identity, calendar, ownership, and closing policy.

## Publication and export

Confirmed initial formats: Excel and Access.

To define:

- Export schema, file format details, naming, destination, consumer, delivery mechanism, security, retention, and acceptance criteria.
- Whether publication creates an immutable snapshot and which data, metadata, adjustments, and metrics it contains.

## Minimum acceptance scenarios

1. Load and query historical demand for a Planning Unit.
2. Generate and persist a forecast for a Forecastable item.
3. Apply the approved behavior for Non-Forecastable and No Classification items.
4. Reproduce a forecast from its data, model, parameters, and adjustments.
5. Apply each business adjustment with actor, timestamp, and justification.
6. Enforce authorized state transitions and prevent a second Published version in the same cycle.
7. Produce exports accepted by the Excel and Access consumers.
8. Demonstrate authorization and audit coverage for every sensitive operation.
