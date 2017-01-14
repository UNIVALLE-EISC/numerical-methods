// function [x, y] = obtenerSolucion(valorInicial, stepsize, xfinal) 
// Entrada: 
// valor inicial
// stepsize: Tamaño de los pasos
// xfinal: valor de tiempo final
// Salida: 
// x: vector fila de valores de la variable independiente
// y : vector columna de valores de la variable dependiente
function [x, y] = obtenerSolucion(valorInicial, stepsize, xfinal)
    y(1) = 4;
    x =valorInicial:stepsize:xfinal
    for i = 1:length(x)-1
        y(i+1) = y(i)+(sqrt(y(i))/(2*x(i)+1))*(x(i+1)-x(i))
    end
endfunction
