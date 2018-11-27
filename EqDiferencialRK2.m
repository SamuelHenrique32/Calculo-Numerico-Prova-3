function [t,u] = EqDiferencialRK2(F,a,b,ua,h)
% ENTRADAS:
% F --> fun��o definida por @ (ex: F = @(t,u) 1+t-2*u)
% a e b s�o os extremos do intervalo t
% ua = u(0) (valor de u quando t � 0)
% h --> passo / dist�ncia entre os valores de t (ex: t=0.05)
% SA�DAS:
% t e u --> coordenadas dos pontos que passam pela fun��o solu��o
% Runge-Kutta e mais preciso que Euler

n=(b-a)/h;
t=(a:h:b)';
u=zeros(n+1,1);
u(1)=ua;

for i=1:n
    k1=F(t(i),u(i));
    k2=F(t(i)+h,u(i)+k1*h);
    u(i+1)=u(i)+h*(1/2*k1+1/2*k2);
end

plot(t,u,'*m') % visualizo os pontos que utilizei pra obter a resposta
hold on
grid
plot(t,u,'--') % visualizo a curva da fun��o resposta

% tab=[t u] caso eu queira a minha sa�da na forma de tabela

end