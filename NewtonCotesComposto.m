function [ Q ] = NewtonCotesComposto( f, a, b, m, n )
%M�todo de Newton Cotes Composto
%   Calcula a quadratura de Newton Cotes de ordem n, ou seja, aproxima a
%   integral da f(x), no intervalo[a, b] atrav�s de um polin�mio
%   interpolador de grau n. Divide o intervalo de �rea e calcula a
%   quadratura de cada intervalo m.
%   Q(n,m)

H  = (b-a)/m;

for i = 1:m
    b = a + H;
    Q(i) = NewtonCotes( f, a, b, n );
    a = b;
end

Q = sum(Q);

end