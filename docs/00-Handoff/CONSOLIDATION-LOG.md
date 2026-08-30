# Registro de consolidação

## Objetivo

Este registro apresenta as evidências consolidadas no repositório para que o próximo responsável possa distinguir material-fonte de decisões posteriores.

## Fontes consolidadas em 2026-08-30

| Fonte | Contribuição |
| --- | --- |
| Histórico da `main` no GitHub | Estrutura documental, templates, scripts, nota inicial sobre Planning Unit e handoffs existentes. |
| `Demand_Workbench_FRS_v1.0.docx` | Objetivo do produto, limites do MVP, níveis de planejamento, classificação, Tags, Historical Demand, horizonte e modelos de Forecast, métricas, ajustes, estados de versão, auditoria, exportações e visão futura. |
| Discussão desta tarefa | Ênfase no handoff, achados de auditoria, base de segurança e separação entre requisitos confirmados e escolhas ainda em aberto. |

## Material que não foi tratado como fonte de produto

`AGENTS.md` é um arquivo interno de instruções do ambiente local. Não é um artefato do Demand Workbench e é excluído intencionalmente do GitHub.

A antiga branch local `local-docs-draft` era um rascunho desconectado criado antes de o histórico do GitHub ser identificado. Seu conteúdo útil foi reconciliado na `main` conectada, mas ela não é fonte de autoridade.

## Regras de consolidação

1. O FRS original permanece disponível em `docs/references` para rastreabilidade.
2. Requisitos confirmados do FRS são escritos como requisitos.
3. Semânticas ausentes, escolhas técnicas e ideias futuras são identificadas como propostas, adiadas ou pendentes, sem serem inventadas.
4. Decisões futuras aprovadas devem atualizar os documentos de visão, domínio, regra de negócio, requisito funcional, modelo de dados, arquitetura e ADR correspondentes.

## Limite conhecido

Esta consolidação cobre os arquivos disponíveis no GitHub, o FRS local e o contexto disponível nesta tarefa. Não afirma acesso a conversas, sistemas ou documentos fora dessas fontes.
