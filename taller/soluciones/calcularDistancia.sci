function distancia = calcularDistancia(a, b)
    distancia = 0;
    la = size(a,2);
    lb = size(b,2);
    if (la ~= lb) then
        distancia = %nan;
    else
        distancia = sqrt(sum((a-b).^2));
    end
    return distancia;
endfunction
