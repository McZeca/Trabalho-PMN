%Diogo Francisco Silva Leonardo Ralha 2021220818
%Tomás Baltazar dos Reis 2021240133


%Script do método dos mínimos quadrados

clear; clc; close all;  % clear - Apaga todas as variáveis do Workspace
                          % clc - Apaga o que está na Command Window
                          % close all - Fecha todas as janelas de gráfico que estejam abertas
%% load do ficheiro
D = load('H2Ovisc.dat');
T = D(:,1);
miu = D(:,2);

% miu são os valores da viscosidade (em Pascal x segundo)
% T são os valores da temperatura (em graus Celcius)

%% Transformar temperatura em kelvin
Tk= T + 273.15;
% Tk são os valores da temperatura (em Kelvin)

%% Definir condições iniciais
T0 = Tk(1);     % valor inicial de T0 = 0ºC = 273.15K

miu0 = miu(1);    % valor inicial da viscosidade (miu = 1.787*10^-3 Pa/s)

%% Definir variáveis e Introdução da função
x = Tk/T0;        
                      %valores Adimensionais
y = log(miu/miu0);  

% Para introduzir os valores da funcão do exercicio, tivemos que codificar
% "x" e "y" de acordo com a equação fornecida no enunciado

xx = linspace(x(1),x(end));
% Criámos uma malha de 100 pontos, igualmente espaçados, entre o valor inicial e final de "x"

[C] = metodo_minimos_quadrados_funcao(x,y); % Função do modelo quadrático


yh = @(x,C) C(1) + C(2)*x + C(3)*(x.^2)   % Equação do modelo quadrático com os coeficientes do Método

y1 = yh(xx,C);    % Aplicação da equação do modelo quadrático para os valores da malha

fprintf('_____________________________________\n')
fprintf('    C1            C2          C3  \n')
fprintf('_____________________________________\n')
fprintf('%8.6f    %8.6f    %8.6f   \n',C')
fprintf('_____________________________________\n')


%% Definir gráfico

figure 
plot(x,y,'x',xx,y1,'b'); hold on    % Criação de um gráfico, com os eixos ortonomados "x" e "y" e inserção da função y1
xlabel('Temperatura normalizada')   
ylabel('Ln da Viscosidade normalizada')
title('Dependência da Viscosidade relativamente à Temperatura')

%% Usando uma função pré-definida do MATLAB

P2 = polyfit(x,y,2);  %Função polinomial de segundo grau 

figure 
plot(x,y,'xr',xx,polyval(P2,xx),'r'); hold on   % Criação de um gráfico, com os eixos ortonomados "x" e "y" e inserção da função P2
xlabel('Temperatura normalizada')   
ylabel('Ln da Viscosidade normalizada')
title('Dependência da Viscosidade relativamente à Temperatura')

fprintf('_____________________________________\n')
fprintf('    P1            P2          P3  \n')
fprintf('_____________________________________\n')
fprintf('%8.6f    %8.6f    %8.6f   \n',P2')
fprintf('_____________________________________\n')

%% Conclusões
%Podemos concluir que ao usarmos uma função pré programada do MATLAB ou
%codificar uma função para este problema levou-nos a valores e gráficos idênticos. 
   

%% Webgrafia:
% Power Points e exercícios fornecidos pelo professor