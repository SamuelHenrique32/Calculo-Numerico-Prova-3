function Q = IntSplineCub( x, y )
%   Pode utilizar sem conhecer funcao

C = CoefSpline3( x, y );
n = length(x);
a = C(:,1);
b = C(:,2);
c = C(:,3);
d = C(:,4);

for i = 1:n-1
    h(i) = x(i+1)-x(i);
    QS(i) = a(i)*h(i)^4/4 + b(i)*h(i)^3/3 + c(i)*h(i)^2/2 + d(i)*h(i);
end
Q = sum(QS);

end