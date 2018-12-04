function [ Erel ] = ErroRelVet( u,v )
% fun��o usada para calcular o Erro Relativo entre vetores (u e v = vetores)
% fun��o usada para calcular o Erro Relativo para m�todos iterativos

if norm(v) == 0
    Erel = norm(u);
    
else
Erel = norm(u-v)/norm(v);

end

