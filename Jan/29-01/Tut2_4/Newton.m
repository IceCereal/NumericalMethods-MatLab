function s= Newton(a)
    syms x y
    j = [[diff(4*x^2 - y^2,x),diff(4*x^2 - y^2,y)];[diff(4*x*y^2 - x,x),diff(4*x*y^2 - x,y)]];
    jinv = inv(j);
    t = jinv*[4*x^2 - y^2 ;4*x*y^2 - x];
    k = [x;y] - t;
    x=a(1);
    y=a(2);
    s=subs(k);
end