require_relative 'triangulo'

class TesteTriangulo
  def initialize
    @total_testes = 0
    @testes_passaram = 0
  end

  def executar_teste(a, b, c, resultado_esperado, descricao)
    @total_testes += 1
    
    # Chamar a função diretamente
    resultado_obtido = triangulo(a, b, c)
    
    if resultado_obtido == resultado_esperado
      puts "PASSOU: #{descricao}"
      puts "   Entrada: a=#{a}, b=#{b}, c=#{c}"
      puts "   Esperado: #{resultado_esperado}"
      puts "   Obtido: #{resultado_obtido}"
      @testes_passaram += 1
    else
      puts "FALHOU: #{descricao}"
      puts "   Entrada: a=#{a}, b=#{b}, c=#{c}"
      puts "   Esperado: #{resultado_esperado}"
      puts "   Obtido: #{resultado_obtido}"
    end
    puts "-" * 50
  end

  def executar_todos_os_testes
    puts "INICIANDO TESTES DO TRIANGULO.RB"
    puts "=" * 50

    puts "\n CASOS VÁLIDOS - TRIÂNGULO EQUILÁTERO:"
    executar_teste(3, 3, 3, "É um triangulo equilatero", "Todos lados iguais")
    executar_teste(1, 1, 1, "É um triangulo equilatero", "Limite inferior")
    executar_teste(10, 10, 10, "É um triangulo equilatero", "Valores médios")

    puts "\n CASOS VÁLIDOS - TRIÂNGULO ISÓSCELES:"
    executar_teste(3, 3, 2, "É um triangulo isoceles", "a=b, c diferente")
    executar_teste(3, 2, 3, "É um triangulo isoceles", "a=c, b diferente")
    executar_teste(2, 3, 3, "É um triangulo isoceles", "b=c, a diferente")
    executar_teste(5, 5, 8, "É um triangulo isoceles", "Limite próximo à desigualdade")

    puts "\n CASOS VÁLIDOS - TRIÂNGULO ESCALENO:"
    executar_teste(3, 4, 5, "É um triangulo escaleno", "Triângulo retângulo")
    executar_teste(2, 3, 4, "É um triangulo escaleno", "Todos lados diferentes")
    executar_teste(6, 8, 10, "É um triangulo escaleno", "Valores diversos")

    puts "\n CASOS INVÁLIDOS - VALORES ≤0:"
    executar_teste(0, 3, 4, "Não é um triangulo", "a = 0")
    executar_teste(3, 0, 4, "Não é um triangulo", "b = 0")
    executar_teste(3, 4, 0, "Não é um triangulo", "c = 0")
    executar_teste(-1, 3, 4, "Não é um triangulo", "a negativo")
    executar_teste(3, -1, 4, "Não é um triangulo", "b negativo")
    executar_teste(3, 4, -1, "Não é um triangulo", "c negativo")

    puts "\n CASOS INVÁLIDOS - DESIGUALDADE TRIANGULAR:"
    executar_teste(1, 1, 3, "Não é um triangulo", "a+b ≤ c")
    executar_teste(1, 3, 1, "Não é um triangulo", "a+c ≤ b")
    executar_teste(3, 1, 1, "Não é um triangulo", "b+c ≤ a")
    executar_teste(1, 2, 5, "Não é um triangulo", "a+b < c")
    executar_teste(10, 1, 1, "Não é um triangulo", "b+c < a")
    executar_teste(1, 10, 1, "Não é um triangulo", "a+c < b")

    puts "\n RESUMO DOS TESTES:"
    puts "Total de testes: #{@total_testes}"
    puts "Testes que passaram: #{@testes_passaram}"
    puts "Testes que falharam: #{@total_testes - @testes_passaram}"
    
    taxa_sucesso = (@testes_passaram.to_f / @total_testes * 100).round(2)
    puts "Taxa de sucesso: #{taxa_sucesso}%"
    
    if @testes_passaram == @total_testes
      puts "TODOS OS TESTES PASSARAM!"
    else
      puts "ALGUNS TESTES FALHARAM!"
    end
  end
end

# Executar os testes
if __FILE__ == $0
  require 'stringio'
  
  teste = TesteTriangulo.new
  teste.executar_todos_os_testes
end