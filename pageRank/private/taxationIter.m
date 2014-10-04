function result = taxationIter(V, M, beta, iterations)

  if (iterations <= 0)
    result = V;
    return
  endif

  vecP = ( (beta).*(M*V))  + ( ((1-beta)*(1/size(M)(1))).*ones(size(M)(1), 1) );

  result = taxationIter(vecP, M, beta, iterations-1);
  return

endfunction
