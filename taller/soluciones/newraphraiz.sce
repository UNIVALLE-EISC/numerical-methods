function [xrold, xr, ea, niter] = newraphraiz(funcion, dfuncion, xr, eads, maxit)  
    niter = 1;
    while(1)
        xrold = xr
        fxr = funcion(xr)
        dfxr = dfuncion(xr)
        xr = xr - fxr/dfxr;
        ea = abs((xr - xrold)/xr)*100;        
        if (ea < eads | niter >= maxit) then
            break;
        end
        niter = niter + 1;
    end
endfunction
