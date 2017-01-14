// Problema 5
function I = trapezoidalCompuesta(func,a,b,n)
//trap: composite trapezoidal rule quadrature
//I = trap(func,a,b,n,pl,p2,...):
//composite trapezoidal rule
//input:
//func = name of function to be integrated
//a, b = integration limits
//n = number of segments (default = 100)
//pl,p2,... = additional parameters used by func
//output:
//I = integral estimate
if ~(b>a) then 
    error('upper bound must be greater than lower')
end
x = a; h = (b - a)/n;
s=func(a);
for i = 1 : n-1
    x = x + h;
    s = s + 2*func(x);
end
s = s + func(b);
I = (b - a) * s/(2*n);
endfunction

function [q,ea,iter]= integracionRomberg(func,a,b,es,maxit)
//romberg: Romberg integration quadrature
//q = romberg(func,a,b,es,maxit,p1,p2,...):
//Romberg integration.
//input:
//func = name of function to be integrated
//a, b = integration limits
//es = desired relative error (default = 0.000001%)
//maxit = maximum allowable iterations (default = 30)
//pl,p2,... = additional parameters used by func
//output:
//q = integral estimate
//ea = approximate relative error (%)
//iter = number of iterations
n = 1;
I(1,1) = trapezoidalCompuesta(func,a,b,n);
iter = 0;
while iter<maxit
    iter = iter+1;
    n = 2^iter;
    I(iter+1,1) = trapezoidalCompuesta(func,a,b,n);
    for k = 2:iter+1
        j = 2+iter-k;
        I(j,k) = (4^(k-1)*I(j+1,k-1)-I(j,k-1))/(4^(k-1)-1);
    end
    ea = abs((I(1,iter+1)-I(2,iter))/I(1,iter+1))*100;
    if ea<=es, break; end
end
q = I(1,iter+1);
endfunction

/////////////////////////////////////////////////////////

//function f = ecuacion(x)
//f = 0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5;    
//endfunction

//integracionRomberg(ecuacion,0,0.8,0.000001,50)