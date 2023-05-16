%Diogo Francisco Silva Leonardo Ralha 2021220818
%Tomás Baltazar dos Reis 2021240133

function [t,x] = Metodo_Euler(h,t0,tn,y0,f)

%Argumentos de Entrada:
%h = passo de discretização
%t0 e tn = extremos do intervalo da variável independente
%y0 = condição inicial
%f = função anónima do exercicio

%Argumentos de Saida:
%t = malha de discretização
%x = vetor onde se aloca memória de todos os elementos de y0

t = t0:h:tn;

n = length(t);

x = ones(1,n)*y0;

for i= 1:n-1   % Ciclo do Método de Euler Explícito
    x(i+1) = x(i) + h*f(t(i),x(i));
end
end
