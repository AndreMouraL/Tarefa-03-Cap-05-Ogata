% ***** Resposta ao degrau unitário *****
num = [10];          % Numerador: 10
den = [1 2 10];      % Denominador: s^2 + 2s + 10
t = 0:0.02:10;       % Vetor tempo de 0 a 10s com passo 0.02s

figure(1)
step(num, den, t)    % Resposta ao degrau
grid on
title('Resposta ao Degrau Unitário')
xlabel('t (s)')
ylabel('c(t)')

% ***** Resposta à rampa unitária *****
% Para resposta à rampa, multiplicamos o sistema por 1/s
numr = [10];         % Numerador do sistema original
denr = [1 2 10 0];   % Denominador do sistema original * s

figure(2)
c = step(numr, denr, t);  % Resposta à rampa
plot(t, c, '-', t, t, '--')  % Gráfico da resposta e da rampa de entrada
grid on
title('Resposta à Rampa Unitária')
xlabel('t (s)')
ylabel('c(t)')
legend('Resposta do Sistema', 'Rampa de Entrada')

% ***** Resposta ao impulso unitário *****
figure(3)
impulse(num, den, t) % Resposta ao impulso
grid on
title('Resposta ao Impulso Unitário')
xlabel('t (s)')
ylabel('c(t)')
