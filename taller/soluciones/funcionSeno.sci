// format(10)
function [y, t] = funcionSeno(tinicio, intervalo, tfin)
    t = tinicio:intervalo:tfin;    
    y = sin(t);
//    plot(t,y,'color','red','marker','>');
//    xlabel("t, seg");
//    ylabel("y, amplitud");
//    set(gca(),"grid",[1 1]);  
endfunction