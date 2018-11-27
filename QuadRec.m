function [ Q, Erel, k ] = QuadRec(f, a, c, b, fa, fc, fb, k, tol, kmax)
% necessario para QuadNCAdapt

% INICIALIZACAO

k = k + 1;
d = (a + c)/2;
e = (c + b)/2;
fd = f(d);
fe = f(e);

%ESTIMATIVAS

Q(1,2) = ((b-a)/6)*(fa + 4*fc + fb);
Q(2,2) = ((b-a)/12)*(fa + 4*fd + 2*fc + 4*fe + fb);

Erel = ErroRel(Q(1,2), Q(2,2));

if (abs(Erel)<= tol && k >= 3) || k >=kmax
    Q = Q(2,2) + (Q(2,2) - Q(1,2))/15;
else
  % RECURSAO
  [Qe, Erele, ke] = QuadRec(f, a, d, c, fa, fd, fc, k, tol, kmax);
  [Qd, Ereld, kd] = QuadRec(f, c, e, b, fc, fe, fb, k, tol, kmax);
  Q = Qe + Qd;
  Erel = (Erele * Qe + Ereld * Qd)/ (Qe + Qd);
  k = max(ke, kd);
    
end