---
ID: DM-000
Título: Ubiquitous Language
Versão: 1.0
Status: Draft
---

# Objetivo

Este documento define o vocabulário oficial de negócio do Demand Workbench. Documentos de domínio, regras de negócio, requisitos funcionais e arquitetura devem usar estas definições.

## Conceitos de planejamento

| Termo | Definição |
| --- | --- |
| Planning Unit | Menor entidade de negócio para a qual a demanda é planejada e uma previsão é mantida. Sua chave e composição dimensional aguardam aprovação. |
| Planning Cycle | Janela de planejamento que possui Forecast Versions e permite no máximo uma versão Published. |
| Planning Scenario | Contexto alternativo de planejamento; sua presença no MVP ainda será decidida. |

## Conceitos de previsão

| Termo | Definição |
| --- | --- |
| Forecast | Série temporal de demanda prevista para uma Planning Unit e um horizonte. |
| Baseline Forecast | Resultado da previsão antes de ajustes de negócio. |
| Adjusted Forecast | Baseline Forecast após ajustes de negócio aprovados. |
| Published Forecast | Previsão imutável contida na versão Published de um Planning Cycle. |
| Forecast Version | Conjunto governado de previsões nos estados Draft, Under Review, Approved ou Published. |

## Conceitos de demanda

| Termo | Definição |
| --- | --- |
| Historical Demand | Demanda observada usada como entrada para previsão; o MVP exige 24 meses. |
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
| Tag | Metadado informativo, como Export, Warranty, Recall ou New Model. |
| Draft | Versão de trabalho editável. |
| Under Review | Versão que aguarda ação de revisão definida. |
| Approved | Versão aprovada para publicação pela política de autorização. |
| Published | Versão oficial de um Planning Cycle; há apenas uma por ciclo. |

## Siglas

| Sigla | Significado |
| --- | --- |
| FRS | Functional Requirements Specification |
| ADR | Architecture Decision Record |
| SKU | Stock Keeping Unit |
| ETS | Error, Trend and Seasonality |
| MAPE | Mean Absolute Percentage Error |
| BIAS | Forecast Bias |

## Convenções de nomenclatura

Use os termos acima no singular, em Title Case quando fizer sentido no texto técnico, e use identificadores estáveis em APIs e bases de dados. Toda nova sigla deve ser registrada neste documento.
