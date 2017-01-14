// Convierte un numero de punto flotante en formato IEEE-754 de 32 bits a decimal
//function valor = convertir(signo, mantisa, exponente)
// Entrada:
// signo : valor entero 0 ó 1
// mantisa : string de 23 caracteres '0' ó '1'
// exponente: string de 8 caracteres '0' ó '1'
// Salida:
// valor: valor en formato decimal
function valor = convertir(signo, mantisa, exponente)
    if (signo == 0 & mantisa == '00000000000000000000000' & exponente == '11111111') then
        valor = %inf;
    elseif(signo == 1 & mantisa == '00000000000000000000000' & exponente == '11111111') then
        valor = -%inf;
    elseif (signo == 0 & mantisa == '00000000000000000000000' & exponente == '00000000') then
        valor = 0;
    elseif (signo == 1 & mantisa == '00000000000000000000000' & exponente == '00000000') then
        valor = -0;
    elseif (mantisa ~= '00000000000000000000000' & exponente == '11111111') then
        valor = %nan;
    elseif (mantisa ~= '00000000000000000000000' & exponente == '00000000') then
    //EXTRA: If E=0 and F is nonzero, then V=(-1)**S * 2 ** (-126) * (0.F) These are "unnormalized" values.
    // 0 00000000 10000000000000000000000 = +1 * 2**(-126) * 0.1 = 2**(-127) 
    // 0 00000000 00000000000000000000001 = +1 * 2**(-126) * 0.00000000000000000000001 = 2**(-149)  (Smallest positive value)    
        mantisaVec = mstr2sci(mantisa);
        mantisaDec = 0;       
        for i=1:23
            if (mantisaVec(i) ~= '0') then
                mantisaDec = mantisaDec + 2^(-i);
            end
        end   
        valor = ((-1)^signo)*mantisaDec*(2^(-126)); 
    else               
        mantisaVec = mstr2sci(mantisa);
        mantisaDec = 1;
        exponenteDec = bin2dec(exponente);
        for i=1:23
            if (mantisaVec(i) ~= '0') then
                mantisaDec = mantisaDec + 2^(-i);
            end
        end   
        valor = ((-1)^signo)*mantisaDec*(2^(exponenteDec-127));        
    end
endfunction