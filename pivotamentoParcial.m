function C = pivotamentoParcial (C, n, j)
  p = abs(C(j,j));
  k = j;
  for i=j+1 : n
    if(abs(C(i,j)) > p)
      p = abs(C(i,j));
      k = i;
    end
  end

  if(p == 0)
    display('Pivotamento impossivel');
    return;
  end

  if(k>j)
    T = C(j, :);  
    C(j, :) = C(k, :);
    C(k, :) = T;
  end
end