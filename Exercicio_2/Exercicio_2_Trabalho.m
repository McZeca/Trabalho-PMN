%Diogo Francisco Silva Leonardo Ralha 2021220818
%Tomás Baltazar dos Reis 2021240133

% Script da Diferenciação e Integração numérica

clear; clc; close all;  % clear - Apaga todas as variáveis do Workspace
                          % clc - Apaga o que está na Command Window
                          % close all - Fecha todas as janelas de gráfico que estejam abertas
                       
%% Definir condições iniciais
x = (0.1:0.1:0.6);
y = [10 5.49 0.89 -0.14 -1.07 0.84];
h= [0.1];
a = x(1);
b = x(end);

%% Alinea A

disp('Alínea A')

[D] = Diferenciacao_Numerica_Trabalho (x,y)


%Diferenciação Regressiva

[R] = Diferenciacao_regressiva (x,y)
   % Nota: o primeiro e segundo valores são iguais (a fórmula da
   % diferenciação progressiva no primeiro valor é igual à formula da regressiva no
   % segundo valor

%Diferencição Progressiva

[Z] = Diferenciacao_progressiva (x,y)
   % Nota: o último e penúltimo valores são iguais (a fórmula da
   % diferenciação progressiva no penúltimo valor é igual à formula da regressiva no
   % último valor

%% Alinea B

disp('Alínea B')

[I] = Regra_dos_trapezios_trabalho(x,y) 

i = trapz(x,y)

%Podemos concluir que ao usarmos uma função pré programada do MATLAB ou
%codificar uma função para este problema levou-nos a valores e gráficos idênticos. 

%% Alinea C

P = polyfit(x,y,3);
xx= linspace(x(1),x(end));
P_xx= polyval(P,xx);

figure 
plot(x,y,'x',xx,P_xx,'b') 
title('Gráfico do polinómio cúbico dos pontos tabelados')
xlabel('x')   
ylabel('y')
legend('pontos tabelados','Curva que melhor se ajusta ao polinómio')

%% Alinea D

disp('Alínea D')

bp= polyder(P);   % Função MatLab pré-programada para calculo de uma derivada 
V= polyint(P);   % Função MatLab pré-programada para calculo de uma integral 

k = polyval(bp,x)

r = diff(polyval(V,[a,b]))   % "diff" função pré-programada do MatLab para calculo de uma diferença

figure
plot(x,D,'-',x,k,'-') 
title('Comparação entre diferenciação numérica entre a alínea (a) e (d)')
xlabel('x')   
ylabel('y')
legend('diferenciação por pontos tabelados na alínea a','diferenciação por pontos tabelados na alínea d ')
fprintf('(Ver figura 2)\n')

fprintf('Comparação entre os valores dos integrais entre a alínea (b) e (d)\n')
fprintf('__________________________________________________________________\n')
fprintf('  I      %8.6f     \n',I')
fprintf('__________________________________________________________________\n')
fprintf('  r      %8.6f     \n',r')
fprintf('__________________________________________________________________\n')

%% Webgrafia:
% Power Points e exercícios fornecidos pelo professor