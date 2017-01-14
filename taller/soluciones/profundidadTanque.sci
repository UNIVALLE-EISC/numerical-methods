function fx = profundidadTanque(h)
    V = 30;
    R = 3;   
    fx = %pi*(h^2).*((3*R-h)/3) - V;
endfunction
