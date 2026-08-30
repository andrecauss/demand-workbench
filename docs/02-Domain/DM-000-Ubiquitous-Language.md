---
ID: DM-000
Título: Ubiquitous Language
Versão: 1.1
Status: Draft
---

# Objetivo

Este documento define o vocabulário oficial de negócio do Demand Workbench e é a única referência de significado dos termos. Documentos de domínio, regras de negócio, requisitos funcionais e arquitetura devem usar estas definições.

Cada definição serve tanto ao texto técnico quanto à comunicação com leitores não técnicos. Quando um termo ainda não tiver definição fechada ou tiver mais de um sentido possível, registre a decisão antes de criar comportamento de produto ou código.

## Conceitos de planejamento

| Termo | Definição |
| --- | --- |
| Planning Unit | Menor entidade de negócio para a qual a demanda é planejada e uma previsão é mantida. Sua chave e composição dimensional aguardam aprovação. |
| Planning Cycle | Janela de planejamento na qual as previsões são criadas, revisadas, aprovadas e publicadas; possui Forecast Versions e permite no máximo uma versão Published. |
| Planning Scenario | Contexto alternativo de planejamento; sua presença no MVP ainda será decidida. |
| Supersession | Relação em que uma Planning Unit substitui outra. Conceito futuro, ainda não aprovado para o MVP. |

## Conceitos de previsão

| Termo | Definição |
| --- | --- |
| Forecast | Série temporal de demanda prevista para uma Planning Unit e um horizonte, a partir de dados históricos e regras aprovadas. |
| Baseline Forecast | Resultado da previsão antes de ajustes de negócio. |
| Adjusted Forecast | Baseline Forecast após ajustes de negócio aprovados. |
| Published Forecast | Previsão imutável contida na versão Published de um Planning Cycle. |
| Forecast Version | Conjunto governado de previsões nos estados Draft, Under Review, Approved ou Published. |

## Conceitos de demanda

| Termo | Definição |
| --- | --- |
| Historical Demand | Demanda observada no passado, usada como entrada para previsão; o MVP exige 24 meses. |
| Forecastable | Classificação de item elegível ao processamento de previsão. |
| Non-Forecastable | Classificação de item não elegível ao processamento de previsão. |
| Aggregation Strategy | Regra aprovada para agregar ou reconciliar demanda e previsão entre níveis; ainda não definida. |
| Outlier | Observação histórica fora do padrão, candidata a tratamento opcional por IQR e winsorização. |

## Colaboração, produto e versionamento

| Termo | Definição |
| --- | --- |
| Collaboration | Atividade de revisão e contribuição em uma Forecast Version. |
| Enrichment | Inclusão de informação contextual; capacidade futura, salvo aprovação para o MVP. |
| Publication | Ação autorizada que torna oficial uma Forecast Version aprovada. |
| Business Rule | Regra definida pela operação que orienta o comportamento do produto. |
| Tag | Metadado informativo anexado a entidades de planejamento, como Export, Warranty, Recall ou New Model. |
| Draft | Versão de trabalho editável. |
| Under Review | Versão que aguarda ação de revisão definida. |
| Approved | Versão aprovada para publicação pela política de autorização. |
| Published | Versão oficial de um Planning Cycle; há apenas uma por ciclo. |

## Dados e identificação

| Termo | Definição |
| --- | --- |
| Business Key | Combinação de dados de negócio que identifica uma entidade do mundo real de forma estável. |
| Master Data | Dados de referência relativamente estáveis, como SKU, família, mercado e cliente. |
| Data Snapshot | Fotografia identificável dos dados usados em uma execução, que permite repetir e conferir o resultado. |

## Rastreabilidade e reprodutibilidade

| Termo | Definição |
| --- | --- |
| Audit | Registro de quem fez uma ação, quando a fez e o que foi alterado. |
| Reproducibility | Capacidade de refazer uma previsão usando os mesmos dados, parâmetros, modelo e regras. |

## Métricas e estatística

| Termo | Definição |
| --- | --- |
| APE | Absolute Percentage Error. Erro percentual absoluto de uma previsão em relação ao valor real, por observação. |
| MAPE | Mean Absolute Percentage Error. Média dos erros percentuais absolutos; avalia a qualidade da previsão. |
| BIAS | Indica se as previsões tendem, de forma recorrente, a ficar acima ou abaixo da demanda real. |
| IQR | Interquartile Range. Técnica estatística usada para identificar outliers. |
| Winsorization | Técnica que limita valores extremos sem apagá-los, reduzindo seu impacto na análise. |

## Siglas

| Sigla | Significado |
| --- | --- |
| FRS | Functional Requirements Specification |
| ADR | Architecture Decision Record |
| API | Application Programming Interface |
| SKU | Stock Keeping Unit |
| ETS | Error, Trend and Seasonality |
| APE | Absolute Percentage Error |
| MAPE | Mean Absolute Percentage Error |
| BIAS | Forecast Bias |
| IQR | Interquartile Range |

## Convenções de nomenclatura

Use os termos acima no singular, em Title Case quando fizer sentido no texto técnico, e use identificadores estáveis em APIs e bases de dados. Toda nova sigla ou termo deve ser registrado neste documento.
