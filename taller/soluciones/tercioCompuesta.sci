function I = tercioCompuesta(funcion,a,b,n)
x = a:(b-a)/n:b
fx0 = funcion(x(1))
fximp = sum(funcion(x(2:2:length(x)-1)))*4
fxpar = sum(funcion(x(3:5:length(x)-1)))*2
fxn = funcion(x(length(x)))
I = (b-a)/(3*n)*(fx0+fximp+fxpar+fxn)
endfunction
