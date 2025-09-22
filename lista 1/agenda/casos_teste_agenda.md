# Casos de Teste - Agenda Telefônica

## Partições de Equivalência e Análise do Valor Limite

### Partições:
- **Nome:** não vazio (válida) | vazio (inválida)
- **Telefone:** 8-15 dígitos numéricos (válida) | outros (inválidas)
- **Email:** formato *@*.* (válida) | formato incorreto (inválida)

### Valores Limite: 7, 8, 15, 16 dígitos para telefone

## Casos de Teste:

### Casos Válidos:
| Nome | Telefone | Email | Critério |
|------|----------|-------|----------|
| João | 12345678 | joao@email.com | Telefone 8 dígitos (limite) |
| Maria | 123456789012345 | maria@teste.org | Telefone 15 dígitos (limite) |

### Casos Inválidos:
| Nome | Telefone | Email | Resultado | Critério |
|------|----------|-------|-----------|----------|
| "" | 12345678 | teste@email.com | Erro: Nome vazio | Partição inválida |
| Diego | "" | diego@email.com | Erro: Telefone vazio | Partição inválida |
| Eva | 1234567 | eva@email.com | Erro: Muito curto | 7 dígitos (limite-1) |
| Fábio | 1234567890123456 | fabio@email.com | Erro: Muito longo | 16 dígitos (limite+1) |
| Gabi | 1234abcd | gabi@email.com | Erro: Não numérico | Partição inválida |
| João2 | 12345678 | joao2@email.com | Erro: Duplicado | Regra duplicidade |
| Julia | 87654321 | karenemail.com | Erro: Sem @ | Partição inválida |
| Lucas | 87654322 | lucas@ | Erro: Sem domínio | Partição inválida |
| Mônica | 87654323 | monica@email | Erro: Sem extensão | Partição inválida |
