%Diogo Francisco Silva Leonardo Ralha 2021220818
%Tomás Baltazar dos Reis 2021240133

function [I] = Regra_dos_trapezios_trabalho(x,y)
%utilizamos esta quando temos pares de valores

%Argumentos de Entrada:
%y =  valores da variável dependente
%x = valores da variável independente

%Argumentos de Saida:
%I = Resultado do método

n= length(x); % n pontos

h = (x(end)-x(1))/(n-1);

I = h/2*(y(1) + 2*sum(y(2:n-1)) + y(n));
end