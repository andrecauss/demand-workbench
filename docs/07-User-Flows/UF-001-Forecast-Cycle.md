# UF-001 — Forecast Cycle

1. Um usuário autorizado seleciona um Planning Cycle e Planning Units Forecastable.
2. O sistema carrega o snapshot identificado de Historical Demand.
3. O usuário ou uma política aprovada aplica tratamento opcional de outliers.
4. O sistema executa um modelo de Forecast aprovado para o horizonte configurado.
5. O sistema armazena valores de Forecast, métricas, parâmetros e metadados de rastreabilidade em uma Forecast Version Draft.
6. Usuários autorizados revisam e, quando as regras estiverem definidas, aplicam ajustes.
7. A versão passa por Under Review e Approved antes da Publication.

Validação, tratamento de exceções e política de seleção de modelo aguardam desenho detalhado.
