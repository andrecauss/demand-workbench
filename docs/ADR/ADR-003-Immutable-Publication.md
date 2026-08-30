# ADR-003 Publication imutável

## Status

Proposto — princípio apoiado pelo FRS.

## Contexto

Apenas uma versão pode estar Published por Planning Cycle, e as informações de Publication devem ser auditadas.

## Decisão proposta

Tratar a Publication como um snapshot imutável protegido por uma constraint única transacional. Qualquer correção deve criar um processo sucessor aprovado separadamente, nunca modificar silenciosamente o registro publicado.
