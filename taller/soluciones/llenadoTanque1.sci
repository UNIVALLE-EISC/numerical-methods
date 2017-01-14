// Estimacion de estado de llenado de un tanque
// function [y,t] = llenadoTanque1(Q, A, stepsize, tfinal)
// Entrada:
// Q : flujo de entrada en m^3/d
// A : area de la superficie en m^2
// Salida:
// t : tiempo en d (¿segundos?)
// y : profundidad, si y=0 el tanque esta lleno
function [y,t] = llenadoTanque1(Q, A, stepsize, tfinal)
    y(1) = 0;
    t = 0:stepsize:tfinal;
    for i=1:length(t)-1;
            y(i+1) = y(i) + (3*(Q/A)*sin(t(i))*sin(t(i))-(Q/A))*(t(i+1)-t(i));
    end    
//    plot(t,y,'color','red','marker','>');
//    xlabel("t, seg");
//    ylabel("y, cm");
//    set(gca(),"grid",[1 1]);  
endfunction
