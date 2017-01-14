//Problema 1
//y = round(rand(1,11)*10)
//[media, mediana, desv] = estadisticas(y)
function [promedio, mediana, desv] = obtenerEstadisticas(y)
    promedio = mean(y);
    mediana = median(y);
    desv = stdev(y);
endfunction