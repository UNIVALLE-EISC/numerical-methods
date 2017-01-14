// Estimación de la descomposición de un contaminante en un reactor
// function [c, t] = descomposicion(Cinicial, k, stepsize, tfinal)
// Entrada:
// Cinicial : Concentracion inicial del material radioactivo
// k : constante de proporcionalidad 
// Salida:
// t : vector de tiempo en minutos
// c : vector concentracion del material radioactivo
function [c, t] = descomposicion(Cinicial, k, stepsize, tfinal)
    c(1) = Cinicial;
    t = 0:stepsize:tfinal;
    for i=1:length(t)-1;
            c(i+1) = c(i) - k*(c(i))*(t(i+1)-t(i));
    end
endfunction
