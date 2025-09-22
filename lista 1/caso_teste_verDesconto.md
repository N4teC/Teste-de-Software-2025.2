# Casos de Teste - verDesconto()

## Partições de Equivalência e Análise do Valor Limite

### Partições:
- **Cliente:** A, B, C (válidas) | outros valores (inválidas)
- **Qtd:** 1-1000 (válida) | <1 ou >1000 (inválidas)
- **Faixas:** 1-9, 10-99, 100-1000

### Valores Limite: 1, 9, 10, 99, 100, 1000

## Casos de Teste:

| Cliente | Qtd | Esperado | Critério |
|---------|-----|----------|----------|
| A | 1 | 0 | Partição válida, limite inferior |
| A | 9 | 0 | Valor limite |
| A | 10 | 5 | Valor limite |
| A | 99 | 5 | Valor limite |
| A | 100 | 10 | Valor limite |
| A | 1000 | 10 | Limite superior |
| B | 1 | 5 | Partição válida, limite inferior |
| B | 9 | 5 | Valor limite |
| B | 10 | 15 | Valor limite |
| B | 99 | 15 | Valor limite |
| B | 100 | 25 | Valor limite |
| B | 1000 | 25 | Limite superior |
| C | 1 | 0 | Partição válida, limite inferior |
| C | 9 | 0 | Valor limite |
| C | 10 | 20 | Valor limite |
| C | 99 | 20 | Valor limite |
| C | 100 | 25 | Valor limite |
| C | 1000 | 25 | Limite superior |
| D | 50 | -1 | Partição inválida |
| A | 0 | -1 | Valor limite inválido |
| A | 1001 | -1 | Valor limite inválido |
