// Estimacion de estado de llenado de un tanque
// function [y,t] = llenadoTanque2(Q, A, alfa, stepsize, tfinal)
// Entrada:
// Q : flujo de entrada en m^3/s
// A : area de la superficie en m^2
// alfa: constante que relaciona la profundidad del tanque con el flujo de salida
// Salida:
// t : vector tiempo en segundos
// y : vector profundidad
function [y,t] = llenadoTanque2(Q, A, alfa, stepsize, tfinal)
    y(1) = 0;
    t = 0:stepsize:tfinal;
    for i=1:length(t)-1;
    y(i+1) = y(i) + (3*(Q/A)*sin(t(i))*sin(t(i))-(alfa*(1+y(i))^1.5)/A)*(t(i+1)-t(i));
    end
endfunction
