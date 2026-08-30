# Registro de consolidação

## Objetivo

Este registro apresenta as evidências consolidadas no repositório para que o próximo responsável possa distinguir o material-fonte das decisões posteriores.

## Sources consolidated on 2026-08-30

| Source | What it contributed |
| --- | --- |
| GitHub `main` history | The documentation structure, templates, scripts, initial Planning Unit note, and existing handoff documents. |
| `Demand_Workbench_FRS_v1.0.docx` | Product objective, MVP boundary, planning levels, classification, tags, historical demand, forecast horizon and models, metrics, business adjustments, version states, audit, exports, and future vision. |
| This task's discussion | Handoff emphasis, repository audit findings, security baseline, and the decision to keep confirmed requirements separate from unresolved product and architecture choices. |

## What was intentionally not treated as product source

`AGENTS.md` is an internal instruction file for the local agent environment. It is not a Demand Workbench artifact and is intentionally excluded from GitHub.

The old local-only `local-docs-draft` Git branch was a disconnected scratch commit created before the GitHub history was discovered. Its useful content was reviewed and reconciled into the connected `main` history; it is not a source of authority.

## Consolidation rules

1. The original FRS remains available in `docs/references` for traceability.
2. Confirmed FRS requirements are written as requirements.
3. Missing semantics, technical choices, and future ideas are labeled as proposed, deferred, or pending rather than invented.
4. Future approved decisions must update the relevant overview, domain, business rule, functional requirement, data model, architecture document, and ADR.

## Known boundary

This consolidation covers the files available in the GitHub repository, the local FRS reference, and the conversation context available in this task. It does not claim access to conversations, systems, or documents outside those sources.
