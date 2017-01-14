function [signo,mantisa,exponente] = convertirIEEE(valor)
    // inicializacion
    //mode(0)
    signo = %nan;
    mantisa = '';
    exponente = 0;

    // obteniendo el signo
    if valor<0 then
        signo = '1';
    else 
        signo = '0';
    end

    // obteniendo el exponente
    valor = abs(valor);
    while(valor>=2)
        valor = valor/2;
        exponente = exponente + 1;
    end
    exponente = exponente + 127;
    exponente = dec2bin(exponente,8);

    // obteniendo la mantisa
    valor = valor - 1;
 
    for i=1:23
        if (valor == 1) then
            mantisa = mantisa + '0';
        elseif (valor ~= 1) then
            valor = valor*2;
            if (valor < 1) then
                mantisa = mantisa + '0';
            else              
                valor = valor - 1;
                mantisa = mantisa + '1';
            end
        end
    end    
endfunction
