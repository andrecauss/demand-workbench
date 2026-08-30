# DMD-002 — Relacionamentos

- Uma Planning Unit possui muitas Historical Demand Observations.
- Um Forecast Run consome um snapshot identificado de dados históricos e produz um ou mais Forecast Results.
- Um Forecast Result pertence a uma Forecast Version e pode ter zero ou mais Business Adjustments.
- Um Planning Cycle possui muitas Forecast Versions e no máximo uma versão Published.
- Audit Events referenciam ator, entidade-alvo, ação, data e hora e metadados relevantes de antes/depois.
- Tags podem ser associadas a Planning Units e, se aprovadas, a outras entidades de planejamento.

A cardinalidade entre os níveis de planejamento de negócio permanece em aberto.
