function y = Vpol( c, x )
% Fun��o que c�lcula polinomio
% c e resultado de Gauss apos aplicar MVander
% x e vetor das abcissas
% retorna imagem de x em y

n = size(c);
y = 0;
for i = 1: n
   y = y .* x +c(i);
end


end

