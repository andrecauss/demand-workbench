# ARC-001 — Arquitetura lógica

A arquitetura lógica proposta deve separar:

- **Camada de experiência:** interfaces ou APIs de Forecast, Collaboration, Publication e Administração.
- **Camada de aplicação:** autorização, workflow de versões, ajustes de negócio, Publication, orquestração de exportações e auditoria.
- **Camada de Forecast Analytics:** preparação, execução de modelos, cálculo de métricas e metadados de reprodutibilidade.
- **Camada de dados:** master data, Historical Demand, resultados de Forecast, versões, Publications e Audit Events imutáveis.
- **Camada de integração:** ingestão de demanda e exportação para Excel e Access.

Esta é uma proposta de limites lógicos. Topologia de implantação, escolhas tecnológicas e limites de serviços exigem ADRs.
