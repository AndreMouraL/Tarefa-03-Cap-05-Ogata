% Para plotar um Diagrama Bidimensional
t = 0:0.2:10;
zeta = [0.2 0.4 0.6 0.8 1];
y = zeros(length(t), length(zeta));  % Pré-alocação correta

for n = 1:5
    num = [10 2*zeta(n) 1];
    den = [1 2*zeta(n) 1];
    [y(:,n), x] = impulse(num, den, t);  % Armazena cada resposta na coluna n
end

plot(t, y)  % Agora t (51x1) e y (51x5) estão compatíveis
grid on
title('Curva de Resposta ao Impulso Unitário para zeta = 0.2, 0.4, 0.6, 0.8, 1')
xlabel('t (s)')
ylabel('Resposta')
text(2.5,0.4,'0.2')
text(2.5,0.6,'0.4')
text(2.5,0.8,'0.6')
text(2.5,1.0,'0.8')
text(2.5,1.75,'1')

% Para plotar um Diagrama Tridimensional
mesh(t, zeta, y.')  % Transpõe y para que as dimensões batam: (zeta x t)
title('Gráfico 3D das Curvas de Resposta ao Impulso Unitário')
xlabel('t (s)')
ylabel('zeta')
zlabel('Resposta')
