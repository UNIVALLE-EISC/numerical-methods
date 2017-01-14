function I = trapezoidalCompuesta(funcion, a, b, n)
// Escriba su código fuente aquí
x = a:(b-a)/n:b
fx0 = funcion(x(1))
fxm = sum(funcion(x(2:length(x)-1))*2)
fxn = funcion(x(length(x)))
I = (b-a)/(2*n)*(fx0+fxm+fxn);
endfunction

// deff('[y]=mifuncion(x)','y=x^2')
//-->deff('[y]=mifuncion(x)','y=0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5')