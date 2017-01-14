//Serie de Maclaurin de la serie geométrica
//function [et, ea, aprox] = funcionTangenteMaclaurin(x, iter)
//Entrada:
//x : valor en que la serie sera evaluada
//iter : cantidad de terminos de la serie
//Salida:
//et : vector de errores relativos
//ea : vector de errores aproximados
//aprox : vector con valores aproximado de la serie
function [et, ea, aprox] = funcionTangenteMaclaurin(x, iter)
//aprox = 0;
//aprox_ant = 0;
//verdad = tan(x);
//B = [1/6 -1/30 1/42 -1/30 5/66 -691/2730 7/6 -3617/510 43867/798 -174611/330];
//for i = 1:iter
//        aprox_ant = aprox;
//        aprox = aprox + ((B(i)*(-4)^i*(1-4^i))/factorial(2*i))*x^(2*i-1); 
//        et = ((verdad - aprox)/verdad)*100;
//        ea = ((aprox - aprox_ant)/aprox)*100;
//end    
//////////////////////
//aprox_ant = 0;
verdad = tan(x);
B = [1/6 -1/30 1/42 -1/30 5/66 -691/2730 7/6 -3617/510 43867/798 -174611/330];
aprox(1) = ((B(1)*(-4)^1*(1-4^1))/factorial(2*1))*x^(2*1-1);
ea(1) = %nan;
et(1) = ((verdad - aprox(1))/verdad)*100;
for i = 2:iter
        aprox(i) = aprox(i-1) + ((B(i)*(-4)^i*(1-4^i))/factorial(2*i))*x^(2*i-1); 
        et(i) = ((verdad - aprox(i))/verdad)*100;
        ea(i) = ((aprox(i) - aprox(i-1))/aprox(i))*100;
end    
endfunction