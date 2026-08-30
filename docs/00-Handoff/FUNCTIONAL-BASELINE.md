# Base funcional

Este documento separa requisitos confirmados de decisões que ainda precisam de validação do produto. Um comportamento não definido não deve ser tratado como requisito implícito.

## Demanda histórica

Confirmado:

- Manter 24 meses de demanda histórica para planejamento.
- Suportar tratamento opcional de outliers baseado em IQR e winsorização.

A definir:

- Granularidade de tempo e calendário de negócio.
- Sistemas-fonte, frequência de atualização, dados recebidos com atraso, valores ausentes e demanda zero.
- Fórmula de IQR, limites de winsorização, escopo e responsável pelos parâmetros.
- Convivência entre as séries bruta e tratada e forma de auditoria do tratamento.

## Previsão

Confirmado:

- Horizonte padrão de 36 meses, com suporte a configuração.
- Modelos ETS, Moving Average, Croston, Holt-Winters, Prophet e ARIMA.
- Métricas MAPE, APE e BIAS.

A definir:

- Elegibilidade do modelo, busca de parâmetros, janelas de treinamento e validação, fallback e política de seleção.
- Fórmulas exatas das métricas, regras de agregação e tratamento de demanda zero.
- Se o sistema seleciona o modelo automaticamente, permite seleção manual ou ambos.
- Requisitos de reprodutibilidade para snapshots de dados, versões de modelos, parâmetros e sementes aleatórias.

## Ajustes de negócio

Nomes de ajustes confirmados:

- Previous Forecast Switch
- Trend Overrides
- Forecast Offset

Para cada ajuste, os responsáveis pelo produto devem definir fórmula, campos de entrada, escopo de planejamento, precedência, vigência, limites, justificativa obrigatória, papéis autorizados e registro de auditoria.

## Governança de versões

Estados confirmados:

```text
Draft -> Under Review -> Approved -> Published
```

Restrição confirmada: apenas uma versão pode estar Published por ciclo de planejamento.

A definir: papel autorizado para cada transição; rejeição, retirada, reabertura e reversão; imutabilidade após aprovação e publicação; comportamento concorrente; identidade, calendário, propriedade e encerramento do ciclo.

## Publicação e exportação

Formatos iniciais confirmados: Excel e Access.

A definir: esquema e detalhes de formato, nomenclatura, destino, consumidor, mecanismo de entrega, segurança, retenção e critérios de aceite; além de quais dados, metadados, ajustes e métricas compõem o snapshot imutável publicado.

## Cenários mínimos de aceite

1. Carregar e consultar demanda histórica de uma Planning Unit.
2. Gerar e persistir uma previsão para um item Forecastable.
3. Aplicar o comportamento aprovado para itens Non-Forecastable e No Classification.
4. Reproduzir uma previsão a partir de seus dados, modelo, parâmetros e ajustes.
5. Aplicar cada ajuste de negócio com ator, data e justificativa.
6. Impedir uma segunda versão Published no mesmo ciclo e controlar as transições autorizadas.
7. Produzir exportações aceitas pelos consumidores de Excel e Access.
8. Demonstrar autorização e auditoria para cada operação sensível.
