# prog06.gp
# 

set terminal wxt size 800,600
set xlabel "Tempo (s)"
set ylabel "Valor"
set title "Gráfico em Tempo Real"
set xdata time
set timefmt "%s"
set format x "%H:%M:%S"
set grid

# Função para gerar dados aleatórios
random_data(x) = sin(x) + rand(0)

# Loop infinito para atualizar o gráfico
while (1) {
    set xrange [*:*]
    plot random_data(x) title 'Dados aleatórios' with lines
    pause 1  # Esperar 1 segundo antes de atualizar o gráfico
}
