function vector = operarVectores(a, b, opcion)
  select opcion,
      case 1 then 
          vector = a + b;
      case 2 then
          vector = a - b;
      case 3 then 
          vector = a. * b;
      else 
          vector = %nan;
  end
endfunction