# Glossário técnico

Este glossário explica, em português simples, os termos usados no Demand Workbench. A referência de linguagem controlada para documentos técnicos é o [DM-000 — Ubiquitous Language](../02-Domain/DM-000-Ubiquitous-Language.md).

| Termo | Explicação para leitores não técnicos |
| --- | --- |
| ADR (Architecture Decision Record) | Registro de uma decisão importante de arquitetura: o que foi decidido, por quê e quais alternativas foram consideradas. |
| APE (Absolute Percentage Error) | Erro percentual absoluto: mede o tamanho do erro de uma previsão em relação ao valor real. |
| API | Forma padronizada de um sistema conversar com outro sistema. |
| Audit / Auditoria | Registro de quem fez uma ação, quando a fez e o que foi alterado. |
| BIAS | Indicador que mostra se as previsões tendem, de forma recorrente, a ficar acima ou abaixo da demanda real. |
| Business Key | Identificador de negócio: a combinação de dados que identifica uma entidade no mundo real. |
| Business Rule / Regra de negócio | Regra definida pela operação que orienta o comportamento do produto. |
| Data snapshot | Fotografia identificável dos dados usados em uma execução, permitindo repetir e conferir o resultado. |
| Draft | Rascunho de uma versão de previsão, ainda editável. |
| FRS (Functional Requirements Specification) | Documento que descreve o que o produto precisa fazer. |
| Forecast / Previsão | Estimativa da demanda futura a partir de dados históricos e regras aprovadas. |
| Forecastable | Classificação de um item que pode participar do processo de previsão. |
| Forecast Version | Conjunto governado de previsões de um ciclo, com estados como Draft, Under Review, Approved e Published. |
| Historical Demand / Demanda histórica | Demanda observada no passado usada como entrada para gerar previsões. |
| IQR (Interquartile Range) | Técnica estatística usada para identificar valores muito fora do padrão, chamados de outliers. |
| MAPE (Mean Absolute Percentage Error) | Média dos erros percentuais absolutos; ajuda a avaliar a qualidade da previsão. |
| Master Data | Dados de referência relativamente estáveis, como SKU, família, mercado e cliente. |
| Planning Cycle / Ciclo de planejamento | Período de negócio no qual as previsões são criadas, revisadas, aprovadas e publicadas. |
| Planning Unit | Menor unidade de negócio para a qual se mantém uma previsão. Sua composição exata ainda precisa ser aprovada. |
| Published | Estado da versão oficial de um ciclo de planejamento. Só pode existir uma versão Published por ciclo. |
| Reproducibility / Reprodutibilidade | Capacidade de refazer uma previsão usando os mesmos dados, parâmetros, modelo e regras. |
| SKU | Código de identificação de um produto ou item de estoque. |
| Supersession | Relação em que uma Planning Unit substitui outra; é um conceito futuro, ainda não aprovado para o MVP. |
| Tag | Etiqueta informativa, como Export, Warranty, Recall ou New Model. |
| Winsorization / Winsorização | Técnica que limita valores extremos sem apagá-los, reduzindo seu impacto na análise. |

Use este glossário para comunicação com usuários leigos. Quando um termo ainda não tiver definição ou tiver mais de um sentido possível, registre a decisão antes de criar comportamento de produto ou código.
