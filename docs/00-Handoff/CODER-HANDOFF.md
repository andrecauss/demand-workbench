# Handoff para coders

## Ponto de partida

Este é um repositório orientado primeiro à documentação. Ainda não há aplicação para executar. O próximo coder deve transformar a base de negócio aprovada em decisões testáveis antes de criar o código de produção.

## Leia primeiro

1. [PROJECT-SUMMARY.md](PROJECT-SUMMARY.md)
2. [FUNCTIONAL-BASELINE.md](FUNCTIONAL-BASELINE.md)
3. [SECURITY-BASELINE.md](SECURITY-BASELINE.md)
4. [REPOSITORY-AUDIT.md](REPOSITORY-AUDIT.md)
5. `docs/02-Domain/DM-000-Ubiquitous-Language.md`
6. `docs/02-Domain/DM-001-Planning-Unit.md`

Os demais arquivos de tema eram originalmente placeholders: seus nomes indicam a cobertura pretendida, não conteúdo previamente aprovado.

## Sequência recomendada para assumir o projeto

### 1. Resolver decisões de produto

- Definir a Business Key e as dimensões de planejamento da Planning Unit.
- Confirmar granularidade temporal, calendário, unidades e fontes de Historical Demand.
- Especificar a semântica de cada ajuste de negócio.
- Definir papéis e permissões de transição de versão.
- Acordar contratos de exportação e requisitos não funcionais.

Registre decisões transversais na estrutura existente de `docs/ADR`. Substitua placeholders somente depois da aprovação da decisão.

### 2. Estabelecer a fundação de engenharia

- Selecionar a stack de aplicação e documentar sua aderência à carga analítica e de governança.
- Adicionar manifestos de dependência, configuração local determinística, formatação, lint, testes e CI.
- Definir separação de ambientes, gestão de configuração, observabilidade e tratamento de segredos.
- Modelar Planning Unit, Historical Demand, Forecast Run, Forecast Result, ajustes, Planning Cycle, Forecast Version, Audit Event e Publication.

Os arquivos de Databricks e Delta Lake existem em `docs/08-Architecture`, mas não representam decisão arquitetural aprovada.

### 3. Construir o primeiro vertical slice

```text
amostra validada de demanda
  -> série histórica de uma Planning Unit
  -> modelo de Forecast de referência
  -> resultado e parâmetros persistidos
  -> uma métrica de acurácia definida
  -> API rastreável ou interface mínima
```

Esse slice deve provar identidade dos dados, repetibilidade, estratégia de testes, observabilidade e controle de acesso antes da inclusão dos seis modelos de Forecast.

### 4. Adicionar governança e Publication

- Implementar ajustes de negócio somente após aprovação das regras.
- Adicionar transições de versão, autorização, Audit Events e a restrição de uma Publication por ciclo.
- Adicionar contratos de exportação e validação pelo consumidor.

## Definição de pronto por incremento

Um incremento só está completo quando inclui implementação, testes automatizados, revisão de segurança, documentação de configuração, telemetria e caminho de reversão. Saídas de Forecast devem ser reproduzíveis a partir de dados registrados, versão do modelo, parâmetros e ajustes.

## Primeiro entregável sugerido

Criar e aprovar o ADR da Planning Unit, incluindo Business Key, relações dimensionais, validade temporal e comportamento de agregação. Essa decisão define armazenamento, APIs, granularidade de Forecast, métricas e fluxos de usuário.
