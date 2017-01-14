//clear all;
// Soluciones Capitulo 12
// Ejercicio 12.9 (modificado)
function [J,f]=jacob(u, v, w, x)
    del=0.000001;
    df1dx1=(u(x(1)+del*x(1),x(2),x(3))-u(x(1),x(2),x(3)))/(del*x(1));
    df1dx2=(u(x(1),x(2)+del*x(2),x(3))-u(x(1),x(2),x(3)))/(del*x(2));
    df1dx3=(u(x(1),x(2),x(3)+del*x(3))-u(x(1),x(2),x(3)))/(del*x(3));
    df2dx1=(v(x(1)+del*x(1),x(2),x(3))-v(x(1),x(2),x(3)))/(del*x(1));
    df2dx2=(v(x(1),x(2)+del*x(2),x(3))-v(x(1),x(2),x(3)))/(del*x(2));
    df2dx3=(v(x(1),x(2),x(3)+del*x(3))-v(x(1),x(2),x(3)))/(del*x(3));
    df3dx1=(w(x(1)+del*x(1),x(2),x(3))-w(x(1),x(2),x(3)))/(del*x(1));
    df3dx2=(w(x(1),x(2)+del*x(2),x(3))-w(x(1),x(2),x(3)))/(del*x(2));
    df3dx3=(w(x(1),x(2),x(3)+del*x(3))-w(x(1),x(2),x(3)))/(del*x(3));
    J=[df1dx1 df1dx2 df1dx3;df2dx1 df2dx2 df2dx3;df3dx1 df3dx2 df3dx3];
    f1=u(x(1),x(2),x(3));
    f2=v(x(1),x(2),x(3));
    f3=w(x(1),x(2),x(3));
    f=[f1;f2;f3];
endfunction
function [x,f,ea,iter]=NewtonRaphson2(u, v, w, x0, es, maxit)
//newtmult: Newton-Raphson root zeroes nonlinear systems
//[x,f,ea,iter]=newtmult(func,x0,es,maxit,p1,p2,...):
//uses the Newton-Raphson method to find the roots of
//a system of nonlinear equations
//input:
//func = name of function that returns f and J
//x0 = initial guess
//es = desired percent relative error (default = 0.0001%)
//maxit = maximum allowable iterations (default = 50)
//p1,p2,... = additional parameters used by function
//output:
//x = vector of roots
//f = vector of functions evaluated at roots
//ea = approximate percent relative error (%)
//iter = number of iterations
    iter = 0;
    x=x0;
    while (1)
        [J,f]=jacob(u, v, w, x);
        dx=J\f;
        x=x-dx;
        iter = iter + 1;
        ea=100*max(abs(dx./x));
        if iter>=maxit | ea<=es, break,
        end
    end
endfunction
//// Ecuacion 1
//function f=u(x,y,z)
//f = 3*x-cos(y*z)-1/2;
//endfunction
//// Ecuacion 2
//function f=v(x,y,z)
//f = x^2-81*(y+0.1)^2+sin(z)+1.06;
//endfunction
//// Ecuacion 3
//function f=w(x,y,z)
//f = exp(-x*y)+20*z+(10*%pi-3)/3;
//endfunction
//
//// Resultados
//x0 = [1.5 1.5 1.5]';
//[x,f,ea,iter]=NewtonRaphson(u, v, w, x0, 0.0001, 50)
