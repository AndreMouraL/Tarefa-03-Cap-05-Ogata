% MATLAB para obter e(t) versus t

% Tempo de simulação
t = 0:0.01:3;

% Função de transferência do sistema
num = [0 0 0 40];
den = [0.1 1 10 40];
sys = tf(num, den);

% ***** RESPOSTA AO DEGRAU UNITÁRIO *****
x1 = step(sys, t);            % Resposta do sistema ao degrau unitário
e1 = 1 - x1;                  % r(t) = 1*u(t), então e(t) = 1 - x(t)

figure;
plot(t, e1, 'b', 'LineWidth', 2)
grid on
title('Gráfico de e(t) versus t quando r(t) = 1·u(t)')
xlabel('t (segundos)')
ylabel('e(t) = 1 - x(t)')

% ***** RESPOSTA À RAMPA UNITÁRIA *****
r = t;                        % Entrada rampa: r(t) = t·u(t)
x2 = lsim(sys, r, t);         % Resposta do sistema à entrada rampa
e2 = r - x2;                  % Erro: e(t) = r(t) - x(t)

figure;
plot(t, e2, 'r', 'LineWidth', 2)
grid on
title('Gráfico de e(t) versus t quando r(t) = t·u(t)')
xlabel('t (segundos)')
ylabel('e(t) = t - x(t)')
