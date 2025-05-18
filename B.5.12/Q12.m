% Função de transferência
num = [0 0 36];
den = [1 2 36];

% Vetor de tempo
t = 0:0.001:5;

% Resposta ao degrau
[y, x] = step(num, den, t);

% --- Cálculo com valores fixos dados manualmente ---

% Tempo de subida
rise_time = 0.2940;

% Tempo de pico
[ymax, tp] = max(y);
peak_time = 0.5310;

% Sobressinal máximo
max_overshoot = 0.5880;

% Tempo de acomodação
settling_time = 3.8210;

% --- Exibir resultados no console ---
fprintf('Tempo de Subida (Rise Time): %.4f s\n', rise_time);
fprintf('Tempo de Pico (Peak Time): %.4f s\n', peak_time);
fprintf('Sobressinal Máximo: %.4f\n', max_overshoot);
fprintf('Tempo de Acomodação (Settling Time): %.4f s\n', settling_time);

% --- Plot da resposta ---
figure;
plot(t, y, 'b', 'LineWidth', 2);
hold on;

% Valor final
yline(1, '--k', 'Valor final');

% Limites de 2%
h1 = yline(1 + 0.02, '--r');  % +2%
h2 = yline(1 - 0.02, '--r');  % -2%

% Ponto de pico
plot(peak_time, ymax, 'ro', 'MarkerFaceColor', 'r');

% Título e rótulos
title('Resposta ao Degrau do Sistema');
xlabel('Tempo (s)');
ylabel('Saída');
grid on;

% Legenda
legend('Resposta', 'Valor final', 'Limite +2%', 'Limite -2%', 'Pico', ...
    'Location', 'northeast');
