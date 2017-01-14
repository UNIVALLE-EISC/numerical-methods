// Problema 6
//T = [-40 0 20 50];
//d = [1.52 1.29 1.2 1.09];
//density = interpolacionLagrange(T,d,15)
function yint = interpolacionLagrange(x,y,xx)
//Lagrange: Lagrange interpolating polynomial
//yint = Lagrange(x,y,xx): Uses an (n - 1)-order
//Lagrange interpolating polynomial based on n data points
//to determine a value of the dependent variable (yint) at
//a given value of the independent variable, xx.
//input:
//x = independent variable
//y = dependent variable
//xx = value of independent variable at which the
//interpolation is calculated
//output:
//yint = interpolated value of dependent variable
n = length(x);
if length(y)~=n then
    yint = %nan;
    //error('x and y must be same length');
else
    s = 0;
    for i = 1:n
        product = y(i);
        for j = 1:n
            if i ~= j
                product = product*(xx-x(j))/(x(i)-x(j));
            end
        end
        s = s+product;
    end
    yint = s;
end
endfunction