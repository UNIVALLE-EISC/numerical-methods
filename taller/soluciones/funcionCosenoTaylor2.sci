//Serie de Maclaurin de la funcion coseno
//function [et, ea, aprox] = funcionCosenoTaylor2(x, iter)
//input:
//x : valor en que la serie sera evaluada
//iter : cantidad de terminos de la serie
//output:
//et : error verdadero
//ea : error aproximado
//aprox : valor aproximado de la serie
function [et, ea, aprox,niter] = funcionCosenoTaylor2(x, eads, maxit)
    niter = maxit;
    verdad = cos(x);
    aprox(1) = 1;
    et(1) = ((verdad - aprox(1))/verdad)*100;
    ea(1) = %nan;
    i = 1;
    while (i <= maxit)
        aprox(i+1) = aprox(i) + (((-1)^(i))*(x^(2*(i))))/factorial(2*(i))
        et(i+1) = abs(((verdad - aprox(i+1))/verdad)*100)
        ea(i+1) = abs(((aprox(i+1) - aprox(i))/aprox(i+1))*100)
        if ea(i+1)<eads then
            niter = i;
            break;
        end
        i = i+1;
    end
//    for i = 2:iter
//        aprox(i) = aprox(i-1) + (((-1)^(i-1))*(x^(2*(i-1))))/factorial(2*(i-1))
//        et(i) = ((verdad - aprox(i))/verdad)*100
//        ea(i) = ((aprox(i) - aprox(i-1))/aprox(i))*100
//    end
endfunction
