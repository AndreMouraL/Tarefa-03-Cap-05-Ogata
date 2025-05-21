% MATLAB para o Problema B-5-18 (em português)

A = [0 1; -1 -1];
B = [0; 1];
C = [1 0];
D = 0;

t = 0:0.1:8;     % vetor de tempo
u = t;           % entrada em rampa

% Simulação da resposta ao sinal de entrada u(t)
y = lsim(A, B, C, D, u, t);

% Gráfico da entrada e saída
plot(t, u, 'b--', 'LineWidth', 1.5);   % entrada (rampa) em azul tracejado
hold on
plot(t, y, 'r', 'LineWidth', 2);       % saída em vermelho contínuo
hold off

grid on
title('Resposta à Entrada Rampa Unitária')
xlabel('t (segundos)')
ylabel('Entrada Rampa e Saída do Sistema')
legend('Entrada Rampa', 'Saída do Sistema', 'Location', 'best')

text(1.5, 4.5, 'Entrada Rampa')
text(4.5, 2.5, 'Saída')
