function v = obtenerVelocidad(t)
    if (t >= 0 & t <= 8) then
        v = 10*t^2 - 5*t;
    elseif (t > 8 & t <= 16) then
        v = 624 - 3*t;
    elseif (t > 16 & t <= 26) then
        v = 36*t + 12*(t - 16)^2;
    elseif  (t > 26) then
        v = 2136*exp(-0.1*(t-26));
    else
        v = 0;
    end
endfunction
