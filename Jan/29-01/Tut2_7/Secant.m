function y = Secant(f, x0, x1)
for i=1:3
    x = x1 - f(x1)*((x1-x0)/f(x1)-f(x0));
    x0 = x1;
    x1 = x;
    display(x);
end
y = x;
end