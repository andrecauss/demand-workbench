# BR-003 — Tratamento de outliers

O workbench pode aplicar opcionalmente tratamento de outliers baseado em IQR e winsorização à Historical Demand. O tratamento não é obrigatório e não deve sobrescrever as observações brutas.

A decisão de produto deve definir fórmula de IQR, limiares, limites de winsorização, escopo, aprovador e evento de auditoria antes da implementação desta regra.
