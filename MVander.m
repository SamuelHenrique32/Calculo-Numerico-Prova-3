function X = MVander( x, m )
% Interpolação com método Vandermonde, utilizado para:
%n = length(x);
%X = MVander(x, n-1);
%c = Gauss(X,y)
% p = matlabFunction(poly2sym(c)) - para manipular funcao
% m e grau -1

n = length(x);

X = zeros(n, m-1);

for i=1:n
    X(i, m+1) = 1;
    for j=m:-1:1
        X(i,j) = x(i)*X(i, j+1);
    end
end
end

