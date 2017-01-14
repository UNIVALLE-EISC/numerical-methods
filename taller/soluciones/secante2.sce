function [xrold, xr, ea, niter] = secante2(funcion, pt, xr, eads, maxit)
    niter = 1;
    while (1)  
        xrold = xr        
        fxr = funcion(xr)
        fxrpt = funcion(xr+pt*xr)        
        xr = xr - (pt*xr*fxr)/(fxrpt - fxr);
        ea = abs((xr - xrold)/xr)*100; 
        if (ea < eads | niter >= maxit) then
            break;
        end
        niter = niter + 1;
    end
endfunction
