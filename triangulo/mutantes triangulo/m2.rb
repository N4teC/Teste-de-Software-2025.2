def triangulo(a,b,c)
    triangulo = ""

    # Para que três segmentos de reta formem um triângulo, a soma das medidas de dois deles deve ser sempre maior que a medida do terceiro. 
    if ((a - b) > c and (b - c) > a and (a - c) > b) and (a > 0 and b > 0 and c > 0)
        triangulo = "É um triangulo"
        # Equilátero tem os 3 lados iguais
        if (a == b and b == c)
            triangulo = "É um triangulo equilatero"
        # Escaleno tem os 3 lados diferentes
        elsif (a != b and a != c and b != c)
            triangulo = "É um triangulo escaleno"
        # Isoceles tem os 2 lados iguais e um diferente
        else
            triangulo = "É um triangulo isoceles"
        end
    else
        triangulo = "Não é um triangulo"
    end

    return triangulo
end