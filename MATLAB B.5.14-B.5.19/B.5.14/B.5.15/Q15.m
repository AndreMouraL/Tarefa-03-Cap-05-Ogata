num = [0  0  0  10];
den = [1  6  8  10];

% Método recomendado (usando tf e step)
sys = tf(num, den);
[y, t] = step(sys);  % t é gerado automaticamente

plot(t, y);
grid on;
title('Curva de Resposta ao Degrau Unitário');
xlabel('Tempo (s)');
ylabel('Saída');

% Cálculo do tempo de subida (rise time)
r = 1; 
while r <= length(y) && y(r) < 1.0001
    r = r + 1; 
end
rise_time = t(r);  % Usa o tempo diretamente

% Cálculo do tempo de pico (peak time)
[ymax, tp] = max(y);
peak_time = t(tp);

% Cálculo do sobressinal (overshoot)
max_overshoot = ymax - 1;

% Cálculo do tempo de acomodação (settling time)
s = length(y); 
while s > 1 && (y(s) < 0.98 || y(s) > 1.02)
    s = s - 1; 
end
settling_time = t(s);

% Exibe os resultados
disp(['Tempo de Subida: ', num2str(rise_time), ' s']);
disp(['Tempo de Pico: ', num2str(peak_time), ' s']);
disp(['Sobressinal Máximo: ', num2str(max_overshoot * 100), '%']);
disp(['Tempo de Acomodação: ', num2str(settling_time), ' s']);
