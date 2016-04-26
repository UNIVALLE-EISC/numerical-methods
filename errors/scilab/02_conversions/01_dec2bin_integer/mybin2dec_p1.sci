function dec = mybin2dec_p1(binary)
    //mode(0)
    binary_array = strtod(strsplit(binary))'
    t = size(binary_array,2)-1:-1:0
    pows = 2.^t
    dec = sum(binary_array.*pows)
endfunction
