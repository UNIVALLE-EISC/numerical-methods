function matrizR = obtenerInversa(matrizA)
    if ( size(matrizA,1) == size(matrizA,2) ) then
        if ( det(matrizA) ~= 0 ) then
            matrizR = inv(matrizA);
        else
            matrizR = %nan;
        end
    else
        matrizR = pinv(matrizA);
    end
endfunction
