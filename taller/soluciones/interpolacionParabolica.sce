function [x4, ea, niter] = interpolacionParabolica(funcion, x1, x2, x3, eads, maxit)
// Escriba su código aquí.
niter = maxit;
i = 1;
x4 = x2
while(i <= maxit)
        fx1 = funcion(x1);
        fx2 = funcion(x2);
        fx3 = funcion(x3); 
        x4_old = x4;      
        x4 = x2 - (1/2)*(((x2-x1)^2*(fx2-fx3)-(x2-x3)^2*(fx2-fx1))/((x2-x1)*(fx2-fx3)-(x2-x3)*(fx2-fx1)))    
        fx4 = funcion(x4);      
        if (x4 > x2) then // Si x4 esta entre x2 y x3
            x1 = x2;
            x2 = x4;
        else // (x4 < x2) // Si x4 esta entre x1 y x2
            x3 = x2; // Tener en cuenta el orden para no borrar el datos x2
            x2 = x4;       
        end
        ea = abs((x4 - x4_old)/x4)*100;   
        if ea<eads then
            niter = i;
            break;
        end
        i = i+1;
end
endfunction
