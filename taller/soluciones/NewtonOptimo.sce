//Pagina 361 - Numerical methods Chapra 6 Edition
function [xrold, xr, ea, niter] = NewtonOptimo(funcion, pt, xr, eads, maxit)
// Escriba su código aquí.
//mode(0);
niter = maxit;
i = 1;
while(i <= maxit)
        xrold = xr;               
        fxr = funcion(xr);
        fxrpt_s = funcion(xr+pt*xr);
        fxrpt_r = funcion(xr-pt*xr);
        fxr_derv1 = (fxrpt_s - fxrpt_r)./(2*pt*xr);
        fxr_derv2 = (fxrpt_s-2*fxr + fxrpt_r)./((pt*xr)^2);
        xr = xr - (fxr_derv1)./(fxr_derv2);      
        ea = abs((xr - xrold)/xr)*100; 
        if ea<eads then
            niter = i;
            break;
        end
        i = i+1;
end
endfunction
