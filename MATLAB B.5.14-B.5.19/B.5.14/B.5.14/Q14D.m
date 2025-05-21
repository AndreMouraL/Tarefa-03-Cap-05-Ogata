% MATLAB para obter a resposta x3 às entradas 
% r(t) = 1(t) e r(t) = t·1(t)

% Resposta à entrada degrau unitário: r(t) = 1(t)
numerador3 = [0 4 40 0];
denominador3 = [1 10 100 400];
tempo = 0:0.01:3;
x3 = step(numerador3, denominador3, tempo);
plot(tempo, x3);
grid
title('Resposta x3 à entrada r(t) = 1(t)')
xlabel('t (segundos)')
ylabel('x3')

% Resposta à entrada rampa unitária: r(t) = t·1(t)
numerador3r = [0 0 4 40 0];
denominador3r = [1 10 100 400 0];
y3 = step(numerador3r, denominador3r, tempo);
figure
plot(tempo, tempo, '--', tempo, y3, '-')
grid
title('Resposta x3 à entrada r(t) = t·1(t)')
xlabel('t (segundos)')
ylabel('Entrada Rampa e x3')
