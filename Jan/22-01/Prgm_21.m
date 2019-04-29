a = 1;
b = 1.5;
c = 0.3;

f = @(x) (a*cos(x) + sqrt(b^2 - (a*sin(x)-c^2)));
x = 0:0.1:360;
y = 0:0.1:360;

for i = 1:1:360
    y(i) = f(x(i));
end
plot(x,y);