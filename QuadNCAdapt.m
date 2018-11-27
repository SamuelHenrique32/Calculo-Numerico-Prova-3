function [ Q, Erel, k ] = QuadNCAdapt( f, a, c, b, tol, kmax )
% O metodo e reaplicado recursivamente aos subintervalos [a, c] e [c, b].
% Newton-Cotes adaptavel

% INICIALIZACAO
k = 0;
c = (a+b)/2;
fa = f(a);
fc = f(c);
fb = f(b);

% Chamada inicial da funcao recursiva

[Q, Erel, k] = QuadRec(f, a, c, b, fa, fc, fb, k, tol, kmax);

end