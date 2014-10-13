function clusters = l1NormClust(pointMatrix, centroidMatrix)


  for(i = 1:size(pointMatrix)(1))

    winner = Inf(1, 2);
    winnerDist = Inf;

    for (j = 1:size(centroidMatrix)(1))

      distance = l1NormDist( pointMatrix(i,:) , centroidMatrix(j,:) );
      
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
