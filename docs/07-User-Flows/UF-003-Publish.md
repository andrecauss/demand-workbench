# UF-003 — Publication

1. Um publicador autorizado seleciona uma Forecast Version Approved.
2. O sistema verifica se ela pertence a um Planning Cycle aberto e se não há outra versão Published naquele ciclo.
3. O sistema registra a Publication de forma atômica, bloqueia o snapshot oficial e cria um Audit Event.
4. O sistema gera ou agenda as exportações aprovadas para Excel e Access.
5. O sistema registra o resultado da exportação e torna a versão publicada identificável.

Correção e reversão após a Publication exigem decisão de produto.
