%Diogo Francisco Silva Leonardo Ralha 2021220818
%Tomás Baltazar dos Reis 2021240133

function [R] = Diferenciacao_regressiva (x,y)

%Argumentos de Entrada:
%y =  valores da variável dependente
%x = valores da variável independente

%Argumentos de Saida:
%R = Resultados do método

n = length(x);

i = 2:n;

R = [(y(2)-y(1))/(x(2)-x(1))  (y(2:end)-y(1:end-1))./(x(2:end)-x(1:end-1))];
end