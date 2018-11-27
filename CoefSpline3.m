function C = CoefSpline3( x, y )
%O algoritmo COEFSPLINE3 determina os coeficientes
% do spline cubico (natural) interpolador a partir do
% conjunto de nodos x e y.
% todas linhas menos a ultima geram splines da forma
%  C(1,1)*(x-x1)^3 + C(1,2)*(x-x1)^2 + C(1,3)*(x-x1) + C(1,4) 
  

% Determinação de h e p.
n = length(x);
h = zeros(n-1, 1);
p = zeros(n-1, 1);

for k = 1:n-1
    h(k) = x(k+1) - x(k);
    p(k) = (y(k+1)-y(k))/h(k);
end

% Determinação de H, P e m.

H = zeros(n, n);
P = zeros(n, 1);

H(1, 1) = 1;
P(1) = 0;

for k = 2:n-1
    H(k, k-1) = h(k-1);
    H(k, k) = 2*(h(k-1)+h(k));
    H(k, k+1) = h(k);
    P(k) = 6*(p(k)-p(k-1));
end

H(n, n) = 1;
P(n) = 0;

[m, ~, ~] = Seidel(H, P, 0.5e-12, 100);

% Determinação do Coeficientes

C = zeros(n-1, 4);

for k = 1:n-1
    C(k,1) =(m(k+1)-m(k))/(6*h(k));
    C(k,2) = m(k)/2;
    C(k,3) = p(k) - ((2*m(k)+ m(k+1))*h(k))/6;
    C(k,4) = y(k);
end



end

