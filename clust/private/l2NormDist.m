function distance = l2NormDist(v1, v2)

    distance = sum((v1 - v2).*(v1-v2)).*(1/2);
    return

endfunction
