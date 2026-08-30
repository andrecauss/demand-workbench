# Base de segurança

## Resultado da revisão

Não é possível concluir a segurança de uma implementação que ainda não existe. O repositório não contém código de aplicação, dependências, infraestrutura, CI, configuração de implantação, segredos ou ambiente de execução para avaliar.

Essa ausência é uma limitação de evidência, não uma aprovação de segurança.

## Controles obrigatórios

- Autenticação centralizada e autorização baseada em papéis para criação, revisão, aprovação, publicação, administração e exportação.
- Eventos de auditoria duráveis para tratamento de dados, execução de previsão, ajustes, transições, aprovações, publicação e exportações.
- Restrição transacional de uma única versão Published por Planning Cycle, inclusive para solicitações concorrentes.
- Criptografia em trânsito e em repouso, classificação de dados, retenção e menor privilégio.
- Segredos fora do código-fonte, com rotação e separação de ambientes.
- Validação de entradas e arquivos, limites de requisição e proteção contra injeção e acesso indevido.
- Dependências fixadas, varredura de vulnerabilidades e de segredos no CI.
- Logs estruturados sem segredos ou dados sensíveis; backup, restauração e recuperação de desastre testados.

## Gates antes de produção

1. Modelagem de ameaças e classificação de dados.
2. Testes de autorização em cada endpoint e ação de usuário.
3. Teste de concorrência para a publicação única.
4. Varreduras de dependências, segredos, código e infraestrutura no CI.
5. Exercício de backup e restauração.
6. Revisão da integridade e do acesso à auditoria.
7. Revisão de exportações quanto a escopo, destinatário, criptografia, retenção e rastreabilidade.

## Decisão de negócio necessária

Customer e Customer Type podem conter dados pessoais, confidenciais ou comercialmente sensíveis. Um responsável pelos dados deve definir classificação, acesso permitido e retenção.
