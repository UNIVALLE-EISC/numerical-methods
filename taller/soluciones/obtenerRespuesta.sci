function [vectorx, condicion] = obtenerRespuesta(matrizA, vectorb)
    if (size(vectorb,1) == size(matrizA,1)) then
        vectorx = matrizA\vectorb;
        condicion = cond(matrizA);
    else 
        vectorx = %nan;
        condicion = %nan;
    end
endfunction
