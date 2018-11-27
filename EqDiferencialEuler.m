function [t,u] = EqDiferencialEuler(F,a,b,ua,h)
% ENTRADAS:
% F --> função definida por @ (ex: F = @(t,u) 1+t-2*u)
% a e b são os extremos do intervalo t
% ua = u(0) (valor de u quando t é 0)
% h --> passo / distância entre os valores de t (ex: t=0.05)
% SAÍDAS:
% t e u --> coordenadas dos pontos que passam pela função solução

n=(b-a)/h;
t=(a:h:b)';
u=zeros(n+1,1);
u(1)=ua;

for i=1:n
    u(i+1)=u(i)+F(t(i),u(i))*h;
end

plot(t,u,'or') % visualizo os pontos que utilizei pra obter a resposta
hold on
grid
plot(t,u,'--r') % visualizo a curva da função resposta

% tab=[t u] caso eu queira a minha saída na forma de tabela

end