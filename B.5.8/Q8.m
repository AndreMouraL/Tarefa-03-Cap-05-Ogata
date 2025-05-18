
% Definição do ganho
K = 0.225;

% Definição da variável simbólica de Laplace
s = tf('s');

% Função de transferência de malha aberta: G(s) = K / [(s+2)(s)]
G = K / (s * (s + 2 + K^2));

% Saída do sistema (em malha fechada unicamente com ganho K na realimentação)
C = G;

% Exibe a função de transferência
disp('Função de transferência C(s)/R(s):');
C

% Polos do sistema
disp('Polos do sistema:');
pole(C)

% Diagrama da resposta ao degrau e de Bode
figure;

subplot(2,1,1);
step(C);
title('Resposta ao Degrau de C(s)');

subplot(2,1,2);
bode(C);
grid on;
title('Diagrama de Bode de C(s)');
