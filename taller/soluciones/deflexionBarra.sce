function [y] = deflexionBarra(x)
    w0 = 2.5;
    E = 50000;
    I = 30000;
    L = 600;
    y = (w0/(120*E*I*L))*(-x.^5+2*L^2*x.^3-L^4*x);
endfunction
