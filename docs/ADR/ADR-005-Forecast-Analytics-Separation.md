# ADR-005 Separação de Forecast Analytics

## Status

Proposto — decisão necessária.

## Contexto

A execução de Forecast tem preocupações de escala analítica e reprodutibilidade, enquanto versionamento e Publication são preocupações transacionais de governança.

## Decisão necessária

Escolher se o analytics é um módulo interno, um worker assíncrono ou um serviço separado, com base em volume esperado, latência, capacidade operacional e restrições de plataforma. Não inferir a resposta a partir de nomes de arquivo provisórios.
