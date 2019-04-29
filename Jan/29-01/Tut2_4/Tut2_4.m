a=[1;2];
for i = 1:1:2
    b= Newton(a);
    a = b;
end
a
4*a(1)^2 - a(2)^2