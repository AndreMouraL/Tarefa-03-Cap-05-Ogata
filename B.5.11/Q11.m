% **** Resposta ao Degrau Unitário ****

% Definir o sistema no espaço de estados
A = [-1 -0.5; 1 0];
B = [0.5; 0];
C = [1 0];
D = [0];

% Criar o objeto do sistema
sys = ss(A, B, C, D);

% Definir o vetor de tempo
t = 0:0.1:10; % De 0 a 10 segundos com incrementos de 0.1s

% Calcular e plotar a resposta ao degrau
[y, t] = step(sys, t); % Calcula a resposta ao degrau

figure;
plot(t, y);
grid on;
title('Resposta ao Degrau Unitário');
xlabel('Tempo (s)');
ylabel('Saída');
