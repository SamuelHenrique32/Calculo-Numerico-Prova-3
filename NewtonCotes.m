function [ Q ] = NewtonCotes( f, a, b, n )
% Método de Newton Cotes
%   Calcula a quadratura de Newton Cotes de ordem n, ou seja, aproxima a
%   integral da f(x), no intervalo[a, b] através de um polinômio
%   interpolador de grau n.
%   w sao pesos de integracao
%   ordem de 0 a 4

if n == 0
    w0 = 1;
elseif n == 1
    w = [1/2 1/2]';
elseif n == 2
    w = [1/6 4/6 1/6]';
elseif n == 3
    w = [1/8 3/8 3/8 1/8]';
elseif n == 4
    w = [7/90 32/90 12/90 32/90 7/90]';
else
    disp('Valor de n Inválido!')
    return
end

% Calculo da Quadratura

if n == 0
    x0 = (a+b)/2;
    Q = (b-a)*w0*f(x0);
else
    h = (b-a)/n;
    x = [a:h:b]';
    Q = (b-a)*sum(w.*f(x));
end



end

