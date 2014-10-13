function clusters = l2NormClust(pointMatrix, centroidMatrix)


  for(i = 1:size(pointMatrix)(1))

    winner = Infinity(1, 2);
    winnerDist = Inf;

    for (j = 1:size(centroidMatrix)(1))

      distance = l2NormDist(pointMatrix(i, :), centroidMatrix(j, :) < winnerDist;
      
      if (distance < winnerDist)

        winner = centroidMatrix(j, :);
        winnerDist = distance;

      endif


    endfor

    pointMatrix(i, :) = winner; 

  endfor

  clusters = pointMatrix;

  return;


endfunction
