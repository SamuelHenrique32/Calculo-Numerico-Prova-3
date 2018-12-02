function [ Q ] = NewtonCotesComposto( f, a, b, m, n )
%M�todo de Newton Cotes Composto
%   Calcula a quadratura de Newton Cotes de ordem n, ou seja, aproxima a
%   integral da f(x), no intervalo[a, b] atrav�s de um polin�mio
%   interpolador de grau n. Divide o intervalo de �rea e calcula a
%   quadratura de cada intervalo m de tamanho H.
%   Q(n,m)
%   ponto medio (retangulo ordem 0), trapezio (ordem 1)
%   1� de Simpson (ordem 2), 2� de Simpson (ordem 3)
%   Boole (ordem 4)

H  = (b-a)/m;

for i = 1:m
    b = a + H;
    Q(i) = NewtonCotes( f, a, b, n );
    a = b;
end

Q = sum(Q);

end