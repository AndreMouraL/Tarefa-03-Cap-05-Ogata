% ***** Resposta à rampa unitária *****

% Definindo as matrizes do sistema original
A = [-1 -0.5; 1 0];
B = [0.5; 0];
C = [1 0];
D = 0;

% ***** Criando as matrizes AA, BB, CC e DD do sistema aumentado *****
AA = [A zeros(2,1); C 0];  
BB = [B; 0];              
CC = [0 0 1];            
DD = 0;                  

% ***** Calculando a resposta ao degrau do sistema aumentado *****
[z,x,t] = step(AA,BB,CC,DD);

% Extraindo a terceira variável de estado
x3 = [0 0 1]*x'; 

% Plotando a resposta e a entrada rampa
plot(t,x3,t,t,'-', 'LineWidth', 1.5)
grid on
title('Resposta à Rampa Unitária')
xlabel('Tempo (s)')
ylabel('Amplitude')

% Adicionando legenda no canto superior esquerdo
legend('Resposta do Sistema', 'Entrada Rampa', 'Location', 'northwest')

% Ajustando os limites do eixo x para melhor visualização
xlim([0 max(t)])