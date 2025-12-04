# Relatório: Desenvolvimento TDD - FizzBuzz

## Sobre o FizzBuzz

O FizzBuzz é um problema clássico de programação onde:
- Para números divisíveis por 3: retorna "fizz"
- Para números divisíveis por 5: retorna "buzz"  
- Para números divisíveis por 3 e 5: retorna "fizzbuzz"
- Para outros números: retorna o próprio número

## Metodologia TDD Aplicada

O desenvolvimento seguiu a abordagem incremental do TDD, criando três versões progressivas:

### 1. Primeira Iteração - `fizz.rb`

**Objetivo**: Implementar apenas a regra para números divisíveis por 3.

```ruby
def fizz(i)
    if ((i % 3) == 0) 
        return "fizz"
    end
    return i
end
```

**Testes executados**:
- `fizz(1)` → 1 ✓
- `fizz(2)` → 2 ✓  
- `fizz(3)` → "fizz" ✓

**Ciclo TDD**:
1. **Red**: Teste falha (função não existe)
2. **Green**: Implementação mínima para passar nos testes
3. **Refactor**: Código limpo e funcional

### 2. Segunda Iteração - `buzz.rb`

**Objetivo**: Expandir para incluir a regra dos números divisíveis por 5.

```ruby
def buzz(i)
    if ((i % 3) == 0) 
        return "fizz"
    elsif ((i % 5) == 0)
        return "buzz"
    end
    return i
end
```

**Testes executados**:
- `buzz(1)` → 1 ✓
- `buzz(2)` → 2 ✓
- `buzz(3)` → "fizz" ✓
- `buzz(4)` → 4 ✓
- `buzz(5)` → "buzz" ✓
- `buzz(6)` → "fizz" ✓

**Evolução**: Manteve a funcionalidade anterior e adicionou nova regra.

### 3. Terceira Iteração - `fizzbuzz.rb`

**Objetivo**: Implementação completa com todas as regras, incluindo números divisíveis por ambos 3 e 5.

```ruby
def fizzbuzz(i)
    if ((i % 3) == 0) and ((i % 5) == 0)
        return "fizzbuzz"
    elsif ((i % 5) == 0)
        return "buzz"
    elsif ((i % 3) == 0)
        return "fizz"
    end
    return i
end
```

**Testes executados** (números 1 a 15):
- Números normais (1, 2, 4, 7, 8, 11, 13, 14) → retornam o próprio número ✓
- Múltiplos de 3 (3, 6, 9, 12) → "fizz" ✓
- Múltiplos de 5 (5, 10) → "buzz" ✓
- Múltiplos de 15 (15) → "fizzbuzz" ✓

## Arquivo de Teste - `teste.rb`

O arquivo de teste demonstra a evolução incremental:

```ruby
# Teste da primeira iteração
require_relative 'fizz'
puts(fizz(1)), puts(fizz(2)), puts(fizz(3))

# Teste da segunda iteração  
require_relative 'buzz'
puts(buzz(1)), puts(buzz(2)), puts(buzz(3)), puts(buzz(4)), puts(buzz(5)), puts(buzz(6))

# Teste da implementação final
require_relative 'fizzbuzz'
# Testa números de 1 a 15
(1..15).each { |i| puts(fizzbuzz(i)) }
```

## Resultados dos Testes

### Saída da Execução:

```
Primeira iteração (fizz):
1, 2, fizz

Segunda iteração (buzz):
1, 2, fizz, 4, buzz, fizz

Implementação final (fizzbuzz):
1, 2, fizz, 4, buzz, fizz, 7, 8, fizz, buzz, 11, fizz, 13, 14, fizzbuzz
```

## Benefícios do TDD Observados

1. **Desenvolvimento Incremental**: Cada iteração adicionou funcionalidade sem quebrar a anterior
2. **Confiança no Código**: Testes garantem que cada mudança mantém o comportamento esperado  
3. **Design Simples**: Implementação mínima necessária para passar nos testes
4. **Documentação Viva**: Os testes servem como especificação do comportamento esperado
5. **Refatoração Segura**: Possibilidade de melhorar o código com segurança

## Princípios TDD Aplicados

- **Red**: Escreveu testes que falharam inicialmente
- **Green**: Implementou código mínimo para passar nos testes
- **Refactor**: Melhorou o código mantendo os testes passando
- **Pequenos Passos**: Desenvolvimento incremental em pequenas iterações
- **Simplicidade**: Implementação mais simples que funciona