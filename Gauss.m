function [x] = Gauss(A,b)
%GAUSS resolve um sistema quadrado SPD pelo método de eliminacao de Gauss
%duas etapas: escalonamento e retrosubstituicao

C = [A b];
[lin,col] = size(A);
if lin == col
    C = escalonamento(C);
    n = lin;
    x = zeros(n,1);
    for i = n:-1:1
        x(i) = (C(i,n+1) - C(i,1:n) * x)/C(i,i);
    end
end    
end

