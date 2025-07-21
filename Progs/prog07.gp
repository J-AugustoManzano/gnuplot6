# prog07.gp
#

set terminal wxt size 800,600
set xlabel "Eixo X"
set ylabel "Eixo Y"
set title "Gráfico Teste"
set grid

# Converter a entrada para um número inteiro
tipo = int(tipo)

set xrange [*:*]

if (tipo == 1) {
  plot sin(x) title 'Seno' with lines
} 
if (tipo == 2) {  
  plot cos(x) title 'Cosseno' with lines
}

