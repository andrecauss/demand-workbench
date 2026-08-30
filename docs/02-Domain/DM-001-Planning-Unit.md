## Planning Unit

### Definição

A menor entidade de negócio para a qual uma previsão é planejada e mantida.

Sua chave de negócio definitiva, dimensões, validade temporal e regras de hierarquia são uma decisão de nível ADR. O FRS lista Segment, Market, Sector, Family, SKU, Customer Type e Customer como níveis de planejamento, mas não define sua cardinalidade nem composição.

### Objetivo

Define a granularidade de planejamento de negócio utilizada em todo o Demand Workbench.

### Conceitos relacionados

- Forecast
- Historical Demand
- Planning Classification
- Aggregation Strategy

### Utilizado por

- BR-001
- FR-001
- MOD-001

### Decisões em aberto

- A Planning Unit é identificada por um nível, uma combinação de níveis ou um caminho configurável?
- Qual sistema de master data é responsável por cada dimensão e suas datas de vigência?
- Uma Planning Unit pode ser descontinuada, dividida, unida ou substituída durante um Planning Cycle?
