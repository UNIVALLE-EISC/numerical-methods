// Problema 2
function [x, ea, iter] = GaussSeidelR(A,b,lambda,es,maxit)
//GaussSeidel: Gauss Seidel method
//x = GaussSeidel(A,b): Gauss Seidel without relaxation
//input:
//A = coefficient matrix
//b = right hand side vector
//es = stop criterion (default = 0.00001%)
//maxit = max iterations (default = 50)
//output:
//x = solution vector

//mode(2)

if argn(2)<2,error('at least 2 input arguments required'),end
if argn(2)<5|isempty(maxit),maxit=50;end
if argn(2)<4|isempty(es),es=0.00001;end
if argn(2)<3|isempty(lambda),lambda=1;end

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
        xoldi = x(i);
        x(i) = d(i)-C(i,:)*x;
        x(i) = lambda*x(i) + (1-lambda)*xoldi;
        if x(i) ~= 0
            ea(i) = abs((x(i) - xold(i))/x(i)) * 100;
        end
    end
    iter = iter+1;
    if max(ea)<=es | iter >= maxit, break, end
end
endfunction

/////////////////////////////////////////////////////////

// A = [10 -2;-3 12]
// b = [8 9]';
// lambda = 1.2
// [x, ea, iter] = GaussSeidelR(A,b,lambda,0.0001,50)

/////////////////////////////////////////////////////////

// A = [0.8 -0.4 0; -0.4 0.8 -0.4; 0 -0.4 0.8]
// b = [41 25 105]'
// lambda = 1.2
// [x, ea, iter] = GaussSeidelR(A,b,lambda,0.0001,50)
