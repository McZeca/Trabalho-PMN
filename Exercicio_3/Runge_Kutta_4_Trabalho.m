%Diogo Francisco Silva Leonardo Ralha 2021220818
%Tomás Baltazar dos Reis 2021240133

function [t,rk4,D] = Runge_Kutta_4_Trabalho(dy,t0,tn,h,y0)

%Argumentos de Entrada:
%h = passo de discretização
%dy = função anónima do exercicio
%y0 = condição inicial
%t0 e tn = extremos do intervalo da variável independente

%Argumentos de Saida:
%t = intervalo de discretização
%rk4 = vetor que aloca a solução da incógnita
%D = vetores com os valores de coeficientes para o cálculo do método

t = (t0:h:tn);
n = length(t);
rk4 = y0*ones(1,n);
D = zeros(n,4);

for i= 1:n-1   %Ciclo de Runge-Kutta de 4ª ordem
    k1 = h*dy(t(i),rk4(i));
    k2 = h*dy(t(i)+h/2,rk4(i)+k1/2);
    k3 = h*dy(t(i)+h/2,rk4(i)+k2/2);
    k4 = h*dy(t(i)+h,rk4(i)+k3);
    rk4(i+1) = rk4(i) + 1/6*(k1+2*k2+2*k3+k4);
    D(i,:) = [k1 k2 k3 k4];
end
  
    k1 = h*dy(t(n),rk4(n));
    k2 = h*dy(t(n)+h/2,rk4(n)+k1/2);
    k3 = h*dy(t(n)+h/2,rk4(n)+k2/2);
    k4 = h*dy(t(n)+h,rk4(n)+k3);
D(n,:) = [k1 k2 k3 k4];
   
end
