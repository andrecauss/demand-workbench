# DMD-001 — Entidades

O modelo conceitual inicial contém:

| Entidade | Objetivo |
| --- | --- |
| Planning Unit | Granularidade de Forecast e identidade de negócio. |
| Historical Demand Observation | Demanda bruta observada na granularidade de tempo aprovada. |
| Demand Treatment | Tratamento opcional aplicado a uma série histórica. |
| Forecast Run | Execução reproduzível de um modelo. |
| Forecast Result | Valores previstos e métricas calculadas. |
| Business Adjustment | Mudança autorizada da previsão base para a ajustada. |
| Planning Cycle | Limite de governança das versões de planejamento. |
| Forecast Version | Conjunto governado de resultados de um ciclo. |
| Audit Event | Registro imutável de atividade sensível. |
| Publication | Seleção oficial de uma versão e atividade de exportação associada. |
| Tag | Metadado informativo. |

Esquemas físicos devem aguardar as decisões sobre Planning Unit e granularidade temporal.
