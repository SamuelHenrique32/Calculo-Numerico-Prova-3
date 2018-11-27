function [C] = escalonamento(C)
%ESCALONAMENTO fornece a forma escalonada de C através de operações
%elementares

[n,~] = size(C);

for j = 1:n-1
    [C]= pivotamentoParcial (C, n, j);
    for i= j+1:n
        C(i,:) = C(i,:) - C (i,j)/C(j,j) * C(j,:);
    end
end
end