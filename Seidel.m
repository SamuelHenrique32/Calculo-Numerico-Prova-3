function [x, ERel, k] = Seidel(A, b, tol, kmax)
%SEIDEL calcula aproximacao para solucao do sistema Ax = b quadrado e SPD
%   pelo metodo iterativo de Gauss-Seidel
%   aplica formula recursiva x = Cx + d, calculando c(i) termo a termo.
%   Converge se soma dos elementos da diagonal principal for maior que a soma dos demais


[n,~] = size(A);
C = zeros(n);
d = zeros(n,1);
for i=1:n    
    d(i) = b(i)/A(i,i);
    for j=1:n
        if i~=j
            C(i,j) = -A(i,j)/A(i,i);
        end
    end
end

%processo iterativo

x = ones(n,1);                % vetor inicializador
k = 1;
ERel = inf;

while ERel>=tol && k<kmax
    xant = x;
    for i=1:n
        x(i) = C(i,:)*x + d(i);
    end
    k = k+1;
    ERel = norm(x-xant)/norm(x);
end

end

