function rankings = pageRank(transitionMatrix, beta)
#{

  (Matrix [, Number]) => Matrix
    Computes pageRank matrix for given matrix M. Optional
    b to compute the full Google matrix. Requires stochastic
    matrix m for calculation of principal eigenvalue's
    eigenvector. If matrix is substochastic, use call with beta
    parameter

#}

  if(nargin == 0)
  #If there is no transitionMatrix
    error("Not enough input arguments")  
  endif

  if(size(transitionMatrix)(1) != size(transitionMatrix)(2))
  #If matrix is not square
    error("Not input matrix is not square")  
  endif

  if(nargin == 2)
  #If the user wants google matrix

    initialVector = (1/size(transitionMatrix)(1)).*ones(size(transitionMatrix)(1), 1);
    rankings = taxationIter(initialVector, transitionMatrix, beta, 50);
    return;

  endif

  #If the user wants basic principal eigenvalue calculation

  initialVector = (1/size(transitionMatrix)(1)).*ones(size(transitionMatrix)(1), 1);
  rankings = multIter(initialVector, transitionMatrix, 50);
  return;
endfunction
