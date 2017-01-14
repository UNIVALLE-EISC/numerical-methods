// format(10)
//size(matrizA, 1)   numero de filas
//size(matrizA, 2) numero de columnas
function matrizR = multiplicarMatrices(matrizA, matrizB)
  if ((size(matrizA, 2)) ~= size(matrizB, 1)) then
      matrizR = %nan;
  else
      matrizR = matrizA*matrizB;
  end    
endfunction