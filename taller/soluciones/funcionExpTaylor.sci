//Serie de Maclaurin de la funcion exponencial
//function [et, ea, aprox] = funcionExpTaylor(x, iter)
//input:
//x : valor en que la serie sera evaluada
//iter : cantidad de terminos de la serie
//output:
//et : error verdadero
//ea : error aproximado
//aprox : valor aproximado de la serie
function [et, ea, aprox] = funcionExpTaylor(x, iter)
    verdad = exp(x);
    aprox(1) = 1;
    et(1) = ((verdad - aprox(1))/verdad)*100;
    ea(1) = %nan;
    for i = 1:iter-1
        aprox(i+1) = aprox(i) + (x^(i))/factorial((i));
        et(i+1) = ((verdad - aprox(i+1))/verdad)*100;
        ea(i+1) = ((aprox(i+1) - aprox(i))/aprox(i+1))*100;
    end
endfunction
