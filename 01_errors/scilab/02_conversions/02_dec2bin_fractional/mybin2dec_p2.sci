function dec = mybin2dec_p2(binary)
    //mode(0)
    binary_array = strtod(strsplit(binary))'
    t = -1:-1:-size(binary_array,2)
    pows = 2.^t
    dec = sum(binary_array.*pows)
endfunction 
