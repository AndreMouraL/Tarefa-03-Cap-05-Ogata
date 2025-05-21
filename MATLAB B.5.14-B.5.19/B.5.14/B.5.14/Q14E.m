% ----- MATLAB program to obtain e(t) versus t curves -----

% ***** Unit-step response *****
num = [0 0 0 1];
den = [1 1 1 0 40];
t = 0:0.01:40;
x = step(num, den, t);
r = ones(size(t));
e = r - x;
figure;
plot(t, e)
grid
title('Plot of e(t) versus t when r(t) = 1 (step)')
xlabel('t (s)')
ylabel('e(t) = 1 - x(t)')

% ***** Unit-ramp response *****
numr = [0 0 1 0];
denr = [1 1 1 0 40 0];
y1 = step(numr, denr, t);
r1 = t;
e1 = r1 - y1;
figure;
plot(t, e1)
grid
title('Plot of e(t) versus t when r(t) = t (ramp)')
xlabel('t (s)')
ylabel('e(t) = t - x(t)')
% ajeitar o codigo graficos saindo errado. ATT