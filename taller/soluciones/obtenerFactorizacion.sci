function matrizU = obtenerFactorizacion(matrizA)
    if ( sum(abs(matrizA - matrizA')) == 0 ) then
        matrizU = chol(matrizA);    
    else
        matrizU = %nan;
    end
endfunction