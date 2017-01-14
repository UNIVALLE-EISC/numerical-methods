// Problema 2
//x = [10 20 30 40 50 60 70 80];
//y = [25 70 380 550 610 1220 830 1450];
//regresionLineal(x,y)
function [a, r2] = regresionLineal(x,y)
//linregr: linear regression curve fitting
//[a, r2] = linregr(x,y): Least squares fit of straight
//line to data by solving the normal equations
//input:
//x = independent variable
//y = dependent variable
//output:
//a = vector of slope, a(1), and intercept, a(2)
//r2 = coefficient of determination
n = length(x);
if length(y) ~= n then
    a = %nan;
    r2 = %nan;
else 
    x = x(:); y = y(:); // convert to column vectors
    sx = sum(x); sy = sum(y);
    sx2 = sum(x.*x); sxy = sum(x.*y); sy2 = sum(y.*y);
    a(1) = (n*sxy-sx*sy)/(n*sx2-sx^2);
    a(2) = sy/n-a(1)*sx/n;
    r2 = ((n*sxy-sx*sy)/sqrt(n*sx2-sx^2)/sqrt(n*sy2-sy^2))^2;
end
endfunction
