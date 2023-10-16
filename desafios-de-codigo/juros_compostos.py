def calcular_valor_final(valor_final, taxa_juros, periodo):
    # Iterar ao longo do período para calcular o valor final com juros compostos
    for _ in range(periodo):
        valor_final *= (1 + taxa_juros)

    # Arredondar o valor final para duas casas decimais
    valor_final = round(valor_final, 2)

    return valor_final

# Entrada dos parâmetros
valor_inicial = float(input())
taxa_juros = float(input())
periodo = int(input())

# Calcular o valor final
valor_final = calcular_valor_final(valor_inicial, taxa_juros, periodo)

# Imprimir o resultado
print("Valor final do investimento: R$", valor_final)