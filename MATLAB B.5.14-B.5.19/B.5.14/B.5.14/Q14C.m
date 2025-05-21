% MATLAB para obter as respostas x2 às entradas r(t) = 1(t) e r(t) = t·1(t) 

% Resposta à entrada degrau unitário: r(t) = 1(t)
numerador1 = [0 0 40 0];
denominador1 = [0.1 1 10 40];
tempo = 0:0.02:3;
x2 = step(numerador1, denominador1, tempo);
plot(tempo, x2)
grid
title('Resposta x2 à entrada r(t) = 1(t)')
xlabel('t (segundos)')
ylabel('x2')

% Resposta à entrada rampa unitária: r(t) = t·1(t)
numerador2 = [0 0 0 40 0];
denominador2 = [0.1 1 10 40 0];
y2 = step(numerador2, denominador2, tempo);
figure
plot(tempo, tempo, '--', tempo, y2, '-')
grid
title('Resposta x2 à entrada r(t) = t·1(t)')
xlabel('t (segundos)')
ylabel('Entrada Rampa e Resposta x2')
%  uso do  do Degrau....