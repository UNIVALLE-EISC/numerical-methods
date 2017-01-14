// Problema 3

function [J,f]=jacob(u, v, x)
    del=0.000001;
    df1dx1=(u(x(1)+del*x(1),x(2))-u(x(1),x(2)))/(del*x(1));
    df1dx2=(u(x(1),x(2)+del*x(2))-u(x(1),x(2)))/(del*x(2));
    df2dx1=(v(x(1)+del*x(1),x(2))-v(x(1),x(2)))/(del*x(1));
    df2dx2=(v(x(1),x(2)+del*x(2))-v(x(1),x(2)))/(del*x(2));
    J=[df1dx1 df1dx2;df2dx1 df2dx2];
    f1=u(x(1),x(2));
    f2=v(x(1),x(2));
    f=[f1;f2];
endfunction

function [x,f,ea,iter]=NewtonRaphson1(u, v, x0, es, maxit)
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
        [J,f]=jacob(u, v, x);
        dx=J\f;
        x=x-dx;
        iter = iter + 1;
        ea=100*max(abs(dx./x));
        if iter>=maxit | ea<=es, break,
    end
end
endfunction 

//////////////////////////////////////////////////////////

//function f=u(x,y)
//    f = x^2 - 5 + y^2;
//endfunction
//
//// Ecuacion 2
//function f=v(x,y)
//    f = y + 1 - x^2;
//endfunction
//
//x0 = [1.5 1.5]';
//[x,f,ea,iter]=NewtonRaphson(u, v, x0, 0.0001, 50)

/////////////////////////////////////////////////////////

//function f=u(x,y)
//    f = y + x^2 - x - 0.5;
//endfunction
//
//// Ecuacion 2
//function f=v(x,y)
//    f = y + 5*x*y - x^2;
//endfunction
//
//x0 = [1.2 1.2]';
//[x,f,ea,iter]=NewtonRaphson(u, v, x0, 0.0001, 50)
