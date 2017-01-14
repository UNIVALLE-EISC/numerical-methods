function [xu, xl, xr, ea, niter] = falsaposicion2(funcion, xl, xu, eads, maxit)
    niter = 1;
    xr = xl;
    while(1)
        xrold = xr;
        fxl = funcion(xl); 
        fxu = funcion(xu);     
        xr = xu - fxu*(xl - xu)/(fxl-fxu);
        ea = abs((xr - xrold)/xr)*100;           
        fxr = funcion(xr);            
        if (fxl*fxr < 0) then
           xu = xr;
        else
           xl = xr;
        end 
        if (ea < eads | niter >= maxit) then
            break;
        end
        niter = niter+1;
    end
endfunction
