//Serie de Maclaurin de la serie geométrica
//function [et, ea, aprox] = funcionSgMaclaurin(x, iter)
//Entrada:
//x : valor en que la serie sera evaluada
//iter : cantidad de terminos de la serie
//Salida:
//et : vector de errores relativos
//ea : vector de errores aproximados
//aprox : vector con valores aproximado de la serie
function [et, ea, aprox] = funcionSgMaclaurin(x, iter)
    verdad = 1/(1-x);
    aprox(1) = 1;
    et(1) = ((verdad - aprox(1))/verdad)*100;
    ea(1) = %nan;
    for i = 1:iter-1
        aprox(i+1) = aprox(i) + (x^(i));
        et(i+1) = ((verdad - aprox(i+1))/verdad)*100;
        ea(i+1) = ((aprox(i+1) - aprox(i))/aprox(i+1))*100;
    end
endfunction
