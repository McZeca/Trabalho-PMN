%Diogo Francisco Silva Leonardo Ralha 2021220818
%Tomás Baltazar dos Reis 2021240133


% Script da Diferenciação e Integração numérica

clear; clc; close all;  % clear - Apaga todas as variáveis do Workspace
                        % clc - Apaga o que está na Command Window
                        % close all - Fecha todas as janelas de gráfico que estejam abertas


%% Definir condições iniciais

k = 1;
Qv = 2;
C0 = 2;
Vt = 20;
V0 = 0;
f = @(v,y) -k*(y.^2)./Qv;
h = 0.2;
Vtotal = [V0:h:Vt];

%%  Euler - preditor corretor - implícito

[v,y,yp] = Metodo_Euler_Trabalho(h,f,C0,Vt)

v = v';
y = y';

[V,CA] = ode45(f,Vtotal,C0);

Ea1 = abs(CA - y);


%% Euler explicito

[t,x] = Metodo_Euler(h,V0,Vt,C0,f)

x = x';

Ea2 = abs(CA - x);

%% Runge Kutta 2ª ordem

c = 0.5 %Método de Runge-Kutta trapezoidal

[t,rk2,K] = RungeKutta_2_Trabalho(f,V0,Vt,h,C0,c)

rk2 = rk2';

Ea3 = abs(CA - rk2);


%% Runge Kutta 4ª Ordem

[t,rk4,D] = Runge_Kutta_4_Trabalho(f,V0,Vt,h,C0)

rk4 = rk4';

Ea4 = abs(CA - rk4);

%% Webgrafia:
% Power Points e exercícios fornecidos pelo professor