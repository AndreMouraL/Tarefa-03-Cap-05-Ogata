% ***** Resposta ao Degrau Unitário *****
numerador = [0 0 0 40];
denominador = [0.1 1 10 40];
tempo = 0:0.01:2;
x1 = step(numerador, denominador, tempo);
plot(tempo, x1, '-')
grid
title('Resposta ao Degrau Unitário')
xlabel('t (segundos)')
ylabel('x1')
% ****************************************
%Acima é apresentado um programa em MATLAB para obter a curva de resposta ao degrau unitário, juntamente com a respectiva curva.