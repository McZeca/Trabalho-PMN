%Diogo Francisco Silva Leonardo Ralha 2021220818
%Tomás Baltazar dos Reis 2021240133

function [D] = Diferenciacao_Numerica_Trabalho (x,y)

%Argumentos de Entrada:
%y =  valores da variável dependente
%x = valores da variável independente

%Argumentos de Saida:
%D = Resultado do método

D = [(y(2)-y(1))/(x(2)-x(1))  (y(3:end)-y(1:end-2))./(x(3:end)-x(1:end-2))   (y(end)-y(end-1))/(x(end)-x(end-1))];

end