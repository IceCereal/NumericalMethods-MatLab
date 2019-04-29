function[x] = RegularFalsi(f, x0, x1)
for i = 1:3
    x = (x0*f(x1) - x1*f(x0))/(f(x1) - f(x0));
    x1 = x;
    x0 = x1;
    display(x);
end