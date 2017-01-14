function fx = tiempoCohete(t)
    u = 1800;
    m0 = 160000;
    q = 2600;
    g = 9.81;
    v = 750;
    fx = u*log((m0)./(m0-q*t))-(g*t) - v;
endfunction
