function [ c, v ] = IVander( x, y, u )
% Interpolacao Vandermonde
% u é u=min(x):0.01:max(x);

%plot(x, y, '*')

n = length(x);
X = MVander(x, n-1);
c = Gauss(X,y);
% p = matlabFunction(poly2sym(c)) - para manipular funcao

v = Vpol(c,u);

end

