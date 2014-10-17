function network = AGM(CAG, threshold)

#{

  CommunityDetectionMatrix[, Number] => GraphMatrix

    - Function takes community affiliation graph with rows
      representing nodes and columns representing community
      membership strength and returns graph with row/column
      indecies representing node indecies and values
      representing edge strength. Optional threshold returns
      matrix with edge strength only greater than threshold.

#}
  

  numberOfNodes = size(CAG)(1);
  numberOfCommunities = size(CAG)(2);

  prenetwork = zeros(numberOfNodes, numberOfNodes);

  complement = ones(numberOfNodes, numberOfCommunities) - CAG;

  for i = 1:(numberOfNodes-1)

    for j = (i+1):numberOfNodes

      intersection = (CAG(i,:) .* CAG(j,:)) > 0;

      if (any(intersection))
        valuesI = complement(i,:) .* intersection;
        valuesJ = complement(j,:) .* intersection;
        prenetwork(i, j) = 1 - (prod(valuesI) * prod(valuesJ));

      endif
      

    endfor

  endfor

  if (argn == 2)

    network = (prenetwork > threshold) .* prenetwork;
    return 

  endif

  network = prenetwork;
  return

endfunction
