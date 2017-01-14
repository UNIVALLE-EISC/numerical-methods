function Purb = funcion1(t)
    //mode(0)
    Purmax = 80000;
    Purmin = 110000;
    ku = 0.05;
    Purb = Purmax*exp(-ku*t)+Purmin;
endfunction

function Psub = funcion2(t)
    //mode(0)
    Psmax = 320000;
    P0 = 10000
    ks = 0.09;
    Psub = Psmax./(1+(Psmax/P0-1)*exp(-ks*t))
endfunction

function fx = tiempoPoblacion(t)
    fx = funcion2(t) - funcion1(t) - 0.2*funcion1(t)
endfunction
