function norma = obtenerNorma(vectora, vectorb, p)
    if ( size(vectora) == size(vectorb) ) then
        vectordif = vectora - vectorb;
        norma = norm(vectordif, p);
    else
        norma = %nan;
    end
endfunction