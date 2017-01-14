//Serie de Maclaurin de la funcion logaritmo natural
//function [et, ea, aprox] = funcionLnMaclaurin(x, iter)
//Entrada:
//x : valor en que la serie sera evaluada
//iter : cantidad de terminos de la serie
//Salida:
//et : vector de errores relativos
//ea : vector de errores aproximados
//aprox : vector con valores aproximados de la serie
function [et, ea, aprox] = funcionLnMaclaurin(x, iter)
    verdad = log(1+x);
    aprox(1) = x;
    et(1) = ((verdad - aprox(1))/verdad)*100;
    ea(1) = %nan;
    for i = 2:iter
        aprox(i) = aprox(i-1) + ((-1)^(i+1))*((x^i)/i);
        et(i) = ((verdad - aprox(i))/verdad)*100;
        ea(i) = ((aprox(i) - aprox(i-1))/aprox(i))*100;
    end
endfunction
