def verDesconto(cliente, qtd)
  cliente.downcase!
  desconto = 0

  if (cliente != "a" && cliente != "b" && cliente != "c") || qtd < 1 || qtd > 1000
    desconto = -1
  else 
    if (cliente == "a")
      if qtd >= 10 && qtd <= 99
        desconto = 5
      elsif (qtd >= 100)
        desconto = 10
      end
    elsif (cliente == "b")
      if (qtd < 10)
        desconto = 5
      elsif (qtd >= 10 && qtd <= 99)
        desconto = 15
      else 
        desconto = 25
      end
    else 
      if (qtd >= 10 && qtd <= 99)
        desconto = 20
      elsif (qtd > 100)
        desconto = 25
      end
    end
  end

  return desconto
end

tipo_cliente = gets
qtd = gets.to_i

puts verDesconto(tipo_cliente, qtd)

############################ CASOS DE TESTE verDesconto() #############################
# cliente = A ou B ou C
# 1 <= qtd <= 1000
# 
# (cliente = A && qtd = 9) == 0
# (cliente = A && qtd = 10) == 5
# (cliente = A && qtd = 100) == 10
# 
# (cliente = B && qtd = 9) == 5
# (cliente = B && qtd = 10) == 15
# (cliente = B && qtd = 100) == 10