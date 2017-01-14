// Leyes de Newton de Enfriamiento con Temperatura del Ambiente Constante
// function [T, t] = cambioTemperatura(Tambiente, Tinicial, k, stepsize, tfinal)
// Entrada:
// Tambiente : Temperatura del ambiente en °C
// Tinicial : Temperatura inicial del objeto de interes en °C
// k : constante de proporcionalidad en 0.019/min
// Salida:
// t : tiempo en minutos
// T : temperatura del objeto de interes
function [T, t] = cambioTemperatura(Tambiente, Tinicial, k, stepsize, tfinal)
    T(1) = Tinicial;
    t = 0:stepsize:tfinal;
    for i=1:length(t)-1;
            T(i+1) = T(i) - k*(T(i)-Tambiente)*(t(i+1)-t(i));
    end
//    plot(t,T,'color','red','marker','>');
//    xlabel("t, seg");
//    ylabel("T, °C");
//    set(gca(),"grid",[1 1]);  
endfunction
