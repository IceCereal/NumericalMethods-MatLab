function [a,b] = bisection(f,a,b)
    for c = 1:1000 
        e=(a+b)/2;
        if f(e)>0
            b=e;
        else
            a=e;
        end
    end
end