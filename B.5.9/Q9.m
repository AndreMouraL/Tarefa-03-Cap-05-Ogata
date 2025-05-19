% Função de transferência com k = 0.2
k = 0.2;
num = [0 0 16];                      % Numerador: 16
den = [1 (0.8 + 16*k) 16];           % Denominador: s² + (0.8 + 16k)s + 16

% Vetor de tempo
t = 0:0.001:5;

% Resposta ao degrau
[y, x] = step(num, den, t);

% --- Valores teóricos para k = 0.2 ---
rise_time = 0.604;      % Tempo de subida (tr)
peak_time = 0.907;      % Tempo de pico (tp)
max_overshoot = 0.163;  % Sobressinal máximo (Mp)
settling_time = 2.0;    % Tempo de acomodação (ts)

% --- Exibir resultados ---
fprintf('Tempo de Subida (tr): %.3f s\n', rise_time);
fprintf('Tempo de Pico (tp): %.3f s\n', peak_time);
fprintf('Sobressinal Máximo (Mp): %.3f\n', max_overshoot);
fprintf('Tempo de Acomodação (ts): %.3f s\n', settling_time);

% --- Plot da resposta ---
figure;
plot(t, y, 'b', 'LineWidth', 2);
hold on;

% Linhas de referência
yline(1, '--k', 'Valor final');                  % Valor final (degrau unitário)
h1 = yline(1.02, '--r');          % +2%
h2 = yline(0.98, '--r');          % -2%

% Ponto de pico
[ymax, idx] = max(y);
plot(peak_time, ymax, 'ro', 'MarkerFaceColor', 'r');

% Configurações do gráfico
title('Resposta ao Degrau do Sistema');
xlabel('Tempo (s)');
ylabel('Saída');
grid on;
legend('Resposta', 'Valor final', 'Limite +2%', 'Limite -2%', 'Pico', 'Location', 'southeast');