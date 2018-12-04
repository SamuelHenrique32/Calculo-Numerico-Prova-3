function [ Erel ] = ErroRelVet( u,v )
% função usada para calcular o Erro Relativo entre vetores (u e v = vetores)
% função usada para calcular o Erro Relativo para métodos iterativos

if norm(v) == 0
    Erel = norm(u);
    
else
Erel = norm(u-v)/norm(v);

end

