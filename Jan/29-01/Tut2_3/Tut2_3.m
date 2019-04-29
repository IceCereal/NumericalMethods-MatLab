g = @(x,y) 3*x^7 + 2*y^5 - x^3 + y^3 - 3;
g_der = @(y) 10*y^4 + 3*y^2;

y = 1:1:10;
count = 1;

for x = 0:0.1:0.9
    gg = @(y) g(x,y);
    y(count) = NewtonRhapson(gg, g_der, 10);
    fprintf('%d %d %d\n', x, y(count), g(x, y(count)));    
    count = count + 1;
end