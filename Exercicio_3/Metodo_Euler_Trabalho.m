%Diogo Francisco Silva Leonardo Ralha 2021220818
%Tomás Baltazar dos Reis 2021240133

function [v,y,yp] = Metodo_Euler_Trabalho(h,f,y0,Vt)

%Argumentos de Entrada:
%h = passo de discretização
%f = função anónima do exercicio
%y0 = condição inicial
%Vt = volume total

%Argumentos de Saida:
%y = Vetor que aloca a solução da incógnita
%yp = Vetor do preditor
%v = variação do volume com a malha de discretização

v = 0:h:Vt;
n = length(v);
y = y0*ones(1,n);
yp= y0*ones(1,n);

for i = 1:n-1   % Ciclo do Método de Euler Preditor-Corretor (Implícito)
    yp(i+1)= y(i) + h*(feval(f,v(i),y(i)));
    y(i+1) = y(i) + (h/2)*(feval(f,v(i),y(i)) + feval(f,v(i),y(i)));
end