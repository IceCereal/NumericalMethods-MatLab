function val = NDD(array, x, y)
    lengthArr = length(array);
    if lengthArr == 2
        val = ( y(array(2)) - y(array(1)) ) / (x(array(2)) - x(array(1)));
    else
        arrayL = array(1:lengthArr-1)
        arrayR = array(2:lengthArr)
        val = (NDD(arrayL, x, y) - NDD(arrayR, x, y)) / (x(lengthArr) - x(1));
    end 
end