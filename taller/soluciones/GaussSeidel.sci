// Problema 1
function [x, ea, iter] = GaussSeidel(A,b,es,maxit)
//GaussSeidel: Gauss Seidel method
//x = GaussSeidel(A,b): Gauss Seidel without relaxation
//input:
//A = coefficient matrix
//b = right hand side vector
//es = stop criterion (default = 0.00001%)
//maxit = max iterations (default = 50)
//output:
//x = solution vector

if argn(2)<2,error('at least 2 input arguments required'),end
if argn(2)<4|isempty(maxit),maxit=50;end
if argn(2)<3|isempty(es),es=0.00001;end

[m,n] = size(A);
if m~=n, error('Matrix A must be square'); end
C = A;
for i = 1:n
    C(i,i) = 0;
    x(i) = 0;
end

for i = 1:n
    C(i,1:n) = C(i,1:n)/A(i,i);
end
for i = 1:n
    d(i) = b(i)/A(i,i);
end
iter = 0;
while (1)
    xold = x;
    for i = 1:n
        x(i) = d(i)-C(i,:)*x;
        if x(i) ~= 0
            ea(i) = abs((x(i) - xold(i))/x(i)) * 100;
        end
    end
    iter = iter+1;
    if max(ea)<=es | iter >= maxit, break, end
end
endfunction

/////////////////////////////////////////////////////////

// A = [0.8 -0.4 0; -0.4 0.8 -0.4; 0 -0.4 0.8]
// b = [41 25 105]'
// GaussSeidel(A, b, 0.00001, 50)

/////////////////////////////////////////////////////////

// A = [3 -0.1 -0.2; 0.1 7  -0.3; 0.3 -0.2 10]
// b = [7.85 -19.3 71.4]'
// GaussSeidel(A, b, 0.00001, 50)
