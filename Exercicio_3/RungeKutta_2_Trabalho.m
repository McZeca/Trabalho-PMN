%Diogo Francisco Silva Leonardo Ralha 2021220818
%Tomás Baltazar dos Reis 2021240133

function [t,rk2,K] = RungeKutta_2_Trabalho(dy,t0,tn,h,y0,c)

%Argumentos de Entrada:
%h = passo de discretização
%dy = função anónima do exercicio
%y0 = condição inicial
%t0 e tn = extremos do intervalo da variável independente
%c = parâmetro do método

%Argumentos de Saida:
%t = intervalo de discretização
%rk2 = vetor que aloca a solução da incógnita
%K = vetores com os valores de coeficientes para o cálculo do método

t = t0:h:tn;
n = length(t);
rk2 = ones(1,n)*y0;
K = ones(n,2);

for i= 1:n-1   %Ciclo de Runge-Kutta de 2ª ordem
    k1 = h*dy(t(i),rk2(i));
    k2 = h*dy(t(i)+h/(2/c),rk2(i)+k1/(2/c));
    rk2(i+1) = rk2(i) + (1-c)*k1 + c*k2;
    K(i,:) = [k1,k2];
end

k1 = h*dy(t(n),rk2(n));

K(n,:) = [h*dy(t(n),rk2(n)) h*dy(t(n)+h/(2/c),rk2(n)+k1/(2/c))];

end
