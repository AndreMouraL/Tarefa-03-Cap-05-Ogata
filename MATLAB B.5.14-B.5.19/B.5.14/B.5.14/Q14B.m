% ***** Resposta à Rampa Unitária *****
numerador = [0 0 0 0 40];
denominador = [0.1 1 10 40 0];
tempo = 0:0.01:2;
y1 = step(numerador, denominador, tempo);
plot(tempo, tempo, '--', tempo, y1, '-')
grid
title('Resposta à Rampa Unitária')
xlabel('t (segundos)')
ylabel('Entrada em Rampa e Saída x1')
