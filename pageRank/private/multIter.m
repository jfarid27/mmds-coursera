function result = multIter(V, M, iterations)

  if (iterations <= 0)
    result = V;
    return
  endif

  result = multIter(M*V, M, iterations-1);
  return

endfunction
