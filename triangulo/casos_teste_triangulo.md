# Casos de Teste - triangulo()

## Partições de Equivalência e Análise do Valor Limite

### Partições:
- **Valores dos lados:** >0 (válida) | ≤0 (inválida)
- **Condição de existência:** a+b>c AND b+c>a AND a+c>b (válida) | não atende (inválida)
- **Tipos de triângulo:**
  - Equilátero: a=b=c (válida)
  - Isósceles: dois lados iguais (válida) 
  - Escaleno: três lados diferentes (válida)

### Valores Limite: 1 (menor positivo), valores próximos à igualdade

## Casos de Teste:

### Casos Válidos - Triângulo Equilátero:
| a | b | c | Esperado | Critério |
|---|---|---|----------|----------|
| 3 | 3 | 3 | É um triangulo equilatero | Todos lados iguais |
| 1 | 1 | 1 | É um triangulo equilatero | Limite inferior |
| 10 | 10 | 10 | É um triangulo equilatero | Valores médios |

### Casos Válidos - Triângulo Isósceles:
| a | b | c | Esperado | Critério |
|---|---|---|----------|----------|
| 3 | 3 | 2 | É um triangulo isoceles | a=b, c diferente |
| 3 | 2 | 3 | É um triangulo isoceles | a=c, b diferente |
| 2 | 3 | 3 | É um triangulo isoceles | b=c, a diferente |
| 5 | 5 | 8 | É um triangulo isoceles | Limite próximo à desigualdade |

### Casos Válidos - Triângulo Escaleno:
| a | b | c | Esperado | Critério |
|---|---|---|----------|----------|
| 3 | 4 | 5 | É um triangulo escaleno | Triângulo retângulo |
| 2 | 3 | 4 | É um triangulo escaleno | Todos lados diferentes |
| 6 | 8 | 10 | É um triangulo escaleno | Valores diversos |

### Casos Inválidos - Valores ≤0:
| a | b | c | Esperado | Critério |
|---|---|---|----------|----------|
| 0 | 3 | 4 | Não é um triangulo | a = 0 |
| 3 | 0 | 4 | Não é um triangulo | b = 0 |
| 3 | 4 | 0 | Não é um triangulo | c = 0 |
| -1 | 3 | 4 | Não é um triangulo | a negativo |
| 3 | -1 | 4 | Não é um triangulo | b negativo |
| 3 | 4 | -1 | Não é um triangulo | c negativo |

### Casos Inválidos - Desigualdade Triangular:
| a | b | c | Esperado | Critério |
|---|---|---|----------|----------|
| 1 | 1 | 3 | Não é um triangulo | a+b ≤ c |
| 1 | 3 | 1 | Não é um triangulo | a+c ≤ b |
| 3 | 1 | 1 | Não é um triangulo | b+c ≤ a |
| 1 | 2 | 5 | Não é um triangulo | a+b < c |
| 10 | 1 | 1 | Não é um triangulo | b+c < a |
| 1 | 10 | 1 | Não é um triangulo | a+c < b |

## Observações:
- Para formar um triângulo, cada lado deve ser menor que a soma dos outros dois
- O algoritmo verifica primeiro se todos os valores são positivos
- Em seguida verifica a desigualdade triangular
- Por último classifica o tipo de triângulo baseado na igualdade dos lados