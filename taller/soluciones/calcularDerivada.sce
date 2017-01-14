// Problema 9
//approximate differentiation
function dy = calcularDerivada(funcion, inicio, stepsize, fin)
t=inicio:stepsize:fin;
y=funcion(t);
dy=diff(y)/stepsize; //approximate differentiation of sine function
//norm(dy-cos(t(1:$-1)),%inf)    
endfunction

//function y = funcion(x)
//    y = sin(x);
//endfunction

//calcularDerivada(funcion, 0, 0.001, 10)


