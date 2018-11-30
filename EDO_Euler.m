function [t,u] = EDO_Euler(F,a,b,ua,h)
% ENTRADAS:
% F --> fun��o definida por @ (ex: F = @(t,u) 1+t-2*u)
% a e b s�o os extremos do intervalo t
% ua = u(0) (valor de u quando t � 0)
% h --> passo / dist�ncia entre os valores de t (ex: t=0.05)
% SA�DAS:
% t e u --> coordenadas dos pontos que passam pela fun��o solu��o

t=[a:h:b]';
n=length(t);
u=zeros(n,1);
u(1)=ua;

for i=1:n-1
    k = F(t(i),u(i));
    u(i+1)=u(i)+k*h;
end

%plot(t,u,'or') % visualizo os pontos que utilizei pra obter a resposta
%hold on
%grid
%plot(t,u,'--r') % visualizo a curva da fun��o resposta

% tab=[t u] caso eu queira a minha sa�da na forma de tabela

% calculo do erro maximo
% Erro = max(abs(u-f(t)))

end