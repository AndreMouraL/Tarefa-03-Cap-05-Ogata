A = [0 1; -2 -3];
B = [0; 0];
C = [1 0];
D = 0;
t = 0:0.01:5;
y = initial(A, B, C, D, [0.1; 0.05], t);
plot(t, y)
grid on
title('Resposta à Condição Inicial')
xlabel('t (seg)')
ylabel('Saída y')
