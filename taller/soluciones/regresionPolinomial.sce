// Problema 4
// Regresion polinomial (polinomio de orden n)
function [a, r2] = regresionPolinomial(x, y, n)
    // Z = [ones(size(x,1),1) x x.^2 x.^3 ...];   
    Z = [ones(size(x,1),1)]
    for i=1:n
        Z = [Z x.^i]; 
    end    
    a = (Z'*Z)\(Z'*y);
    Sr = sum((y-Z*a).^2);
    r2 = 1-Sr/sum((y-mean(y)).^2)
endfunction

/////////////////////////////////////////////////////////

// Problema parcial 2 2012B
//x = [0 1 2 3 4 5]';
//y = [2.1 7.7 13.6 25.1 40.9 61.1]';
//[a, r2] = regresionPolinomial(x, y, 2);

//x = [0 1 2 3 4 5]';
//y = [2.1 7.7 13.6 27.2 40.9 61.1]';
//[a, r2] = regresionPolinomial(x, y, 2);

//x = [0 1 2 3 4 5]';
//y = [2.1 7.7 13.6 27.2 40.9 61.1]';
//[a, r2] = regresionPolinomial(x, y, 3);

/////////////////////////////////////////////////////////

//x1 = [0 2 2.5 1 4 7]';
//x2 = [0 1 2 3 6 2]';
//x = [x1 x2];
//y = [5 10 9 0 3 27]';
//[a, r2] = regresionPolinomial(x, y, 2);