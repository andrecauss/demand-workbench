# Resumo do projeto Demand Workbench

## Objetivo

O Demand Workbench apoia o planejamento corporativo de demanda com previsões estatísticas, ajustes de negócio controlados, colaboração, governança de versões, rastreabilidade e publicação.

Áreas principais:

- **Forecast Workbench:** prepara o histórico, executa previsões, compara resultados e aplica ajustes aprovados.
- **Collaboration Workbench:** revisa uma versão de planejamento antes da aprovação.
- **Publish Workbench:** aprova, publica, audita e exporta o plano selecionado.

## Limites do MVP

| Área | Requisito atual |
| --- | --- |
| Segmento inicial | 4W |
| População inicial | Itens Forecastable |
| Escala esperada | Cerca de 1.000 Planning Units |
| Histórico | 24 meses |
| Horizonte | 36 meses por padrão, configurável |
| Modelos | ETS, Moving Average, Croston, Holt-Winters, Prophet e ARIMA |
| Métricas | MAPE, APE e BIAS |
| Exportações | Excel e Access |

## Domínio de planejamento

Os níveis mencionados são Segment, Market, Sector, Family, SKU, Customer Type e Customer. Ainda não está definido se eles formam uma hierarquia obrigatória, dimensões independentes ou caminhos configuráveis.

As classificações são `Forecastable`, `Non-Forecastable` e `No Classification`. Tags são metadados informativos, como Export, Warranty, Recall e New Model.

## Ciclo de previsão

A demanda histórica pode receber tratamento opcional de outliers por IQR e winsorização. Os ajustes previstos são Previous Forecast Switch, Trend Overrides e Forecast Offset, mas suas fórmulas e precedências ainda precisam ser aprovadas.

As versões passam por `Draft`, `Under Review`, `Approved` e `Published`. Deve existir no máximo uma versão Published por ciclo, e criação, aprovação e publicação devem ser auditáveis.

## Visão futura e estado atual

Reconciliação de previsões, colaboração mais rica, enriquecimento de dados e recomendações por IA são capacidades futuras, fora do MVP confirmado.

O repositório é, neste momento, uma base de documentação e arquitetura: não há código executável, dependências, testes, infraestrutura ou CI/CD. Para assumir o trabalho, siga o [Handoff para coders](CODER-HANDOFF.md).
