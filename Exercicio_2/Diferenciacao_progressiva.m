%Diogo Francisco Silva Leonardo Ralha 2021220818
%Tomás Baltazar dos Reis 2021240133

function [Z] = Diferenciacao_progressiva (x,y)

%Argumentos de Entrada:
%y =  valores da variável dependente
%x = valores da variável independente

%Argumentos de Saida:
%Z = Resultado do método

n = length(x);

i = 2:n;

Z = [(y(2:end)-y(1:end-1))./(x(2:end)-x(1:end-1))  (y(end)-y(end-1))/(x(end)-x(end-1))];
end