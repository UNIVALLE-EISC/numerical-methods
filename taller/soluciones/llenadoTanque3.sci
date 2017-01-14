// Estimacion de estado de llenado de un tanque cónico
// function [y,t] = llenadoTanque3(rtop, ytop, yout, stepsize, tfinal)
// Entrada:
// Q : flujo de entrada en m^3/s
// A : area de la superficie en m^2
// Salida:
// t : vector tiempo en segundos
// y : vector profundidad
function [y,t] = llenadoTanque3(rtop, ytop, yout, stepsize, tfinal)
y(1) = 0.8;
t = 0:stepsize:tfinal;
for i = 1:(tfinal/stepsize)
    r = y(i)*(rtop/ytop);
    if (y(i) > yout ) then
        y(i+1) = y(i)+((3*sin(t(i))^2-3*(y(i)-yout)^(1.5))/((1/3)*%pi*r^3))*(t(i+1)-t(i));
    else
        y(i+1) = y(i) + ((3*sin(t(i))^2)/((1/3)*%pi*r^3))*(t(i+1)-t(i));
    end
end
endfunction
