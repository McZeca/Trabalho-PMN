%Diogo Francisco Silva Leonardo Ralha 2021220818
%Tomás Baltazar dos Reis 2021240133

function [C] = metodo_minimos_quadrados_funcao(x,y)
% Usamos esta fórmula do método dos Mínimos quadrados porque precisamos de obter uma equação de 2º grau

%Argumentos de Entrada:
%y =  valores da variável dependente
%x = valores da variável independente

%Argumentos de Saida:
%C = Resultados do método

n = length(x); %nº de elementos

A = [n sum(x) sum(x.^2); sum(x) sum(x.^2) sum(x.^3); sum(x.^2) sum(x.^3) sum(x.^4)];

b = [sum(y) sum(x.*y) sum(x.^2.*y)]';

C = A\b; 

end