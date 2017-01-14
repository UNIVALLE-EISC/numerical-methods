function fx = anguloProyectil(theta0)
    v0 = 30;
    g = 9.81;
    x = 90;
    y0 = 1.8;
    y = 1;
    fx = tan(theta0)*x-(g./(2*(v0^2)*(cos(theta0))^2))*x^2+y0-y;
endfunction
